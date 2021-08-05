## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----setup--------------------------------------------------------------------
#  library(gitlabr)

## ----eval = FALSE-------------------------------------------------------------
#  my_gitlab <- gl_connection("https://gitlab.com",
#                             private_token = Sys.getenv("GITLAB_COM_TOKEN"))
#  my_gitlab("projects")

## ----echo = FALSE, eval = FALSE, message=FALSE--------------------------------
#  library(dplyr)
#  my_gitlab("projects") %>%
#    filter(public == "TRUE") %>%
#    select(name, everything())

## ----eval = FALSE-------------------------------------------------------------
#  my_gitlab(gl_create_issue, "Implement new feature", project = my_project)

