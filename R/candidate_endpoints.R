#' Get Information on a Candidate
#'
#' Pulls information for a candidated, identified by a candidate id
#' @param candidate_id String: The id for the candidate of interest.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate
#' @export
#' @examples 
#' get_candidate("P60019015", "YOUR_API_KEY_HERE")

get_candidate <- function(candidate_id, api_key, query_params = list()){
    fec_api(path = paste("/candidate/", candidate_id, "/", sep = ""), api_key = api_key, query_params = query_params)
}

#' Get History a Candidate
#'
#' Pulls information on a candidate's characteristics over time.
#' @param candidate_id String: The id for the candidate of interest.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate history
#' @export
#' @examples 
#' get_candidate_history("P60019015", "YOUR_API_KEY_HERE")

get_candidate_history <- function(candidate_id, api_key, query_params = list()){
    fec_api(path = paste("/candidate/", candidate_id, "/history/",sep =""), api_key = api_key, query_params = query_params)
}

#' Get Candidates
#'
#' Fetch basic information about candidates, and use parameters to filter results to the candidates you're looking for.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate 
#' @export
#' @examples 
#' get_candidates("YOUR_API_KEY_HERE", query_params = list(state = "IL"))

get_candidates <- function(api_key, query_params = list()){
    fec_api(path = "/candidates/", api_key = api_key, query_params = query_params)
}

#' Search Candidates
#'
#' Fetch basic information about candidates and their principal committees.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate history
#' @export
#' @examples 
#' candidates_search("YOUR_API_KEY_HERE", query_params = list(state = "IL"))

candidates_search <- function(api_key, query_params = list()){
    fec_api(path = "/candidates/search/", api_key = api_key, query_params = query_params)
}

#' Get Candidate Totals
#'
#' Aggregated candidate receipts and disbursements grouped by cycle.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate totals
#' @export
#' @examples 
#' get_candidates_totals("YOUR_API_KEY_HERE", query_params = list(state = "IL"))

get_candidates_totals <- function(api_key, query_params = list()){
    fec_api(path = "/candidates/totals/", api_key = api_key, query_params = query_params)
}

#' Get Candidates in a Committee
#'
#' Get information on candidates in a committee.
#' @param committee_id String: The id for the committee of interest.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate committee
#' @export
#' @examples 
#' get_committee_candidates("P60019015", "YOUR_API_KEY_HERE")

get_committee_candidates <- function(committee_id, api_key, query_params = list()){
    fec_api(path = paste("/committee/", comittee_id, "/candidates/", sep = ""), api_key = api_key, query_params = query_params)
}

#' Get History of Candidates in a Committee
#'
#' Find out characteristics over time for candidates in a committee.
#' @param committee_id String: The id for the committee of interest.
#' @param api_key String: Your Open FEC API key.
#' @param query_params List of KV Pairs: Additional query paramters to be included.
#' @keywords candidate history committee
#' @export
#' @examples 
#' get_committee_candidates_history("P60019015", "YOUR_API_KEY_HERE")

get_committee_candidates_history <- function(committee_id, api_key, query_params = list()){
    fec_api(path = paste("/committee/", comittee_id, "/candidates/history/", sep = ""), api_key = api_key, query_params = query_params)
}