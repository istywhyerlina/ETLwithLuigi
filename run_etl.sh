#!/bin/bash

# Virtual Environment Path
VENV_PATH="/home/istywhyerlina/fp_introtoDE/venv/bin/activate"

# Activate venv
source "$VENV_PATH"

# set python script
PYTHON_SCRIPT="/home/istywhyerlina/fp_introtoDE/scrape.py"

# run python script
python "$PYTHON_SCRIPT" >> /home/istywhyerlina/fp_introtoDE/log/logfile.log 2>&1

# logging simple
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "Luigi Started at ${dt}" >> /home/istywhyerlina/fp_introtoDE/log/luigi-info.log