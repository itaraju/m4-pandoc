# including all vars into .m4 file
define = function(..., file="", delim=c("`","'"), append=FALSE) {
    stopifnot(is.character(delim) && length(delim)==2)
    vars = unlist(list(...))
    strlist = character(0)
    for (i in 1:length(vars)) {
        strlist = c(
                    strlist,
                    paste(
                          'define(',
                          delim[1],
                          names(vars)[i],
                          delim[2],
                          ', ',
                          delim[1],
                          vars[i],
                          delim[2],
                          ")",
                          sep='')
                    )
    }
    cat(strlist, file=file, sep="\n", fill=FALSE, append=append)
}
