#' Get names list for x, y, and weights
#'
#' @param use_weights boolean for whether weights are in data
#' @param data_names vector of names for data
#' @return list of x, y, and weights with respective names
#' @export
getNamesFromOrdered <- function(names, use_weights) {
  minimum_fields <- 2 +
    (use_weights && names[length(names)] != names[length(names) - 1])
  assertthat::assert_that(length(names) >= minimum_fields)
  assertthat::assert_that(class(names) == "character")
  assertthat::assert_that(class(use_weights) == "logical")
  y <- names[1]
  x <- if (use_weights) names[2:length(names)-1] else names[2:length(names)]
  w <- if (use_weights) names[length(names)] else NULL
  # If target variable is included in predictors, remove it from predictors.
  list(x = x[x != y], y = y, w = w)
}

#' Create formula string
#'
#' @param x_vars vector of strings of x variable field names
#' @param y_var string of y variable field name
#' @return formula of y_var ~ x_vars
#' @export
makeFormula <- function(x_vars, y_var) {
  assertthat::assert_that(class(x_vars) == "character")
  assertthat::assert_that(class(y_var) == "character")
  x_string <- paste(x_vars, collapse = " + ")
  as.formula(paste0(y_var, " ~ ", x_string))
}

#' Execute function on parameters
#' To-Do: re-specify call to be appropriate
#'
#' @param f function string
#' @param param_list list of parameters to pass to f
#' @return model object
#' @export
doFunction <- function(f, param_list) {
  do.call(match.fun(f), param_list)
}

#' Prepare model for output
#'
#' @param model_name string - name of model to be output
#' @param model_obj model object to output
#' @return key value pair list with name and model
#' @export
prepModelForOutput <- function(model_name, model_obj) {
  assertthat::assert_that(class(model_name) == "character")
  list(
    Name = model_name,
    Object = list(model_obj)
  )
}
