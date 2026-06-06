# Dual-Model Architecture: Prosody and Svara Tracking Parameters

This framework outlines how Vedic pitch accents and vowel lengths are processed across two distinct algorithmic models within the calculation engine.

## 1. Algorithmic Processing Models
*   **Model A (Conservative Baseline):** Uses standard alphabetical *akṣara* weights without accounting for localized tonal shifts. *Anuvāka 8 Total Load:* 454 units (Normalized Load per Breath: 41.3 units).
*   **Model B (Śikṣā-Accurate Variant):** Includes *dīrgha* (long vowel) densities and *pluta* (3-mātrā) elongations based on the rules of the *Taittirīya Prātiśākhya*. Long vowels (`ā, ī, ū, e, o, ai, au`) make up **7.5%** of the text in Anuvāka 8, creating a highly dense vowel structure. *Anuvāka 8 Total Load:* ~524 units (+15.4% absolute increase; Normalized Load per Breath: 47.6 units).

## 2. Structural Robustness
While Model B increases the absolute workload across the entire protocol, the underlying relative curve shape remains completely unchanged. *Anuvāka 8* remains the primary breath-restricted bottleneck, confirming that the overall periodization thesis holds true across different pronunciation styles.
