source('summarize.R')
source('m4define.R')
define(CylList = paste(unique(sum$cyl), collapse=", "),
       file = "vars.m4")
