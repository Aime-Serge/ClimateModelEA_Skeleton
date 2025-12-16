#!/usr/bin/env bash
# Example script to run the full analysis pipeline (EDA -> modeling -> figures)
set -e
echo "Activating virtual environment..."
source venv/bin/activate
echo "Running data preprocessing..."
python src/data_ingest/preprocess.py --out data/
echo "Running EDA notebook conversion..."
jupyter nbconvert --to notebook --execute notebooks/EDA.ipynb --output notebooks/EDA_executed.ipynb
echo "Training models..."
python src/models/train_models.py --data data/ --out models/
echo "Generating figures..."
python src/plotting/produce_figures.py --data-dir data/ --out-dir docs/
echo "Done."
