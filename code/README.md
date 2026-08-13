# Analysis code

Run the notebooks from the project root in numerical order:

1. `01_task_performance.Rmd` — task-performance data and binomial GLMM
2. `02_gps_data_preprocessing.Rmd` — GPS import, filtering, resampling, and trip segmentation
3. `03_hmm_fit_and_save.Rmd` — pooled four-state HMM and individual HMM fits
4. `04_hmm_figures_and_posthoc.Rmd` — HMM figures and individual-level post-hoc models
5. `05_trip_parameters.Rmd` — sea-trip parameters, GLMMs, figures, and sensitivity analyses

`_shared.R` contains stable project constants: time zone, nest location, HMM
state names and colours, figure dimensions, and small input/output helpers. It
does not change the statistical formulas or data-processing rules.

Open `code.Rproj` and render the notebooks from the repository root. Notebook
03 is computationally intensive because it uses 20 random starts for the pooled
HMM and 20 random starts for each individual HMM. The fitted model used for the
article is included at `outputs/03_HMM/03_fit_objects.rds` so that notebooks 04
and 05 can be reproduced without refitting the HMM.
