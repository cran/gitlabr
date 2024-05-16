## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(gitlabr)

## -----------------------------------------------------------------------------
# Templates available
list.files(system.file("gitlab-ci", package = "gitlabr"))

## ----eval=FALSE---------------------------------------------------------------
#  # Create a .gitlab-ci.yml file with the template
#  gitlabr::use_gitlab_ci(template = "check-coverage-pkgdown")

## ----eval=FALSE---------------------------------------------------------------
#  # Create a .gitlab-ci.yml file with the template
#  gitlabr::use_gitlab_ci(template = "bookdown")

