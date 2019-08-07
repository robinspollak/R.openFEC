#' Query the Open FEC API
#'
#' Query the base Open FEC API with any path or parameters you like
#' @param path String: The path of the endpoint you would like you query
#' @param api_key String: Your Open FEC API key
#' @param query_params List of KV Pairs: Additional query paramaters to be included
#' @keywords api
#' @export
#' @examples
#' fec_api("/candidates/", "YOUR_API_KEY_GOES_HERE", query_params = list(q = c("Obama")))

fec_api <- function(path, api_key, query_params = list()){
  url <- modify_url("https://api.open.fec.gov", path = paste("/v1", path, sep="/"), query = c(list(api_key=api_key), query_params))
  url
  resp <- GET(url)

  if (status_code(resp) != 200) {
    stop(
      sprintf(
        "Open FEC API request failed [%s]\n%s\n<%s>",
        status_code(resp),
        resp$response
      ),
      call. = FALSE
    )
  }

  if (http_type(resp) != "application/json"){
    stop("API did not return json", call. = FALSE)
  }

  parsed <- jsonlite::fromJSON(content(resp, "text", encoding="UTF-8"), simplifyVector = FALSE)

  structure(
    list(
      content = parsed,
      path = path,
      response = resp
    ),
    class = "fec_api"
  )
}

print.fec_api <- function(x, ...){
  cat("<OpenFEC ", x$path, x$query, ">\n", sep = "")
  str(x$content$results)
  invisible(x)
}
