# ClimateModelEA

**Computational Modeling and Environmental Data Analysis for Climate Change Assessment in East Africa**

**Author:** Aime Serge UKOBIZABA
**Affiliation:** Student Researcher, Holy Spirit Ministries / Independent Scholar, Rwanda  
**Repository:** https://github.com/Aime-Serge/ClimateModelEA_Skeleton

---

## Overview

ClimateModelEA contains code, data processing scripts, notebooks, and trained models used to analyze historical environmental datasets (2000–2024) and build computational models for climate trend assessment in East Africa. The repository is structured to support reproducible research and easy replication of figures and results presented in the accompanying research paper.

## Features

- Data ingestion and cleaning pipelines for temperature, rainfall, and emissions data
- Exploratory data analysis (EDA) notebooks with visualizations
- Time-series modeling (ARIMA) for temperature and rainfall forecasting
- Machine learning models (Random Forest) for emissions modeling
- Scripts to reproduce figures and summary statistics used in the paper
- Dockerfile and environment specifications for reproducibility (optional)

---

## Repository structure

```
ClimateModelEA/
├─ data/                   # cleaned CSVs and metadata (DO NOT store sensitive/large raw files here)
├─ notebooks/              # Jupyter notebooks for EDA and modeling
├─ src/
|     ├─ models/          # Python modules and scripts            # trained model artifacts (pickles)
├─ docs/                   # supplementary figures and the project report (PDF)
├─ requirements.txt        # Python package requirements
├─ README.md               # This file
├─ LICENSE                 # License (MIT)
├─ CITATION.cff            # Citation metadata
├─ .gitignore
└─ run_analysis.sh         # Example run script to reproduce main results
```

---

## Quickstart (local)

1. **Clone the repository**  
```bash
git clone https://github.com/Aime-Serge/ClimateModelEA_Skeleton.git
cd ClimateModelEA
```

2. **Create a virtual environment** (recommended)  
```bash
python -m venv venv
source venv/bin/activate      # macOS / Linux
# venv\Scripts\activate     # Windows (PowerShell or cmd)
```

3. **Install dependencies**  
```bash
pip install -r requirements.txt
```

4. **Run the EDA notebook or scripts**  
- Launch Jupyter: `jupyter notebook notebooks/EDA.ipynb`  
- Or run the main analysis script: `bash run_analysis.sh`

---

## Data

- `data/` contains processed CSV files used in analysis. Raw data sources should **not** be committed to the repository if large; instead include scripts in `src/data_ingest/` to download and preprocess raw sources (e.g., NASA, World Bank, UNFCCC). See `notebooks/README.md` for details on how to obtain and prepare raw data.

---

## Reproducing Figures and Results

- Notebooks under `notebooks/` contain step-by-step EDA and modeling procedures.  
- To reproduce figures exactly as in the paper:
  1. Ensure `data/` contains the cleaned CSVs: `temperature.csv`, `rainfall.csv`, `emissions.csv`.
  2. Run `python src/plotting/produce_figures.py --data-dir data/ --out-dir docs/`  
  3. Output figures will be saved to `docs/` and can be embedded into the report.

---

## How to cite

If you use this repository or the associated dataset/models, please cite:

Aime Serge (2025). *Computational Modeling and Environmental Data Analysis for Climate Change Assessment in East Africa*. GitHub repository: https://github.com/AimeSerge/ClimateModelEA

A CITATION.cff file is included for machine-readable citation metadata.

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

## Contact

Author: **Aime Serge UKOBIZABA**  
Email: *aimeserge512@gmail.com*

---

## Contributing

Contributions are welcome. See `CONTRIBUTING.md` for guidelines on issues, pull requests, and code standards.
