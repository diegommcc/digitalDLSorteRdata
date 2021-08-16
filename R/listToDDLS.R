## from list to DigitalDLSorter object

#' Transform DigitalDLSorterDNN-like list into an actual DigitalDLSorterDNN
#' object
#'
#' Transform DigitalDLSorterDNN-like list into an actual
#' \code{\linkS4class{DigitalDLSorterDNN}} object. This function allows to use
#' pre-trained models in the \pkg{digitalDLSorteR} package. It only works if
#' \pkg{digitalDLSorteR} is installed.
#'
#' @param listTo A list in which each element must correspond to each slot of an
#'   \code{\linkS4class{DigitalDLSorterDNN}} object. The names must be the same
#'   as the slot names.
#'
#' @return \code{\linkS4class{DigitalDLSorterDNN}} object the data provided in
#'   the original list.
#'
#' @export
#'
#' @seealso \code{\link{listToDDLS}}
#'   
listToDDLSDNN <- function(listTo) {
  if (!requireNamespace("digitalDLSorteRdata", quietly = TRUE)) {
    stop("This functionality only works if digitalDLSorteR package is installed")
  } 
  if (any(!names(listTo) %in% c(
    "model", "training.history", "test.metrics", "test.pred", 
    "cell.types", "features", "test.deconv.metrics"
  ))) {
    stop("The list provided is not valid to create a DigitalDLSorterDNN object")
  }
  return(
    digitalDLSorteR::DigitalDLSorterDNN(
      model = listTo$model,
      training.history = listTo$training.history,
      test.metrics = listTo$test.metrics, 
      test.pred = listTo$test.pred,
      cell.types = listTo$cell.types, 
      features = listTo$features,
      test.deconv.metrics = listTo$test.deconv.metrics
    )
  )
}

#' Transform DigitalDLSorter-like list into an actual DigitalDLSorterDNN
#' object
#'
#' Transform DigitalDLSorter-like list into an actual
#' \code{\linkS4class{DigitalDLSorter}} object. This function allows to
#' generate the examples and the vignettes of \pkg{digitalDLSorteR} package as
#' these are the data used.It only works if \pkg{digitalDLSorteR} is installed.
#'
#' @param listTo A list in which each element must correspond to each slot of an
#'   \code{\linkS4class{DigitalDLSorter}} object. The names must be the same as
#'   the slot names.
#'
#' @return \code{\linkS4class{DigitalDLSorter}} object the data provided in the
#'   original list.
#'
#' @export
#'
#' @seealso \code{\link{listToDDLSDNN}}
#'   
listToDDLS <- function(listTo) {
  if (!requireNamespace("digitalDLSorteRdata", quietly = TRUE)) {
    stop("This functionality only works if digitalDLSorteR package is installed")
  } 
  if (any(!names(listTo) %in% c(
    "single.cell.real", "zinb.params", "single.cell.simul", 
    "prob.cell.types", "bulk.simul", "trained.model", "deconv.data", 
    "deconv.results", "project", "version"
  ))) {
    stop("The list provided is not valid to create a DigitalDLSorter object")
  }
  # for prob.cell.types slot: ProbMatrixCellTypes 
  if (is.null(listTo$prob.cell.types)){
    prob.cell.types <- NULL
  } else if (is(listTo$prob.cell.types, "list")) {
    prob.cell.types <- list(
      train = ProbMatrixCellTypes(
        prob.matrix = listTo$prob.cell.types$train$prob.matrix,
        cell.names = listTo$prob.cell.types$train$cell.names,
        set.list = listTo$prob.cell.types$train$set.list,
        set = listTo$prob.cell.types$train$set,
        plots = listTo$prob.cell.types$train$plots,
        type.data = listTo$prob.cell.types$train$type.data
      ),
      test = ProbMatrixCellTypes(
        prob.matrix = listTo$prob.cell.types$test$prob.matrix,
        cell.names = listTo$prob.cell.types$test$cell.names,
        set.list = listTo$prob.cell.types$test$set.list,
        set = listTo$prob.cell.types$test$set,
        plots = listTo$prob.cell.types$test$plots,
        type.data = listTo$prob.cell.types$test$type.data
      )
    )
  }
  # for trained.model slot: DigitalDLSorterDNN
  if (is.null(listTo$trained.model)){
    trained.model <- NULL
  } else if (is(listTo$trained.model, "DigitalDLSorterDNN")) {
    trained.model <- listToDDLSDNN(listTo$trained.model)
  }
  return(
    digitalDLSorteR::DigitalDLSorter(
      single.cell.real = listTo$single.cell.real,
      zinb.params = listTo$zinb.params,
      single.cell.simul = listTo$single.cell.simul,
      prob.cell.types = prob.cell.types,
      bulk.simul = listTo$bulk.simul,
      trained.model = trained.model,
      deconv.data = listTo$deconv.data,
      deconv.results = listTo$deconv.results,
      project = listTo$project,
      version = listTo$version
    )
  )
}