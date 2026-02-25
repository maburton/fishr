#' Calculate Catch per Unit Effort (CPUE)
#'
#' @param catch Numeric vector of catch
#' @param effort Numeric vector of effort
#' @param gear_factor integer adjustment for gear standardization
#'
#' @return A numeric vector of CPUE values
#' @export
#'
#' @examples
#' cpue (100, 10)
#' cpue (100, 10, gear_factor = 0.5)
cpue <- function(catch,
                 effort,
                 gear_factor = 1,
                 verbose = FALSE){
  if(verbose) {
    message("Processing ", length(catch), " records")
  }
  raw_cpue <- catch/effort
  raw_cpue * gear_factor
}
