# Software Core Specifications: Swift Engine Architecture & Tokenizer Loops

This document provides the native software developer manual for the `VedicNeuroParser` compilation codebase, detailing how strings are tokenized, processed, and validated.

## 1. The Character Scalar Tracking Engine
To process traditional accents seamlessly without layout errors, the Swift binary breaks input strings down into raw decomposed Unicode scalars (`decomposedStringWithCanonicalMapping`). 

The tokenizer reads arrays using a single-pass loop, evaluating indices against hash-based lookup sets (`Set<UInt32>`). Vowels, diphthongs (`ai`, `au`), and trailing macron characters (`0x0304`) are scanned to determine duration metrics, while vertical and horizontal modifiers (`0x030d`, `0x0320`) adjust pitch parameters.

## 2. Programmatic Execution Flow
1.  **Syllable Isolation Block:** Slices words into clean *akṣara* substrings by identifying vowel transitions and binding consonant conjunct clusters.
2.  **Regex Workload Matching:** Feeds isolated tokens into optimized Regular Expression filters to flag structural friction pre-weights (`conjunctsRegex`) and core muscle shock points (`shocksRegex`).
3.  **The Daṇḍa Flush Routine:** Intercepts punctuation markers (`॥` or `।`) to automatically trigger a zero-out command across all row fields, clearing the running cumulative buffer.
