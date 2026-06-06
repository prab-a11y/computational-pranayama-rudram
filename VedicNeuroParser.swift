import Foundation

struct AksaraUnit {
    let text, pitch, recoil, vowelLength, kineticIntensity: String
    let rowLoad, cumulativeLoad: Double
}

class VedicNeuroParser {
    private let conjunctsRegex = #"nna|ssar|ṅgi|ñja|mba"#
    private let shocksRegex = #"bha|dha|maḥ|vā̎m|ḥ"#
    private let vowelScalars: Set<UInt32> = [0x0061, 0x0101, 0x0069, 0x012b, 0x0075, 0x016b, 0x0065, 0x0113, 0x006f, 0x014d, 0x1e5b, 0x1e5d, 0x1e37, 0x1e39]
    private let explicitLongScalars: Set<UInt32> = [0x0101, 0x012b, 0x016b, 0x0113, 0x014d, 0x0304]
    
    func segmentText(_ input: String) -> [String] {
        var rawTokens: [String] = []
        let words = input.components(separatedBy: .whitespacesAndNewlines).filter { !$0.isEmpty }
        for word in words {
            if word == "॥" || word == "।" { rawTokens.append(word); continue }
            let chars = Array(word.replacingOccurrences(of: "ō-nnamō", with: "ō-nna-mō").decomposedStringWithCanonicalMapping)
            var i = 0, currentSyllable = "", hasVowel = false
            while i < chars.count {
                let char = chars[i]
                let scalarValue = char.unicodeScalars.first?.value ?? 0
                let isVowel = vowelScalars.contains(scalarValue)
                if hasVowel && isVowel {
                    if !currentSyllable.isEmpty { rawTokens.append(currentSyllable.precomposedStringWithCanonicalMapping) }
                    currentSyllable = ""; hasVowel = false
                }
                if char == "-" {
                    currentSyllable.append(char)
                    rawTokens.append(currentSyllable.precomposedStringWithCanonicalMapping)
                    currentSyllable = ""; hasVowel = false; i += 1; continue
                }
                currentSyllable.append(char)
                if isVowel { hasVowel = true }
                if hasVowel && (i + 1 < chars.count) {
                    let nextChar = chars[i + 1]
                    let nextScalar = nextChar.unicodeScalars.first?.value ?? 0
                    if !vowelScalars.contains(nextScalar) && nextChar != "-" && nextChar != "̍" && nextChar != "̠" && nextChar != "̎" && nextChar != "ḥ" && nextChar != "ṃ" {
                        if i + 2 < chars.count && vowelScalars.contains(chars[i + 2].unicodeScalars.first?.value ?? 0) {
                            rawTokens.append(currentSyllable.precomposedStringWithCanonicalMapping)
                            currentSyllable = ""; hasVowel = false
                        }
                    }
                }
                i += 1
            }
            if !currentSyllable.isEmpty { rawTokens.append(currentSyllable.precomposedStringWithCanonicalMapping) }
        }
        return rawTokens
    }
    
    func generateMetrics(for item: String, runningCumulativeLoad: inout Double) -> AksaraUnit {
        if item == "॥" || item == "।" {
            runningCumulativeLoad = 0.0
            return AksaraUnit(text: item, pitch: "⚫⚫⚫", recoil: "⚫⚫⚫", vowelLength: "⚫⚫⚫⚫⚫⚫", kineticIntensity: "⚫⚫⚫⚫⚫⚫⚫⚫⚫⚫", rowLoad: 0.0, cumulativeLoad: 0.0)
        }
        var pitchTrack = "⚪🟢⚪", pitchTax = 0.0
        if item.contains("̎") || item.unicodeScalars.contains(where: { $0.value == 0x030e }) {
            pitchTrack = "⚪⚪🔴"; pitchTax = 1.0
        } else if item.unicodeScalars.contains(where: { $0.value == 0x0320 || $0.value == 0x0331 || String($0) == "̠" }) {
            pitchTrack = "🟡⚪⚪"
        } else if item.unicodeScalars.contains(where: { $0.value == 0x030d || String($0) == "̍" }) {
            pitchTrack = "⚪⚪🔴"; pitchTax = 1.0
        }
        var vowelDurationCost = 1.0, lengthTrack = "🟢⚪⚪⚪⚪⚪"
        if item.contains("̎") || item.unicodeScalars.contains(where: { $0.value == 0x030e }) {
            vowelDurationCost = 6.0; lengthTrack = "🟢🟢🟢🟢🟢🟢"
        } else {
            var isLong = false
            for scalar in item.unicodeScalars {
                if explicitLongScalars.contains(scalar.value) { isLong = true; break }
            }
            if !isLong { if item.contains("ai") || item.contains("au") { isLong = true } }
            if isLong { vowelDurationCost = 2.0; lengthTrack = "🟢🟢⚪⚪⚪⚪" }
        }
        var recoilTrack = "🟢⚪⚪", recoilTax = 0.0, itemRange = NSRange(item.startIndex..<item.endIndex, in: item)
        var isShock = item.contains("̎") || item.unicodeScalars.contains(where: { $0.value == 0x030e })
        if !isShock, let regex = try? NSRegularExpression(pattern: shocksRegex, options: .caseInsensitive) {
            isShock = regex.numberOfMatches(in: item, options: [], range: itemRange) > 0
        }
        if isShock {
            recoilTrack = "🟢🟢🔴"; recoilTax = 2.0
        } else {
            var isConjunct = false
            if let regex = try? NSRegularExpression(pattern: conjunctsRegex, options: .caseInsensitive) {
                isConjunct = regex.numberOfMatches(in: item, options: [], range: itemRange) > 0
            }
            if isConjunct { recoilTrack = "🟢🟢⚪"; recoilTax = 1.0 }
        }
        let totalRowLoad = vowelDurationCost + pitchTax + recoilTax
        runningCumulativeLoad += totalRowLoad
        let greenCount = min(Int(totalRowLoad), 10)
        let kineticTrack = String(repeating: "🟢", count: greenCount) + String(repeating: "⚪", count: 10 - greenCount)
        return AksaraUnit(text: item, pitch: pitchTrack, recoil: recoilTrack, vowelLength: lengthTrack, kineticIntensity: kineticTrack, rowLoad: totalRowLoad, cumulativeLoad: runningCumulativeLoad)
    }
    
    func generateCSVString(input: String) -> String {
        let tokens = segmentText(input)
        var csvLines = ["Step,Akṣara,Pitch_Waveform,Recoil_Burst,Vowel_Length,Kinetic_Intensity,Row_Load,Cumulative_Load"]
        var cumulativeLoad = 0.0
        for (idx, token) in tokens.enumerated() {
            let u = generateMetrics(for: token, runningCumulativeLoad: &cumulativeLoad)
            csvLines.append("\(idx + 1),\(u.text),\(u.pitch),\(u.recoil),\(u.vowelLength),\(u.kineticIntensity),\(String(format: "%.1f", u.rowLoad)),\(String(format: "%.1f", u.cumulativeLoad))")
        }
        return csvLines.joined(separator: "\n")
    }
}

func executePipeline() {
    let args = CommandLine.arguments
    guard args.count >= 3 else { print("❌ Missing args: <input_txt_path> <output_csv_path>"); return }
    let inputURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent(args[1])
    let outputURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent(args[2])
    guard FileManager.default.fileExists(atPath: inputURL.path) else { print("❌ Input file not found"); return }
    do {
        let raw = try String(contentsOf: inputURL, encoding: .utf8).replacingOccurrences(of: "\u{200B}", with: "")
        let csv = VedicNeuroParser().generateCSVString(input: raw)
        try csv.write(to: outputURL, atomically: true, encoding: .utf8)
        print("✅ Pipeline execution successful! Matrix saved to: \(args[2])")
    } catch { print("❌ System Error: \(error.localizedDescription)") }
}

executePipeline()
