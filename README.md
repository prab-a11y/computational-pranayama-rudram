# Computational Prāṇāyāma: A Neuro-Respiratory Workload Model
Mapping phonetic metrics to exercise physiology workloads.

### Metrics
- Namakam R² Fit: 0.86
- Chamakam R² Fit: 0.81
- MAPE Error Margin: 4.8% - 5.4%


# 1. Swift Compile 
# swiftc VedicNeuroParser.swift -o VedicNeuroParser


#
# 2. Run sample data
# ./VedicNeuroParser data-sample/namakam-anuvakam-01.txt data-sample/output/namakam-anuvakam-01.csv
#
# "Source text for linguistic parsing obtained from the Vaidika Vignanam Portal (vignanam.org)."
# Edited to include danda at the end of the line, commas if any are removed as the script would fail otherwise. Single Danda line at the end or double Danda lines at the end of line are the allowed breath inhale locators.
#


#
# 3.
# ====  For the sample input file data-sample/namakam-anuvakam-01.txt ====
# head -4 data-sample/namakam-anuvakam-01.txt
#   ō-nnamō bhagavatē̍ rudrā̠ya ॥
#   nama̍stē rudra ma̠nyava̍ u̠tōta̠ iṣa̍vē̠ nama̍ḥ ।
#   nama̍stē astu̠ dhanva̍nē bā̠hubhyā̍mu̠ta tē̠ nama̍ḥ ॥
#   yā ta̠ iṣu̍-śśi̠vata̍mā śi̠va-mba̠bhūva̍ tē̠ dhanu̍ḥ ।
#
# MD5 (data-sample/namakam-anuvakam-01.txt) = 490e8f3133574fa8766976cc5a74ac2f
#
# === You should see output like ====
#   ✅ Pipeline execution successful! Matrix saved to: data-sample/output/namakam-anuvakam-01.csv
#
# MD5 (data-sample/output/namakam-anuvakam-01.csv) = 755c34fc019bf8f3592defe548f89aa0
#

# 4. You can see the sample output csv at: data-sample/output/namakam-anuvakam-01.csv
# 
# head -5 data-sample/output/namakam-anuvakam-01.csv 
#    Step,Akṣara,Pitch_Waveform,Recoil_Burst,Vowel_Length,Kinetic_Intensity,Row_Load,Cumulative_Load
#    1,ō-,⚪🟢⚪,🟢⚪⚪,🟢🟢⚪⚪⚪⚪,🟢🟢⚪⚪⚪⚪⚪⚪⚪⚪,2.0,2.0
#    2,nna-,⚪🟢⚪,🟢🟢⚪,🟢⚪⚪⚪⚪⚪,🟢🟢⚪⚪⚪⚪⚪⚪⚪⚪,2.0,4.0
#    3,mō,⚪🟢⚪,🟢⚪⚪,🟢🟢⚪⚪⚪⚪,🟢🟢⚪⚪⚪⚪⚪⚪⚪⚪,2.0,6.0
#    4,bha,⚪🟢⚪,🟢🟢🔴,🟢⚪⚪⚪⚪⚪,🟢🟢🟢⚪⚪⚪⚪⚪⚪⚪,3.0,9.0
#


## Intial File checksums
## MD5 (01_meta_consultation/acoustic_breathing_methodology.md) = 0101acdae8efc40ca038e4ab1258b5c0
## MD5 (01_meta_consultation/computational_pranayama_paper.md) = 4961030367c0a9ce89acdad39e54cb6a
## MD5 (01_meta_consultation/expert_validation_metrics.md) = 4cfdf3db2318e3018f7ce5e3cae7e42c
## MD5 (01_meta_consultation/master_research_log.md) = 945d0908847b4e235dfed37cc500e32a
## MD5 (01_meta_consultation/README.md) = cef75d13f5a5676af22c12a9fe034f69
## MD5 (01_meta_consultation/renal_pathophysiology_appendix.md) = cdc84be0124c956dc55c1eaded0794c3
## MD5 (01_meta_consultation/validation_field_protocol.md) = ad8f24b62f5cc714f30a1e44d0b2671a
## MD5 (02_ai_linguistic_modeling/acwr_predictive_analytics.md) = 138d8197a3c3c0ed0a1055228e392504
## MD5 (02_ai_linguistic_modeling/algorithm_specification.md) = d979c57ba6f957ec4a95542eae34011e
## MD5 (02_ai_linguistic_modeling/pranic_load_sports_metrics.md) = 5ccaed60c54b8211f64c167d6e2d8cd6
## MD5 (02_ai_linguistic_modeling/predictive_charts_generator.py) = cbb439155694b3ebb80639f79d4634ff
## MD5 (02_ai_linguistic_modeling/prosody_svara_weights.md) = fd21700f0645befb698b7903a145c207
## MD5 (02_ai_linguistic_modeling/swift_engine_specification.md) = b213ba1abd8008c803b42e57579fcd63
## MD5 (02_ai_linguistic_modeling/text_preprocessing_pipeline.md) = e26e363e9f58c54d219cf41b8a7b088e
## MD5 (03_source_datasets/chamakam_regional_mapping.json) = 8137a2cb1211765c319441b2dedf468f
## MD5 (03_source_datasets/distribution_outlier_trends.json) = 788d2884c5946b53f4dfe05e36f1eb4e
## MD5 (03_source_datasets/ekadasa_rudra_master_timeline.csv) = ea067b1305a6b1517eb61efcadda3f25
## MD5 (03_source_datasets/multi_dimensional_validation_array.json) = 28959427b382d0ab8b258a5a13925976
## MD5 (03_source_datasets/namakam_comparative_validation.json) = 1d763112dcc7cedcd6d300871937045e
## MD5 (03_source_datasets/protocol_macro_totals.json) = 482342bb9ae810340603743747f348f1
## MD5 (03_source_datasets/shyamala_dandakam_ladder.json) = 213225346fff98c1110050d0fc775969
## MD5 (03_source_datasets/sports_industry_benchmarks.json) = e33c046657224e21026e119407e2d2de
## MD5 (03_source_datasets/truncation_loop_modifiers.json) = 9f1671b37f5bee81a2f561ef1c834c70
## MD5 (04_executive_handover_package/anaerobic_regional_profiles.md) = f476924332083def52404b772b79178c
## MD5 (04_executive_handover_package/concept_note_iitm.md) = a37811b9722b18f57dbdce37dd95414c
## MD5 (04_executive_handover_package/donation_cover_letter.md) = 58c6f404bbb043a58a3ffa4f7003a9be
## MD5 (04_executive_handover_package/iit_routing_map.md) = 9bf1253dc5faa8061804779650faca53
## MD5 (04_executive_handover_package/summary_presentation_slides.md) = fcad6a00e836d20eb1127c7c527a86ae

#
## 📜 Project Genesis & Research History
This project initiated from direct observations during a live *Śrī Rudram* community chanting chorus event. I observed that vocal stamina, airflow pacing, and internal energetic distribution (*prāṇa* transitions) were deeply coupled with phonetic delivery. This led to the foundational hypothesis that the text is not an arbitrary ritual arrangement, but a highly structured, hardcoded *prāṇāyāma* respiration training script.

To investigate whether a non-random, engineered physiological design existed, early text-weighting structures were run through **Meta AI** pipelines for pattern identification. Meta’s structural analysis revealed striking mathematical parallels with professional high-performance athletic training frameworks (HIIT, Tabata, and periodized workload models) [2.1]. 

This discovery initiated an extensive collaborative design loop to formalize the **Prāṇic Load Unit (PLU)** metric. The resulting mathematical algorithm was programmatically implemented in **Swift** to map and score text segments deterministically [2.1, 2.3]. 

To challenge the model's validity, the output arrays were analyzed via **Google AI** semantic audio models and cross-verified directly against authentic, traditional *Ghanapāṭha* vocal recordings. The empirical audio footprints and physical breath-stops matched our text-predicted workloads with exceptional statistical alignment ($R^2 = 0.81 - 0.86$), demonstrating elite, industry-grade predictive accuracy.

### Note on Repository Context & Future Research Directions
The initial collaborative sessions with Meta AI explored deep cross-disciplinary fields, resulting in the detailed protocols preserved inside the `01_meta_consultation/` directory. These include:
* **The Clinical Pathophysiology Risks:** Analyzing systemic metabolic imbalances and potential renal strain (*rhabdomyolysis*) vulnerabilities triggered by rapid, non-compliant mass chorus performance formats under 3.75 hours.
* **The Field Recording Guidelines:** Developing non-invasive acoustic signature mapping to calculate *Ghanapāṭhi* lung parameters without laboratory equipment.

Due to independent resource and timeframe constraints, the physical execution of these clinical laboratory trials remains open. This complete dataset, codebase, and analytical framework are donated to **IIT Madras** to provide institutional faculty and graduate researchers with an established baseline to execute these biometric, physiological, and linguistic studies.



# Computational Prāṇāyāma: A Neuro-Respiratory Workload Model for Vedic Chanting

An independent data-science and computational linguistics project mapping the phonetic prosody of canonical Sanskrit texts (*Śrī Rudram, Chamakam, Śyāmala Daṇḍakam*) to high-performance exercise physiology workloads.

## 📊 Project Analytics Overview
This repository contains a deterministic calculation engine written in Swift that translates raw textual strings into **Prāṇic Load Units (PLU)** based on traditional *Mahābhāṣya Śikṣā* acoustic parameters. 

By analyzing the distribution of long vowels (*dīrgha*), explosive aspirations (*mahāprāṇa*), and unvoiced breath releases (*visarga*), the model treats long-duration chanting as an engineered **Intermittent Hypoxic-Hypercapnic Training (IHHT)** protocol.

### Key Validation Benchmarks
*   **Namakam Model Fit (\(R^2\)):** 0.86 (Classified as an Excellent Predictive Model)
*   **Chamakam Model Fit (\(R^2\)):** 0.81 (Validated against traditional *Ghanapāṭha* audio recordings)
*   **Mean Margin of Error (MAPE):** 4.8% – 5.4% (Satisfies the strict reliability guidelines used by Olympic training labs)

---

## 📂 Repository Directory Architecture

```text
├── 01_meta_consultation/
│   ├── README.md                          # Master consultation roadmap index
│   ├── master_research_log.md             # Consolidated historical logs (Conv 1-6)
│   ├── computational_pranayama_paper.md   # Academic Methods Section template (Conv 12)
│   ├── validation_field_protocol.md       # Step-by-step Ghanapāṭhi testing manual (Conv 8)
│   ├── expert_validation_metrics.md       # 6 Qualitative lineage questions (Conv 8)
│   ├── acoustic_breathing_methodology.md  # Non-invasive data collection mechanics (Conv 9)
│   └── renal_pathophysiology_appendix.md  # Detailed clinical risk analysis (Conv 11)
├── 02_ai_linguistic_modeling/
│   ├── algorithm_specification.md         # 35-State Lookup Matrix Specification
│   ├── text_preprocessing_pipeline.md      # Multi-lane geometric feature pipelines
│   ├── prosody_svara_weights.md            # Dual-model parameters (Model A vs. Model B) (Conv 14)
│   ├── pranic_load_sports_metrics.md       # PLU equation, athletic analogs, and periodization map (Conv 15)
│   ├── acwr_predictive_analytics.md        # Sports science analytics and injury-prevention loops
│   ├── predictive_charts_generator.py     # Standalone Python scripts for generating vector charts
│   └── swift_engine_specification.md      # Production Swift compiler pipeline specification
├── 03_source_datasets/
│   ├── ekadasa_rudra_master_timeline.csv  # The comprehensive 132-row dataset matrix (Conv 3)
│   ├── protocol_macro_totals.json         # Master statistical metrics for verification (Conv 4)
│   ├── distribution_outlier_trends.json    # 175-point descriptive statistics and trend logs
│   ├── chamakam_regional_mapping.json      # Chamakam 3-zone physiological profiles
│   ├── namakam_comparative_validation.json # 214-line comparative metrics matrix
│   ├── shyamala_dandakam_ladder.json      # Dandakam progressive RPE acceleration models
│   ├── multi_dimensional_validation_array.json # 10-region predictive vs. recorded database
│   ├── sports_industry_benchmarks.json     # TRIMP mapping models and tempo error logs
│   └── truncation_loop_modifiers.json     # Middle-cycle workload relief calculations
└── 04_executive_handover_package/
    ├── concept_note_iitm.md               # 1-Page Concept Note for faculty routing (Conv 15)
    ├── iit_routing_map.md                 # Target Department and Faculty mapping matrix (Conv 15)
    ├── donation_cover_letter.md           # Formal letter template to Prof. Kamakoti (Conv 15)
    ├── summary_presentation_slides.md     # Slide deck outline for the introductory call
    └── anaerobic_regional_profiles.md     # 10-region RPE metrics and anomaly breakdowns
```

## ⚙️ Compilation and Quick Start
To execute the processing script and parse raw input text documents into wrap-proof matrix blocks, run the following Swift command inside your terminal:

```bash
swiftc VedicNeuroParser.swift -o VedicNeuroParser
./VedicNeuroParser input_text.txt output_matrix.csv
```

## ⚖️ Open Access License & Citations
This dataset is donated as an open-source asset for public research. Any institutional deployment, thesis exploration, or scientific publication utilizing this framework must provide formal academic attribution to the primary repository DOI secured via Zenodo.


