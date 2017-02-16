library(knitr)
opts_chunk$set(Message=FALSE,echo=FALSE)
library(ggplot2)
library(reshape2)
library(Quandl)
Quandl.api_key("9iGeZZoG6Vc46rfs1AgJ")
library(readr)
library(plyr)
library(dplyr)
options(warn=-1)          #suprress warning globally
## the default is
## options(warn=0)




# this function psummary is to get the lastes price,min,median for the selected stocks
psummary = function(x){
  op = group_by(x,code)
  summarise(op,latest = first(close),min = min(close),median = median(close),date = first(date))
}

## usage example

## input = filter(stock,code %in% c('SHA600000','SHA600005','SHA600006','SHA600007'))
## opdata = select(input,code,date,close)
## psummary(opdata)

