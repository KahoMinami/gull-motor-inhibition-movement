# Shared project settings --------------------------------------------------

# This file contains presentation settings and stable project constants only.
# Statistical formulas, thresholds, model structures, and data transformations
# remain in their numbered analysis notebooks.

LOCAL_TZ <- "Asia/Tokyo"

NEST_COORDS <- c(lon = 141.5576031, lat = 40.5386062)

HMM_STATE_NAMES <- c("directed", "undirected", "ARS", "water")

HMM_STATE_COLOURS <- c(
  directed = "firebrick2",
  undirected = "mediumpurple2",
  ARS = "slategray3",
  water = "deepskyblue3"
)

HMM_STATE_LABELS <- c(
  directed = "Directed flight",
  undirected = "Undirected flight",
  ARS = "ARS",
  water = "Water"
)

HMM_STATE_LABELS_ON_WATER <- c(
  directed = "Directed flight",
  undirected = "Undirected flight",
  ARS = "ARS",
  water = "On water"
)

HMM_LABEL_COLOURS <- stats::setNames(
  unname(HMM_STATE_COLOURS),
  unname(HMM_STATE_LABELS)
)

FIGURE_SIZES <- list(
  hmm_distribution = c(width = 14, height = 6),
  hmm_score_effects = c(width = 12, height = 9),
  hmm_residency = c(width = 13, height = 7),
  individual_hmm_glm = c(width = 12, height = 9),
  viterbi_combined = c(width = 14, height = 6.5),
  trip_parameters = c(width = 8, height = 10)
)

ensure_project_dirs <- function() {
  dir.create(here::here("outputs"), recursive = TRUE, showWarnings = FALSE)
  dir.create(here::here("figure"), recursive = TRUE, showWarnings = FALSE)
  dir.create(here::here("figures"), recursive = TRUE, showWarnings = FALSE)
  invisible(TRUE)
}

assert_input_files <- function(paths) {
  missing <- paths[!file.exists(paths)]
  if (length(missing) > 0) {
    stop(
      "Required input file(s) are missing:\n- ",
      paste(missing, collapse = "\n- "),
      call. = FALSE
    )
  }
  invisible(paths)
}

save_pdf <- function(filename, plot, size, ...) {
  ggplot2::ggsave(
    filename = filename,
    plot = plot,
    width = unname(size[["width"]]),
    height = unname(size[["height"]]),
    device = grDevices::cairo_pdf,
    ...
  )
}

