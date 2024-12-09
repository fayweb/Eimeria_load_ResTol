# Eimeria_load_ResTol
Comparative analysis of resistance and tolerance in Eimeria ferrisi and Eimeria falciformis infections using DNA-based parasite quantification and oocyst counts. This repository includes data processing, statistical analysis, and visualization scripts to explore host-parasite interactions and their health impacts.


Overview
This repository focuses on the comparative analysis of resistance and tolerance in Eimeria ferrisi and Eimeria falciformis infections. Leveraging advanced DNA-based parasite quantification and traditional oocyst counts, the project explores:

Infection dynamics across two related Eimeria species.
Predictive power of parasite load measures for host health outcomes (e.g., weight loss).
Resistance-tolerance trade-offs in controlled experimental setups.
Objectives
To investigate species-specific differences in resistance and tolerance coupling.
To compare traditional oocyst counts and DNA-based quantification methods in their predictive power for host health metrics.
To explore temporal dynamics of parasite load and health impacts.

Repository Structure
This repository is organized for reproducible research, with clear separation of raw data, processed data, scripts, and outputs.
Eimeria_load_ResTol/
├── README.md                    # Repository overview
├── Data/                        # All data files
│   ├── Raw/                     # Unprocessed data for Quant1 (E. ferrisi) and Quant2 (E. falciformis)
│   ├── Processed/               # Cleaned and merged datasets
├── Documentation/               # Detailed project documentation
│   ├── Data_Documentation.md    # Information about data sources and cleaning processes
│   ├── Analysis_Documentation.md# Explanation of analysis steps and models
├── Code/                        # R scripts for data processing, analysis, and visualization
│   ├── Cleaning/                # Data preparation and cleaning scripts
│   ├── Analysis/                # Hypothesis testing and statistical models
│   ├── Visualization/           # Scripts to generate figures and plots
├── Outputs/                     # Generated results and figures
│   ├── Results_Tables/          # Statistical outputs and summary tables
│   ├── Final_Figures/           # Publication-ready visualizations
├── Manuscript/                  # Draft sections of the research paper
│   ├── Introduction.md          # Introduction draft
│   ├── Methods.md               # Methods draft
│   ├── Results.md               # Results draft
│   ├── Discussion.md            # Discussion draft
│   ├── References.bib           # Bibliography in BibTeX format
├── Tools/                       # Additional tools or resources for the project
└── LICENSE                      # License information

How to Use
1. Clone the repository:
git clone https://github.com/yourusername/Eimeria_load_ResTol.git

2. Run the master script: Navigate to the Code/ directory and run the Master_Script.R to reproduce the entire analysis pipeline:
R
source("Code/Master_Script.R")



