% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/committee_endpoints.R
\name{committee_search}
\alias{committee_search}
\title{Search for a Committee}
\usage{
committee_search(api_key, query_params = list())
}
\arguments{
\item{api_key}{String: Your Open FEC API key}

\item{query_params}{List of KV Pairs: Additional query paramaters to be included}
}
\description{
Fetch basic information about committees and filers.
}
\examples{
committee_search("YOUR_API_KEY_HERE", query_params = list(state = "IL", party = "Democratic Party"))
}
\keyword{election}
\keyword{financial}
\keyword{summary}
