## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----setup--------------------------------------------------------------------
#  library(gitlabr)

## -----------------------------------------------------------------------------
#  # GitLab con
#  set_gitlab_connection(
#    gitlab_url = "https://gitlab.com",
#    private_token = Sys.getenv("GITLAB_COM_TOKEN")
#  )

## -----------------------------------------------------------------------------
#  test_project_name <- "testor.main"
#  main_branch <- "main"

## -----------------------------------------------------------------------------
#  project_info <- gl_new_project(
#    name = test_project_name,
#    default_branch = main_branch,
#    initialize_with_readme = TRUE
#  )

## -----------------------------------------------------------------------------
#  gl_list_branches(project = project_info$id)

## -----------------------------------------------------------------------------
#  browseURL(project_info$web_url)

## -----------------------------------------------------------------------------
#  # Content of the README
#  content_md <- paste("
#  # testor.main
#  
#  Repository to test R package ['gitlabr'](https://github.com/statnmap/gitlabr)
#  ")
#  
#  # Push file with a commit
#  gl_push_file(
#    project = project_info$id,
#    file_path = "README.md",
#    content = content_md,
#    commit_message = "Update README",
#    branch = main_branch,
#    overwrite = TRUE
#  )

## -----------------------------------------------------------------------------
#  # Create the new branch
#  gl_create_branch(project = project_info$id, branch = "for-tests", ref = main_branch)
#  
#  # List branches to see if it was created
#  # Note that branch creation can take a while, wait a little before using `gl_list_branches()`
#  # gl_list_branches(project = project_info$id)

## -----------------------------------------------------------------------------
#  content_ci <- paste("
#  testing:
#    script: echo 'test 1 2 1 2' > 'test.txt'
#    artifacts:
#      paths:
#        - test.txt
#  ")
#  
#  gl_push_file(
#    project = project_info$id,
#    file_path = ".gitlab-ci.yml",
#    content = content_ci,
#    commit_message = "Add CI to the main branch",
#    branch = main_branch,
#    overwrite = TRUE
#  )

## -----------------------------------------------------------------------------
#  # Get list of commits in default branch
#  commits_in_main <- gl_get_commits(project = project_info$id, ref_name = main_branch)
#  # Add a comment to this commmit
#  gl_comment_commit(
#    project = project_info$id,
#    id = commits_in_main$id[1],
#    text = "Write a comment"
#  )

## -----------------------------------------------------------------------------
#  # Create an issue
#  issue_info <- gl_create_issue(
#    project = project_info$id,
#    title = "Dont close issue 1",
#    description = "An example issue to not close for tests"
#  )
#  
#  # Create a comment to the issue
#  gl_comment_issue(
#    project = project_info$id,
#    id = issue_info$iid,
#    text = "A comment on issue to not close"
#  )

## ----eval=FALSE---------------------------------------------------------------
#  gl_delete_project(project_id)

