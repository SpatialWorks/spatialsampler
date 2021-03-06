################################################################################
#
#' Simple Spatial Sampling Method (S3M)
#'
#' The Simple Spatial Survey Method (S3M) was developed from the Centric
#' Systematic Area Sampling (CSAS) approach used in biodiversity species
#' counting and adapted for use in health and nutrition surveys by Brixton Health
#' and Valid International. S3M is used in surveys designed to be spatially
#' representative i.e., the sample distributed evenly across the survey area,
#' using a spatial sample design that selected communities located closest to
#' the centroids of a hexagonal grid laid over the survey area. The resulting
#' sample is a triangular irregular network.
#'
#' @docType package
#' @name spatialsampler
#' @keywords internal
#' @importFrom utils tail
#' @importFrom graphics polygon identify plot points
#' @importFrom stats quantile
#' @importFrom rgeos gDelaunayTriangulation gBuffer
#' @importFrom Imap gdist
#' @importFrom sp SpatialPoints SpatialLines CRS spTransform plot proj4string
#'   bbox Line Lines
#' @importFrom grDevices dev.new
#' @importFrom geosphere distGeo
#' @importFrom FNN get.knnx
#' @importFrom raster extent
#' @importFrom magrittr %>%
#' @importFrom methods as
#'
#
################################################################################
"_PACKAGE"

## quiets concerns of R CMD check re: map_projections
if(getRversion() >= "2.15.1")  utils::globalVariables(c("map_projections",
                                                        "countryCentroid"))
