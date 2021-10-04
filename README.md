# EEFRanking (Enhanced Ensemble Feature Ranking)
The EEFRanking R package implements EEFR Feature Selection algorithm.
On a data mining process, EEFR can be used as feature selection pre-process, before classification.

## Package installation from GitHub:
library("devtools")<br/>
install_github('https://github.com/matpato/EEFR.git', INSTALL_opts=c("--no-multiarch"))


## EEFRanking usage:
library(EEFRanking)<br/>
features <- ensemble.feature.ranking(dataset)<br/>
dataset <- dataset[,c(features, 'class')]

## Documentation:
The feature selection is executable by ***ensemble.feature.ranking(dataset, ...)***. 
A list of optional parameters is available, as specified on the documentation. 
As output, it returns a list with the name of the characteristics sorted in inverse order of relevance. 
The returned list can include all the sorted characteristics or a subset of the first ones.

EEFRanking documentation is accessible by: ***help(package="EEFRanking")***. 
The R package includes a demo example, executable by: ***example("ensemble.features.ranking")***. 
The example uses an artificial dataset included in R package.


