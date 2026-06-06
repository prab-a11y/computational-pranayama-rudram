# PRESENTATION DECK: Computational Prāṇāyāma
## A Phoneme-Load Model for the Śrī Rudram Respiratory Protocol

### Slide 1: Core Thesis & Interdisciplinary Scope
*   **Visual Title:** Computational Prāṇāyāma: Evidence of Intentional Respiratory Architecture in the Śrī Rudram
*   **Subtitle:** Mapping Phonetic Prosody to High-Performance Exercise Physiology
*   **The Pitch:** Moving beyond viewing the text purely as literature or ritual, this project treats the 11-cycle Ekādaśa Rudra format as an ancient, engineered Intermittent Hypoxic-Hypercapnic Training (IHHT) protocol. 

### Slide 2: The Core Algorithmic Framework
*   **Visual Title:** The Phoneme Prāṇa-Load Model
*   **Key Equations & Weights:**
    *   Base Durations: Hrasva = 1, Dīrgha = 2, Pluta = 3 mātrā units.
    *   Phonetic Modifiers: Alpaprāṇa = 1.0x, Mahāprāṇa = 3.0x, Visarga = 3.0x, Anusvāra = 2.0x, Saṁyukta = +0.5x.
    *   Systemic Equation: $\text{PLU} = \text{Breath Duration (s)} \times \text{Vocal Intensity (\% MVE)} \times \text{Compound Density (CPS)} \times \text{Reps}$
*   **Talking Points:** Explaining how the model tracks the physiological stress (Prāṇic Load Units) of any given passage directly from Sanskrit syntax, bounded strictly by lineage-mandated breath markers (daṇḍas).

### Slide 3: Macro-Periodization Profile
*   **Visual Title:** The 132-Segment Training Blueprint
*   **Key Data Metrics:**
    *   Total Protocol Duration: 25,557 seconds (~7 hours, 6 minutes).
    *   Total Voluntary Inhalations: 1,969 individual breath cycles.
    *   Neural Stressors: 682 explosive mahāprāṇa events and 242 full visarga exhalations.
    *   Autonomic Bias: A highly controlled 1:2.1 Average Inhale-to-Exhale (I:E) Ratio.
*   **Talking Points:** Highlighting how the structural arrangement of the 11 Anuvākas mimics modern athletic periodization models, leading the chanter through warm-up, active recovery, high-intensity anaerobic peaks, and a parasympathetic recovery phase.

### Slide 4: Explaining the "Aha!" Discovery (Figure 1A vs. 1B)
*   **Visual Title:** Normalization Reveals High-Intensity Chokepoints
*   **Visual Concept:** Side-by-side comparison. Graph A shows Anuvāka 8 with the lowest total syllable volume (454 units). Graph B shows that when normalized by the mandatory 11-breath rule, Anuvāka 8 maintains a dense workload of 41.3 PLU per breath.
*   **Talking Points:** Demonstrating that Anuvāka 8 is an intentional, high-intensity breath-restriction interval. Rushing this section in a chorus setup blocks the breath architecture and triggers hyperventilation risks.

### Slide 5: Empirical AI Validation & Research Integrity
*   **Visual Title:** Verification via Cross-Model Audio Pipelines
*   **Key Methodologies:**
    *   Zero-shot audio feature parsing using Google AI pipelines.
    *   Empirical tracking against traditional, master-level Ghanapāṭhi audio archives.
*   **The Result:** The model's mathematical load predictions align directly with real-world oral renderings ($R^2 = 0.81 - 0.86$). This proves that a highly structured, non-random respiratory pattern has been preserved for centuries through oral transmission.

### Slide 6: Public Safety and Clinical Risk Management
*   **Visual Title:** Pathophysiology of Accelerated Modern Performance
*   **Key Warnings:**
    *   Modern compressed group chanting (<3.75 hours) forces rapid pacing.
    *   Triggers acute hypocapnia ($ETCO_2 <30\text{ mmHg}$) and respiratory alkalosis ($pH >7.50$).
    *   Can lead to severe electrolyte drops and potential renal stress (exertional rhabdomyolysis risks).
*   **Talking Points:** Showing how this research establishes evidence-based guidelines to distinguish traditional *Rudra Prāṇāyāma* (controlled, >4 hours, $\le3$ chanters) from devotional group singing (*Rudra Kīrtan*).

### Slide 7: The Institutional Handover
*   **Visual Title:** Future Research Map & Open Data Donation
*   **Proposed Roadmap for IIT Madras:**
    1.  *Field Trials:* Use laboratory microphones and chest tracking belts to verify syllable duration ratios and physical breathing patterns.
    2.  *Clinical Studies:* Track real-time biometrics ($ETCO_2$, blood pH, HRV, and muscle enzymes) during controlled chanting.
    3.  *Software Tooling:* Package the Swift codebase into an open-source mobile application to help traditional schools track safe pacing metrics.
*   **Conclusion:** The complete codebase and dataset have been secured with an open-access, permanent Zenodo/GitHub DOI. It is being donated to IIT Madras to serve as a foundation for future student theses and institutional research.
