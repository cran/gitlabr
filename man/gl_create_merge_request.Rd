% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/merge_requests.R
\name{gl_create_merge_request}
\alias{gl_create_merge_request}
\alias{gl_edit_merge_request}
\alias{gl_close_merge_request}
\alias{gl_delete_merge_request}
\alias{gl_list_merge_requests}
\title{Manage merge requests}
\usage{
gl_create_merge_request(
  project,
  source_branch,
  target_branch = get_main(),
  title,
  description,
  ...
)

gl_edit_merge_request(project, merge_request_iid, ...)

gl_close_merge_request(project, merge_request_iid)

gl_delete_merge_request(project, merge_request_iid, ...)

gl_list_merge_requests(project, ...)
}
\arguments{
\item{project}{id (preferred way) or name of the project.
Not repository name.}

\item{source_branch}{name of branch to be merged}

\item{target_branch}{name of branch into which to merge}

\item{title}{title of the merge request}

\item{description}{description text for the merge request}

\item{...}{passed on to \code{\link[=gitlab]{gitlab()}}.
Might contain more fields documented in GitLab API doc.}

\item{merge_request_iid}{iid of the merge request}
}
\value{
Tibble of created or remaining merge requests of the project
with informative variables.
}
\description{
Manage merge requests
}
\examples{
\dontrun{
set_gitlab_connection(
  gitlab_url = "https://gitlab.com",
  private_token = Sys.getenv("GITLAB_COM_TOKEN")
)
# Create MR and get its information
mr_infos <- gl_create_merge_request(
  project = "<<your-project-id>>",
  source_branch = "my-extra-branch",
  title = "Merge extra to main", description = "These modifications are wonderful"
)
# List all opened MR
gl_list_merge_requests(project = "<<your-project-id>>", status = "opened")
# Edit MR created
gl_edit_merge_request(
  project = "<<your-project-id>>", merge_request_iid = mr_infos$iid,
  assignee_id = "<<user-id>>"
)
# Close MR
gl_close_merge_request(project = "<<your-project-id>>", merge_request_iid = mr_infos$iid)
# Delete MR as it never existed
gl_delete_merge_request(project = "<<your-project-id>>", merge_request_iid = mr_infos$iid)
}
}
