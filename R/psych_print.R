#' @importFrom knitr knit_print
#' @export
knitr::knit_print


#' Pretty-print a Cronbach's alpha object
#'
#' Turn a [psych::alpha()] object into HTML tables.
#'
#' @param x a psych alpha object
#' @param indent add # to this to make the headings in the components lower-level. defaults to beginning at h5
#' @param ... ignored
#'
#' @export
#' @examples
#' example("alpha", "psych")
#' knitr::knit_print(a4)
#'
knit_print.alpha <- function(x, indent = '#####', ...) {
  asis_knit_child(require_file("_knit_print_psych.Rmd"))
}

#' Print a [psych::multilevel.reliability()] object for knitr
#'
#' Just prints the normal output of [psych::multilevel.reliability()].
#'
#' @param x a psych alpha object
#' @param indent add # to this to make the headings in the components lower-level. defaults to beginning at h5
#' @param ... ignored
#'
#' @export
#' @examples
#' example("mlr", "psych")
#' knitr::knit_print(mg)
#'
knit_print.multilevel <- function(x, indent = '#####', ...) {
  knitr::asis_output(paste0("\n\n\n```\n",
      paste0(utils::capture.output(psych::print.psych(x)), collapse = "\n"),
      "\n```\n\n\n"))
}



#' Print a [userfriendlyscience::scaleDiagnosis()] object for knitr
#'
#' Just prints the normal output of [userfriendlyscience::scaleDiagnosis()].
#'
#' @param x a scaleDiagnosis object
#' @param indent add # to this to make the headings in the components lower-level. defaults to beginning at h5
#' @param ... ignored
#'
#' @export
#' @examples
#' example("mlr", "psych")
#' knitr::knit_print(mg)
#'
knit_print.scaleDiagnosis <- function(x, indent = '#####', ...) {
  asis_knit_child(require_file("_knit_print_scaleDiagnosis.Rmd"))
}


#' Print a [stats::cor.test()] object for knitr
#'
#' Just prints the normal output of [stats::cor.test()].
#'
#' @param x a psych alpha object
#' @param indent add # to this to make the headings in the components lower-level. defaults to beginning at h5
#' @param ... ignored
#'
#' @export
#' @examples
#' knitr::knit_print(cor.test(rnorm(100), rnorm(100)))
#'
knit_print.htest <- function(x, indent = '#####', ...) {
  knitr::asis_output(paste0("\n\n\n```\n",
    paste0(utils::capture.output(print(x)), collapse = "\n"),
    "\n```\n\n\n"))
}
