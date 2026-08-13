# Raw data

These files are the inputs used by notebooks 01, 02, 03, and 05. They are
distributed under CC BY 4.0; see the repository-level `LICENSE-DATA.md`.

## Task-performance files

- `2024_trials.csv`, `2025_trials.csv`: one row per trial or habituation event.
  Important fields include individual `id`, `sex`, `test_date`, `test_phase`,
  `test_number`, and whether the reward was `obtained`.
- `2024_trials_coding.csv`, `2025_trials_coding.csv`: fine-scale behavioural
  coding used to count `peck` responses for each individual and test number.

The original column names and encodings are preserved because notebook 01 reads
these files directly.

## GPS files

- `2024_Axy/`: Axy-Trek text exports. Notebook 02 uses the date, time, latitude,
  and longitude in the first four columns.
- `2025_Axy/`: Axy-Trek text exports in the same analysis format.
- `2025_Gipsy/`: Gipsy text exports with a header row; timestamps are UTC in the
  source files and are converted to Japan Standard Time by notebook 02.
- `2025_VHF/`: GPS/VHF logger text exports. Notebook 02 reads RTC date/time and
  latitude/longitude from the original fixed-width-style export.

Latitude and longitude are decimal degrees in WGS84. Output timestamps are
standardised to Japan Standard Time (`Asia/Tokyo`). Individual IDs are logger or
tag identifiers.

## Breakwater polygon

`Kab_4.gpkg` contains the breakwater polygon used to distinguish breakwater
locations from open-water locations. The layer read by the code is
`kab4__kab`.

## Coastline data not included

The GADM 4.1 Japan level-0 files required by notebooks 03 and 05 are not
redistributed. Follow the instructions in the repository `README.md` to obtain
them from GADM.
