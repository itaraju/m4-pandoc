This repository is demonstrating an idea about how to implement literate
programming using a combination of the following tools:

- [R](http://r-project.org)
- [pandoc](http://pandoc.org)
- [make](https://www.gnu.org/software/make/)
- [m4](https://www.gnu.org/software/m4/m4.html)

Among those tools R, pandoc and make are common place in literate programming
and used as tools for reproducible analysis [1][][2][][3][][4][].

But it's not been common to see m4 used among them. And it's possible to use
`m4`'s macros to have values computed in R inserted in documents before pandoc
compilation. Here I'm refering to R, but actually it could be any programming
language. Also `make` is not a requirement, but due to the extra number of
operations involved, it would be more practical to coordinate the steps through
`make`.

To follow the `Makefile` here is the best way to figure out how `m4` can be
integrated in this approach.

Here `m4` is basically avoiding the use of `knitr`[1], but the intent is not to
provide an alternative for this package. But the fact that `m4` can be used in
this kind of workflow seems interesting, and might add more flexibility to
some workflows.

[1]: https://yihui.name/en/2012/06/enjoyable-reproducible-research/
[2]: http://predictiveecology.org/2016/10/21/Rmarkdown-science-workflow.html
[3]: https://doi.org/10.1186/1751-0473-8-7
[4]: http://kbroman.org/minimal_make/
