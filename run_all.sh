#!/usr/bin/env bash -e

PATH=/app/tmp/cache/.tools/:$PATH

if [ ! -d csv_files ]; then
  mkdir csv_files
fi

python download_and_unzip_files.py
python etl.py
python merge_csvs_across_years.py
