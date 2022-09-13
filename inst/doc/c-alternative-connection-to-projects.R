## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----setup--------------------------------------------------------------------
#  library(gitlabr)

## -----------------------------------------------------------------------------
#  set_gitlab_connection(
#    gitlab_url = "https://gitlab.com",
#    private_token = Sys.getenv("GITLAB_COM_TOKEN"))

## ----eval = FALSE-------------------------------------------------------------
#  my_gitlab <- gl_connection("https://gitlab.com",
#                             private_token = Sys.getenv("GITLAB_COM_TOKEN"))
#  my_gitlab("projects")

## ----echo = FALSE, eval = FALSE, message=FALSE--------------------------------
#  library(dplyr)
#  my_gitlab("projects") %>%
#    filter(public == "TRUE") %>%
#    select(name, everything())

## -----------------------------------------------------------------------------
#  gl_create_issue(project = "<my-project-id>", title = "Implement new feature")

## -----------------------------------------------------------------------------
#  my_gitlab(req = c("projects", "<my-project-id>", "issues"))

## ----eval = FALSE-------------------------------------------------------------
#  my_gitlab(gl_create_issue, title = "Implement new feature", project = "<my-project-id>")

## -----------------------------------------------------------------------------
#  gitlab(
#    c("projects", "<my-project-id>", "issues"),
#    gitlab_con = gl_connection("https://gitlab.com",
#                             private_token = Sys.getenv("GITLAB_COM_TOKEN"))
#  )

