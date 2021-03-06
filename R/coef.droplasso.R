#' Coefficients of a model of class droplasso
#' 
#' This function extracts the matrix of coefficients for the model(s) trained by
#' the \code{droplasso} function corresponding to regularization parameters of 
#' interest.
#' 
#' @param object Object of class \code{droplasso}
#' @param s Value(s) of the penalty parameter lambda at which coefficients are 
#'   required. Can be either omitted, or a vector of numeric values. If omitted,
#'   default is the entire sequence used to create the model.
#' @param ... other arguments.
#' @return A matrix of coefficients, each column corresonds to a regularization 
#'   parameter.
#' @references Adapted from the same function in 
#'   \href{https://cran.r-project.org/web/packages/Coxnet/index.html}{Coxnet} 
#'   package.
#' @seealso \code{droplasso}, \code{predict} methods.
#' @export
#' @importFrom stats predict
coef.droplasso = function(object, s=NULL, ...) {
  predict(object,s=s,type="coefficients",...)
}