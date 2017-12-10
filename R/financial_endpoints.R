#' Query for Committee Financial reports
#'
#' Provides financial reports for a given committee id
#' @param committee_id String: The Open FEC committee id for the committee you hope to query about
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords financial committee
#' @export
#' @examples
#' get_committee_financial_reports("C00381442", "YOUR_API_KEY_HERE")
get_committee_financial_reports <- function(committee_id, api_key, query_params = list()){
  fec_api(path = "/committee/", comittee_id, "/reports/", api_key = api_key, query_params = query_params)
}

#' Query for an Election Financial Summary
#'
#' Look at the top-level financial information for all candidates running for the same office.
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords election financial summary
#' @export
#' @examples
#' get_election_financial_summary("YOUR_API_KEY_HERE", query_params = list(cycle = "2016", office = "senate", state = "IL"))
get_election_financial_summary <- function(api_key, query_params = list()){
  fec_api(path = "/elections/", api_key = api_key, query_params = query_params)
}

#' Search for an Election's Financial Records
#'
#' List elections by cycle, office, state, and district.
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords search election financial
#' @export
#' @examples
#' search_for_election("YOUR_API_KEY_HERE", query_params = list(cycle = "2016", office = "house", state = "IL", district = "01"))
search_for_election <- function(api_key, query_params = list()){
  fec_api(path = "/elections/search/", api_key = api_key, query_params = query_params)
}

#' Query for financial totals by entity type
#'
#' Provides cumulative receipt totals by entity type, over a two year cycle. Totals are adjusted to avoid double counting.
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords financial entity total
#' @export
#' @examples
#' get_financial_totals_by_entity("YOUR_API_KEY_HERE", query_params = list(cycle = "2016", state = "IL"))
get_financial_totals_by_entity <- function(api_key, query_params = list()){
  fec_api(path = "/totals/by_entity/", api_key = api_key, query_params = query_params)
}