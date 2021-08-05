## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----setup--------------------------------------------------------------------
#  library(gitlabr)

## ----eval = FALSE-------------------------------------------------------------
#  gitlab(c("projects", 12, "issues"),
#         api_root = "https://gitlab.com/api/v4",
#         private_token = "XXX", # authentication for API
#         verb = httr::GET,  # defaults to GET, but POST, PUT, DELETE can be used likewise
#         state = "active") # additional parameters (...) for the query

## ----eval = FALSE-------------------------------------------------------------
#  gl_edit_issue(project = "test-project", 12, description = "Really cool new feature",
#             api_root = "...", private_token = "XXX")

## ----eval = FALSE-------------------------------------------------------------
#  gitlab(c("projects",
#           4,  # numeric id of test-project is found by search
#           "issues",
#           12),
#         description = "Really cool new feature",
#         api_root = "...",
#         private_token = "XXX",
#         verb = httr::PUT)

## -----------------------------------------------------------------------------
#  gl_block_user <- function(uid, ...) {
#    gitlab(c("users", uid, "block"),  ## for API side documentation see:
#           verb = httr::PUT, ## https://docs.gitlab.com/ce/api/users.html#block-user
#           ...) ## don't forget the dots to make {gitlabr} features fully available
#  }

