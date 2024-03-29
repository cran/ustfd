% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ustfd.R
\name{ustfd_request}
\alias{ustfd_request}
\title{Retrieve Data From the U.S. Bureau Of the Fiscal Service API}
\usage{
ustfd_request(
  query,
  user_agent = "http://github.com/groditi/ustfd",
  process_response = ustfd_json_response,
  ...
)
}
\arguments{
\item{query}{list generated by one of the query generating functions}

\item{user_agent}{string, optional}

\item{process_response}{function, optional. processes the \code{httr} response
object. Defaults to \code{\link[=ustfd_json_response]{ustfd_json_response()}} which will return the JSON
payload parsed into a list}

\item{...}{further arguments will be passed to \code{process_response} when called}
}
\value{
a httr response object
}
\description{
\code{ustfd_request()}  will execute queries against the Fiscal Data API. Queries
can generated using \code{\link[=ustfd_query]{ustfd_query()}}.
}
\examples{
\dontrun{
library(ustfd)
query <- ustfd_query('v1/accounting/dts/dts_table_2', sort =c('-record_date'))
response <- ustfd_request(query)
payload_table <- ustfd_response_payload(response)
payload_meta <- ustfd_response_meta_object(response)
}
}
\seealso{
Other ustfd_low_level: 
\code{\link{ustfd_json_response}()},
\code{\link{ustfd_response_meta_object}()},
\code{\link{ustfd_response_payload}()},
\code{\link{ustfd_url}()}
}
\concept{ustfd_low_level}
