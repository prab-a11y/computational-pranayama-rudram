# Sanskrit Text Preprocessing and Multi-Lane Feature Pipeline

This document defines the underlying multi-bit phonetic architecture used to process canonical Sanskrit text inputs and convert them into stable, horizontal, real-time visualization tracks without row stretching.

## 1. The 35-Bit Liturgical Spectrum
The preprocessing engine tracks 35 distinct phonetic, structural, and respiratory events, categorized into six primary structural blocks:

1.  **Acoustic Duration Bounds (3 Beats):** *Hrasva* (Short, 1 mātrā), *Dīrgha* (Long, 2 mātrās), and *Pluta* (Elongated, 3+ mātrās).
2.  **Vocal Cord Accent Vectors (4 Tones):** *Anudātta* (Low pitch), *Udātta* (Middle pitch), *Svarita* (High pitch), and *Dīrgha Svarita* (Extended high pitch).
3.  **Laryngeal Exhaust Forces (2 Breathing Profile Modifiers):** *Alpaprāṇa* (Unaspirated, low airflow resistance) and *Mahāprāṇa* (Aspirated, high physical lung exhaust).
4.  **Advanced Glottal Modifiers (4 Markings):** *Kampa* (Pitch modulation/vibrato), *Sannatara* (Deep low pitch preceding an accent), *Pracaya* (Neutral mid-tone alignment), and *Anunāsika* (Nasalized vocalic glide).
5.  **Respiratory Systemic Traffic Checkpoints (2 Boundaries):** Single *Daṇḍa* (`।`, phrase boundary pause) and Double *Daṇḍa* (`॥`, macro-cycle boundary reset).
6.  **Acoustic Boundary Adjustments (3 Sandhi Transitions):** *Avagraha* (Elision/dropped vowel marker), *Svara-Bhakti* (Vocalic separation layers between conjuncts), and *Visarga Transformations* (Forced unvoiced breath release mechanics).

## 2. Multi-Lane Geometric Mapping Architecture

To capture structural changes across text blocks, the model translates these markers into four functional diagnostic tracking lanes:

```text
            [na]      [maḥ]     [śi]      [vā]      [ya]      [ ॥ ]
BREATH   │  ████  │  ██████ │  ██████ │  ██████ │  ██████ │  (Reset)  ──> Lung Volume Fade
RECOIL   │  ░░░░  │  ██████ │  ░░░░  │  ░░░░  │  ░░░░  │  ░░░░░    ──> Abdominal Exhaust Pulse
PITCH    │  🔵🔵  │  🟢🟢🟢 │  🟢🟢🟢 │  🔴🔴🔴 │  🔵🔵  │  ░░░░░    ──> Throat Vector Nodes
NASAL    │  ░░░░  │  ░░░░   │  ░░░░   │  ░░░░   │  ░░░░   │  ░░░░░    ──> Glottal Path Switch
```

### Lane 1: The Breath Pace Lane (Gradient Fade Logic)
*   **Data Profile:** Continuous Integer (1 to 20+ steps per line block).
*   **Mapping Mechanics:** Measures the index sequence length of an *akṣara* within its current phrase bounds. It creates a gradient display that transitions from dark values to pale highlights, simulating lung deflation. Encountering a *daṇḍa* resets the tracker.

### Lane 2: The Recoil Force Lane (High-Contrast Structural Pulse)
*   **Data Profile:** Binary state flag ($0 = \text{Rest Baseline}$, $1 = \text{Active Shock Load}$).
*   **Mapping Mechanics:** Stays at a flat baseline by default ($0$). It flips to an active state ($1$) when hitting heavy friction markers, aspirated consonants (*mahāprāṇa*), shaking throat accents (*kampa*), or full lung clearances (*visarga*), tracking sudden physical workloads on the torso.

### Lane 3: The Pitch Vector Lane (Diverging Color Scale)
*   **Data Profile:** Categorical scale mapping vertical movement: $-2$ (Deep Low), $-1$ (Low Accent), $0$ (Neutral Mid), $1$ (High Accent), $2$ (Extended Pitch Glide).
*   **Mapping Mechanics:** Maps changes in vocal fold tension and laryngeal movement. Low notes (*anudātta*) translate to low values, neutral notes (*udātta*/*pracaya*) map to center points, and high-intensity tones (*svarita*) map to peak indicators.

### Lane 4: The Resonance Lane (Glottal Path Switch)
*   **Data Profile:** Binary flag ($0 = \text{Oral Path Only}$, $1 = \text{Nasalized Airflow Path}$).
*   **Mapping Mechanics:** Tracks air redistribution into the sinus cavity. It turns on ($1$) when encountering *anunāsika* markings or heavy nasal vowel blends.
