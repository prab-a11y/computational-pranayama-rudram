# Algorithmic Specification: 35-Variation Neuro-Respiratory State Index

This document serves as the master database reference manual for the calculation engine. It maps 35 traditional Vedic phonetic and prosodic variations directly into discrete neural and physical tracking parameters optimized for layout stability.

## 1. Neuro-Respiratory Circuit Mapping
The system maps individual text segments to four specific neural and muscular systems:
*   **Breath Battery (Phrenic Nerve & Diaphragm):** Tracks continuous changes in lung volume. It uses punctuation boundaries, *daṇḍas*, and word endings to manage a 10-slot progress bar showing remaining lung pressure.
*   **Pitch Waveform (Recurrent Laryngeal Nerve):** Tracks vocal tract tension. It maps the 4 Vedic tones (*udātta, anudātta, svarita, dīrgha svarita*) and flat lines (*pracaya*) into 3 vertical pitch states.
*   **Recoil Burst (Intercostal & Abdominal Muscles):** Tracks physical respiration force. It maps un-aspirated flow, heavy aspiration (*mahāprāṇa*), throat modulations (*kampa*), and tongue-root friction (*jihvāmūlīya*) into resting versus active muscle pulses.
*   **Vowel Length (Auditory Processing Core & Timing):** Tracks rhythmic duration. It maps all variations of *hrasva, dīrgha*, and *pluta* into horizontal blocks.

---

## 2. The 35-State Master Algorithmic Index Matrix

### Block 1: Simple Pitch & Length Baselines (Un-clustered Vowels)


| Var | Liturgical Condition Profile | Pitch_Waveform | Recoil_Burst | Vowel_Length | Row_Load |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **01** | Hrasva Udātta (Short, Unmarked) | `⚪🟢⚪` | `🟢⚪⚪` | `🟢⚪⚪⚪⚪⚪` | **1** |
| **02** | Dīrgha Udātta (Long, Unmarked) | `⚪🟢⚪` | `🟢⚪⚪` | `🟢🟢⚪⚪⚪⚪` | **2** |
| **03** | Hrasva Anudātta (Short, Low Accent `̠`) | `🟢⚪⚪` | `🟢⚪⚪` | `🟢⚪⚪⚪⚪⚪` | **1** |
| **04** | Dīrgha Anudātta (Long, Low Accent `̠`) | `🟢⚪⚪` | `🟢⚪⚪` | `🟢🟢⚪⚪⚪⚪` | **2** |
| **05** | Hrasva Svarita (Short, High Accent `̍`) | `⚪⚪🔴` | `🟢⚪⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **06** | Dīrgha Svarita (Long, High Accent `̍`) | `⚪⚪🔴` | `🟢⚪⚪` | `🟢🟢⚪⚪⚪⚪` | **3** |

### Block 2: Visarga Exhalations & Structural Pauses


| Var | Liturgical Condition Profile | Pitch_Waveform | Recoil_Burst | Vowel_Length | Row_Load |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **07** | Hrasva Udātta Visarga (`ḥ`) | `⚪🟢⚪` | `🟢🟢🔴` | `🟢⚪⚪⚪⚪⚪` | **3** |
| **08** | Hrasva Anudātta Visarga (`̠ḥ`) | `🟢⚪⚪` | `🟢🟢🔴` | `🟢⚪⚪⚪⚪⚪` | **3** |
| **09** | Dīrgha Anudātta Visarga (`̠ḥ`) | `🟢⚪⚪` | `🟢🟢🔴` | `🟢🟢⚪⚪⚪⚪` | **4** |
| **10** | Hrasva Svarita Visarga (`̍ḥ`) | `⚪⚪🔴` | `🟢🟢🔴` | `🟢⚪⚪⚪⚪⚪` | **4** |
| **11** | Terminal Single Phrase Pause (`।`) | `⚫⚫⚫` | `⚫⚫⚫` | `⚫⚫⚫⚫⚫⚫` | **0** |
| **12** | Terminal Double Macro Pause (`॥`) | `⚫⚫⚫` | `⚫⚫⚫` | `⚫⚫⚫⚫⚫⚫` | **0** |

### Block 3: Conjunct Clusters & Structural Bracing


| Var | Liturgical Condition Profile | Pitch_Waveform | Recoil_Burst | Vowel_Length | Row_Load |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **13** | Unmarked Conjunct Pre-Weight (`nna-, ssar-`) | `⚪🟢⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **14** | Anudātta Conjunct Bracing (`sta̠-, ru̠-`) | `🟢⚪⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **15** | Svarita Conjunct Shock (`chChā̍`) | `⚪⚪🔴` | `🟢🟢🔴` | `🟢🟢⚪⚪⚪⚪` | **5** |
| **16** | Doubled Ch Torque Modifier (`chCh`) | `⚪🟢⚪` | `🟢🟢🔴` | `🟢⚪⚪⚪⚪⚪` | **3** |
| **17** | Sch Consonant Merge (`ścha̠`) | `🟢⚪⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **18** | Ths Consonant Merge (`thsar-`) | `⚪🟢⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |

### Block 4: Nasals & Phonetic Transitions


| Var | Liturgical Condition Profile | Pitch_Waveform | Recoil_Burst | Vowel_Length | Row_Load |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **19** | Standard Anusvāra (`gṃ`) | `⚪🟢⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **20** | Combined Anusvāra-Visarga (`hig̍m-`) | `⚪⚪🔴` | `🟢🟢🔴` | `🟢⚪⚪⚪⚪⚪` | **4** |
| **21** | G-Clipped Nasal Transition (`-ṅgi-`) | `⚪🟢⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **22** | J-Clipped Nasal Transition (`-ñja-`) | `⚪🟢⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **23** | M-Clipped Nasal Transition (`mba̠-`) | `🟢⚪⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **24** | Pre-Vocalic Avagraha Sync (`-'pā̍-`) | `⚪⚪🔴` | `🟢🟢⚪` | `🟢🟢⚪⚪⚪⚪` | **4** |

### Block 5: Advanced Scriptural Extensions & Pitch Jumps


| Var | Liturgical Condition Profile | Pitch_Waveform | Recoil_Burst | Vowel_Length | Row_Load |
| :--- | :--- | :---: | :---: | :---: | :---: |
| **25** | Pracaya (Echoed Unmarked Mid-Tone) | `⚪🟢⚪` | `🟢⚪⚪` | `🟢⚪⚪⚪⚪⚪` | **1** |
| **26** | Jātya Svarita (Inherent High Pitch) | `⚪⚪🔴` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **3** |
| **27** | Kampa 3-Beat Shake (3-Mātrā Modulation) | `⚪⚪🔴` | `🟢🟢🔴` | `🟢🟢🟢⚪⚪⚪` | **6** |
| **28** | Kampa Extended 4-Beat Shake | `⚪⚪🔴` | `🟢🟢🔴` | `🟢🟢🟢🟢⚪⚪` | **7** |
| **29** | Max 6-Beat Kampa (`sarvā̎m-, vā̎ś-`) | `⚪⚪🔴` | `🟢🟢🔴` | `🟢🟢🟢🟢🟢🟢` | **9** |
| **30** | Dīrgha Svarita Kampa Combined | `⚪⚪🔴` | `🟢🟢🔴` | `🟢🟢🟢⚪⚪⚪` | **6** |
| **31** | Mahāprāṇa Core Shock (Aspirated: `dha, bha`) | `⚪🟢⚪` | `🟢🟢🔴` | `🟢⚪⚪⚪⚪⚪` | **3** |
| **32** | Double Nasalized Elongation | `⚪🟢⚪` | `🟢🟢🔴` | `🟢🟢⚪⚪⚪⚪` | **4** |
| **33** | Svarita-to-Anudātta Step Drop | `🟢⚪⚪` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **2** |
| **34** | Anudātta-to-Svarita Leap | `⚪⚪🔴` | `🟢🟢⚪` | `🟢⚪⚪⚪⚪⚪` | **3** |
| **35** | Full Breath Throttle Decay (Syllable Runout) | `⚪🟢⚪` | `🟢⚪⚪` | `🟢⚪⚪⚪⚪⚪` | **1** |
