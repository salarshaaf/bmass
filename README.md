# bmass: Bayesian multivariate analysis of summary statistics

[![CRAN status badge](https://www.r-pkg.org/badges/version/bmass)](https://cran.r-project.org/package=bmass)
[![Travis Build Status](https://travis-ci.org/mturchin20/bmass.svg?branch=master)](https://travis-ci.org/mturchin20/bmass)

The `bmass` R package provides accessible functions for running the
algorithms described in [Stephens 2013 PLoS ONE][stephens2013] and
applied to multiple large, publicly available GWAS datasets in 
[Turchin and Stephens 2019][plosgen-paper]. `bmass` conducts a
Bayesian multivariate analysis of GWAS data using univariate
association summary statistics. Output inclues whether any new SNPs 
are found as multivariate genome-wide significant as well as posterior
probabilities of each significant SNP's assignment to different
multivariate models. 

For more details on the results of applying `bmass` to publicly available
GWAS datasets, please see [our paper in *PLOS Genetics*][plosgen-paper]. For
more details regarding the underlying algorthims of `bmass`, please see 
[Stephens 2013 PLoS ONE][stephens2013].

If you find a bug, or you have a question or feedback on our work,
please post an [issue][issues].

## Citing this work

If you find the `bmass` package or any of the source code in this
repository useful for your work, please cite:

> Turchin MC and Stephens M (2019) "Bayesian multivariate 
> reanalysis of large genetic studies identifies many new 
> associations." *PLOS Genetics* 15(10): e1008431. 
> [doi.org/10.1371/journal.pgen.1008431][plosgen-paper]

## License

Copyright (c) 2016-2019, Michael Turchin and Matthew Stephens.

All source code and software in this repository are made available
under the terms of the [MIT license][mit-license]. See
file [LICENSE](LICENSE) for the full text of the license.

## Quick Start

To install `bmass` from [CRAN](https://cran.r-project.org/web/packages/bmass/index.html):

```{r}
install.packages("bmass")
```

To install the most recent dev version of `bmass` from [github](https://github.com/mturchin20/bmass):
```{r}
install.packages("devtools")
devtools::install_github("mturchin20/bmass@v1.0.3", build_vignettes=TRUE)
```

Once you have installed the package, load the package in R:

```{r}
library("bmass")
```

Next, view and run the example code provided in the first 
[introductory vignette][bmass-vignette1] using simulated data. 
A second, more advanced [introductory vignette][bmass-vignette2]
is also available that involves downloading, processing, and
analyzing the [GlobalLipids 2013][globallipids2013] data.

## Credits

The `bmass` R package was developed by [Michael Turchin][michaelt] at
the [University of Chicago][uchicago], with contributions from
[Peter Carbonetto][peter] and [Matthew Stephens][matthew], and based
on the R code provided in [Stephens 2013 PLoS ONE][stephens2013].

[bmass-website]: http://mturchin20.github.io/bmass/ 
[bmass-vignette1]: http://mturchin20.github.io/bmass/articles/bmassIntro.1.SimulatedData.html
[bmass-vignette2]: http://mturchin20.github.io/bmass/articles/bmassIntro.2.RealData.html
[biorxiv-paper]: https://www.biorxiv.org/content/10.1101/638882v1
[globallipids2013]: http://csg.sph.umich.edu/willer/public/lipids2013/ 
[issues]: https://github.com/mturchin20/bmass/issues
[matthew]: http://stephenslab.uchicago.edu
[michaelt]: http://home.uchicago.edu/mturchin20/index.html 
[mit-license]: https://opensource.org/licenses/mit-license.html
[peter]: https://pcarbo.github.io
[plosgen-paper]: https://doi.org/10.1371/journal.pgen.1008431
[stephens2013]: https://doi.org/10.1371/journal.pone.0065245
[uchicago]: https://www.uchicago.edu
