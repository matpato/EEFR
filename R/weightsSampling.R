#' @title Sample features weights
#'
#' @description for each sample calculate feature weights based on functionTouse metrics
#' @param dataset original
#' @param RandomRows N subset index rows
#' @param functionToUse statistical function to use as relevancy metric of each feature
#' @param features list of features names
#' @return N x M list of weights
#'

calculateWeightsSampling<-function(dataset, RandomRows, functionToUse, features){
    weightsIG<-{}
    fnames=colnames(dataset)
    weights <- apply(RandomRows, 1, function(x){subsetAllData <- dataset[x, features]; as.matrix(functionToUse(class~., subsetAllData))})
    weightsIG <- as.data.frame(t(weights))
    colnames(weightsIG) <- fnames[!(fnames %in% c("class"))]
    return (weightsIG)
}
