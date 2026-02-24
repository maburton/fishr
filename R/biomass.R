#' Biomass Index
#'
#' @param cpue numeric catch per unit effort
#' @param area_swept numeric area
#'
#' @return numeric biomass
#' @export
#'
#' @examples
#' biomass_index(10, 2)
biomass_index <- function(cpue,
                          area_swept){
  cpue * area_swept
}
