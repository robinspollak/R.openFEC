#' Get FEC Filings for a Candidate
#'
#' Provides FEC Filing records for a given candidate id
#' @param candidate_id String: The Open FEC candidate id for the candidate you hope to query about
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords candidate filings
#' @export
#' @examples
#' get_filings_for_candidate("P60019015", "YOUR_API_KEY_HERE")
get_filings_for_candidate <- function(candidate_id, api_key, query_params = list()){
  fec_api(path = paste("/candidate", candidate_id, "filings/", sep="/"), api_key = api_key, query_params = query_params)
}

#' Get FEC Filings for a Committee
#'
#' Provides FEC Filing records for a given committee id
#' @param committee_id String: The Open FEC committee id for the committee you hope to query about
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords committee filings
#' @export
#' @examples
#' get_filings_for_committee("C00381442", "YOUR_API_KEY_HERE")
get_filings_for_committee <- function(committee_id, api_key, query_params = list()){
  fec_api(path =  paste("/committee", committee_id, "filings/", sep="/"), api_key = api_key, query_params = query_params)
}

#' Get FEC Filings based on Query Params
#'
#' Provides FEC Filing records based on query parameters
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords filings
#' @export
#' @examples
#' get_filings("YOUR_API_KEY_HERE", query_params = list(state = "IL"))
get_filings <- function(api_key, query_params = list()){
  fec_api(path = "/filings/", api_key = api_key, query_params = query_params)
}
