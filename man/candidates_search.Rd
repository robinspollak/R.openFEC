% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/candidate_endpoints.R
\name{candidates_search}
\alias{candidates_search}
\title{Search Candidates}
\usage{
candidates_search(api_key, query_params = list())
}
\arguments{
\item{api_key}{String: Your Open FEC API key.}

\item{query_params}{List of KV Pairs: Additional query paramters to be included.}
}
\description{
Fetch basic information about candidates and their principal committees.
}
\examples{
candidates_search("YOUR_API_KEY_HERE", query_params = list(state = "IL"))
}
\keyword{candidate}
\keyword{history}
