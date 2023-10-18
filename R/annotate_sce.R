#' @title Annotate 'SingleCellExperiment' class object with pseudotime and path information.
#'
#' @description
#' `annotate_sce()` annotates a \code{\link[SingleCellExperiment]{SingleCellExperiment}}
#' class object with pseudotime and path information in its `cell.metadata`
#' generated using \code{\link[SingleCellExperiment]{colData}}.
#'
#' @param sce A SingleCellExperiment object to be annotated.
#' @param pseudotime_colname Name of the column in `cell.metadata` generated using
#' \code{\link[SingleCellExperiment]{colData}} storing information for Pseudotime.
#' (Default is "Pseudotime")
#' @param path_prefix Prefix used to annotate the paths. (Default is "Path").
#' @param root_label Label used to annotate root cells. (Default is "root").
#' @param path_colname Name of the column in `cell.metadata` generated using
#' \code{\link[SingleCellExperiment]{colData}} storing information for Path.
#' (Default is `path_prefix`)
#' #' @param existing_pseudotime_colname The name of an existing pseudotime column to be replaced (if not NULL).
#' @param existing_path_colname The name of an existing path column to be replaced (if not NULL).
#' @param overwrite_labels Logical, should existing column names be overwritten if they exist? (default is TRUE).
#' @param verbose Print detailed output in the console. (Default is TRUE)
#'
#' @return A SingleCellExperiment object with updated cell metadata.
#'
#' @details Additional Details
#'
#' @seealso
#' \code{\link[SingleCellExperiment]{SingleCellExperiment}}, \code{\link[SingleCellExperiment]{colData}}.
#'
#' @examples
#' # Annotate a SingleCellExperiment object with pseudotime and path information
#' \dontrun{
#' annotated_sce <- annotate_sce(sce,
#'   pseudotime_colname = "Pseudotime",
#'   path_colname = "Path"
#' )
#' }
#'
#' @author Priyansh Srivastava \email{spriyansh29@@gmail.com}
#'
#' @importFrom SingleCellExperiment colData
#' @importFrom assertthat assert_that
#'
#' @export
annotate_sce <- function(sce,
                         pseudotime_colname = "Pseudotime",
                         path_prefix = "Path",
                         root_label = "root",
                         path_colname = path_prefix,
                         existing_pseudotime_colname = NULL,
                         existing_path_colname = NULL,
                         overwrite_labels = TRUE,
                         verbose = TRUE) {
  # Overwite the columns
  if (overwrite_labels) {
    assert_that(
      all(!is.null(existing_pseudotime_colname) & !is.null(existing_path_colname)),
      msg = paste("If", path_colname, "is TRUE, 'existing_pseudotime_colname' and 'existing_path_colname', cannot be NULL")
    )

    # Extract the cell metadata
    cell.meta <- as.data.frame(colData(sce))

    # Check columns
    assert_that(
      all(existing_pseudotime_colname %in% colnames(cell.meta)),
      msg = paste("'", existing_pseudotime_colname, "', doesn't exist in cell.metadata")
    )
    # Check columns
    assert_that(
      all(existing_path_colname %in% colnames(cell.meta)),
      msg = paste("'", existing_path_colname, "', doesn't exist in cell.metadata")
    )

    # Override
    names(cell.meta)[names(cell.meta) == existing_pseudotime_colname] <- pseudotime_colname

    # Overwite the columns
    names(cell.meta)[names(cell.meta) == existing_path_colname] <- path_colname

    # Update cell dataset with the updated cell metadata
    colData(sce) <- DataFrame(cell.meta)

    # Return
    return(sce)
  } else {
    # Return
    return(sce)
  }
}