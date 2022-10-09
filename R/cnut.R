################################################################################
#
#' @title Determining Child Malnutrition Status
#'
#' @description Identification of individual 6-59 months old children
#'   malnutrition status
#'
#' @param hv103 Classification of de facto children or not variable from
#'   PR dataset
#'
#' @param hc70 HAZ score variable from PR dataset
#'
#' @param haz clenaed HAZ score
#'
#' @return a continious vector of haz z score
#'
#' @examples
#'   # HAZ mean score
#'   haz_score <- get_haz(PRdata$hv103, PRdata$hc70)
#'
#'   wt <- PRdata$hv005/1000000
#'
#'   weighted.mean(haz_score, wt, na.rm = TRUE)
#'
#'   summary(haz_score, na.rm = TRUE)
#'
#'   # stunting
#'   stunting <- get_stunt(haz_score)
#'   xtabs(wt ~ stunting)
#'   sum(xtabs(wt ~ stunting))
#'   prop.table(xtabs(wt ~ stunting))
#'
#'
#'
#' @author Nicholus Tint Zaw
#' @export
#' @rdname get_stunting
#'
################################################################################
################################################################################

get_haz <- function(hv103, hc70){

  haz <- ifelse(hv103 == 1 & hc70 < 9996, hc70/100, NA)

  return(haz)

}


################################################################################
#
#' @export
#' @rdname get_stunting
#'
#
################################################################################

get_stunt <- function(haz){

  stunt <- ifelse(haz < -2 , 1, 0)

  return(stunt)

}

