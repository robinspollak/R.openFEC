#' Find Committees that Support a Candidate
#'
#' Fetches a list of committees tied to a given candidate ID
#' @param candidate_id String: The id for the candidate of interest.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate
#' @export
#' @examples 
#' get_candidate_committees("P60019015", "YOUR_API_KEY_HERE")
get_candidate_committees <- function(candidate_id, api_key, query_params = list()){
  fec_api(path = paste("/candidate/", candidate_id, "/committees/", sep = ""), api_key = api_key, query_params = query_params)
}

#' Find Committees that Support a Candidate, through History
#'
#' Fetches a list of committees tied to a given candidate ID, through History
#' @param candidate_id String: The id for the candidate of interest.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate
#' @export
#' @examples 
#' get_candidate_committees_history("P60019015", "YOUR_API_KEY_HERE")
get_candidate_committees_history <- function(candidate_id, api_key, query_params = list()){
  fec_api(path = paste("/candidate/", candidate_id, "/committees/history/", sep = ""), api_key = api_key, query_params = query_params)
}

#' Get Information on a Committee
#'
#' Fetches information on a given committee, identified by committee ID
#' @param committee_id String: The Open FEC committee id for the committee you hope to query about
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords financial committee
#' @export
#' @examples
#' get_committee("C00381442", "YOUR_API_KEY_HERE")
get_committee <- function(committee_id, api_key, query_params = list()){
  fec_api(path = paste("/committee/", committee_id, "/", sep = ""), api_key = api_key, query_params = query_params)
}

#' Get History of a Committee
#'
#' Pulls information on a committee's characteristics over time.
#' @param committee_id String: The Open FEC committee id for the committee you hope to query about
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords financial committee
#' @export
#' @examples
#' get_committee_history("C00381442", "YOUR_API_KEY_HERE")
get_committee_history <- function(committee_id, api_key, query_params = list()){
  fec_api(path = paste("/committee/", committee_id, "/history/", sep = ""), api_key = api_key, query_params = query_params)
}

#' Search for a Committee
#'
#' Fetch basic information about committees and filers.
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords election financial summary
#' @export
#' @examples
#' committee_search("YOUR_API_KEY_HERE", query_params = list(state = "IL", party = "Democratic Party"))
committee_search <- function(api_key, query_params = list()){
  fec_api(path = "/committees/", api_key = api_key, query_params = query_params)
}