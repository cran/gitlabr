## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
#  library(gitlabr)
#  
#  # Store your token in .Renviron and restart your session
#  usethis::edit_r_environ()
#  # Add: GITLAB_COM_TOKEN=YourTokenHere
#  # You can verify it worked
#  Sys.getenv("GITLAB_COM_TOKEN")
#  
#  # connect as a fixed user to a GitLab instance
#  set_gitlab_connection(
#    gitlab_url = "https://gitlab.com/",
#    private_token = Sys.getenv("GITLAB_COM_TOKEN")
#  )
#  
#  gl_list_groups(page = 1) # Returns all groups you have access to
#  gl_list_projects(page = 1) # Returns all projects on GitLab, so we limit to just the first page of results.
#  
#  # It's unlikely that you'll want to use 'gitlabr' to interact with all the projects on GitLab, so a better approach is to define the project you want to work on. This is done by finding the the project ID on GitLab.com (it is listed right below the project name on the repo front page).
#  # Here we use the [project "repo.rtask"](https://gitlab.com/statnmap/repo.rtask)
#  my_project <- 20384533
#  gl_list_files(project = my_project)
#  
#  # create a new issue
#  new_feature_issue <- gl_create_issue(
#    title = "Implement new feature",
#    project = my_project
#  )
#  
#  # statnmap user ID
#  my_id <- 4809823
#  
#  # assign issue to me
#  gl_assign_issue(
#    assignee_id = example_user$id,
#    issue_id = new_feature_issue$iid,
#    project = my_project
#  )
#  
#  # List opened issues
#  gl_list_issues(
#    state = "opened",
#    project = my_project
#  )
#  
#  # close the issue
#  gl_close_issue(
#    issue_id = new_feature_issue$iid,
#    project = my_project
#  )$state

## ----eval = FALSE-------------------------------------------------------------
#  set_gitlab_connection(my_gitlab)
#  gl_create_issue(project = my_project, "Implement new feature")

## ----eval = FALSE-------------------------------------------------------------
#  my_gitlab <- gl_connection(
#    gitlab_url = "https://about.gitlab.com/",
#    private_token = Sys.getenv("GITLAB_COM_TOKEN")
#  )
#  
#  gl_create_issue("Implement new feature", project = my_project, gitlab_con = my_gitlab)

