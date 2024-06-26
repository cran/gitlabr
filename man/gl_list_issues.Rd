% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/issues.R
\name{gl_list_issues}
\alias{gl_list_issues}
\alias{gl_get_issue}
\title{Get issues of a project or user}
\usage{
gl_list_issues(
  project = NULL,
  issue_id = NULL,
  verb = httr::GET,
  api_version = 4,
  ...
)

gl_get_issue(project, issue_id, ...)
}
\arguments{
\item{project}{id (preferred way) or name of the project.
Not repository name. May be null for all issues created by user.}

\item{issue_id}{optional issue id
(projectwide; for API v3 only you can use global iid when api_version is \code{3})}

\item{verb}{ignored; all calls with this function will have \code{\link[=gitlab]{gitlab()}}'s
default verb \code{httr::GET}}

\item{api_version}{a switch to force deprecated GitLab API v3
behavior that allows filtering by global iid. If \code{3}
filtering happens by global iid, if false, it happens
by projectwide ID. For API v4, this must be FALSE (default)}

\item{...}{further parameters passed on to \code{\link[=gitlab]{gitlab()}}, may be
state, labels, issue id, ...}
}
\value{
Tibble of issues of the project with descriptive variables.
}
\description{
Get issues of a project or user
}
\details{
\code{gl_get_issue} provides a wrapper with swapped arguments for convenience, esp. when
using a project connection
}
\examples{
\dontrun{
# Set the connection for the session
set_gitlab_connection(
  gitlab_url = test_url,
  private_token = test_private_token
)
# list issues
gl_list_issues("<<your-project-id>>", max_page = 1)
# list opened issues
gl_list_issues("<<your-project-id>>", state = "opened")
# Get one issue
gl_get_issue("<<your-project-id>>", issue_id = 1)
# Create new issue
gl_new_issue("<<your-project-id>>",
  title = "Implement new feature",
  description = "It should be awesome."
)
# Assign user to issue 1
gl_assign_issue("<<your-project-id>>", issue_id = 1, assignee_id = "<<user-id>>")
}
}
