#' @title Get N random Saples
#'
#' @description Get N random row indexes subsets
#' @param nRows dataset number of rows
#' @param size subset number of rows
#' @param interactions number of subsets (N)
#' @return N subsets of row indexs
#'


getNRandomsRowsSubsets<-function(nRows, size, iterations){
    randomRowsN<-{}
    nIterations <- iterations
    for( i in 1:nIterations){
        randomRowsN<-rbind(randomRowsN,c(sample(nRows, size)))
    }
    return(randomRowsN)
}
