# fluEvidenceSynthesis

This repository contains the code used for flu data analysis first published in

Baguelin, Marc, Stefan Flasche, Anton Camacho, Nikolaos Demiris, Elizabeth Miller, and W. John Edmunds. ‘Assessing Optimal Target Populations for Influenza Vaccination Programmes: An Evidence Synthesis and Modelling Study’. PLoS Med 10, no. 10 (8 October 2013): e1001527. doi:10.1371/journal.pmed.1001527.

The code is distributed under a GPLv3 license. Please remember to cite the above manuscript when using this code.

## Install

### Devtools

First make sure you have the devtools package install in R by executing the following in R:

```{r}
install.packages("devtools")
```

Note that devtools relies on a fairly new R version (>=3.1.0). Devtools also relies on a number of packages and one can run into problems installing it. Please refer to their [documentation](https://github.com/hadley/devtools) when encountering problems.

### FluEvidenceSynthesis

Then use devtools to install fluEvidenceSynthesis by using the following command:

```{r}
library(devtools)
install_github("MJomaba/flu-evidence-synthesis")
```

## Documentation and examples

All functions provided by the package are documented in R, but we recommend reading the provided vignettes for a good introduction/overview of the provided capabilities. A vignette on the epidemiological model  and parameter inference can be found [here](http://blackedder.github.io/flu-evidence-synthesis/modelling.html) and [here](http://blackedder.github.io/flu-evidence-synthesis/inference.html). There is also a vignette available on analysis the effects of different [vaccination scenarios](http://blackedder.github.io/flu-evidence-synthesis/vaccination.html).

To view them in R use:

```{r}
# To list the included vignettes:
vignette(package="fluEvidenceSynthesis")

# To open the inference vignette:
vignette("inference",package="fluEvidenceSynthesis")
```

There is also a presentation available with some more details on the package [here](http://blackedder.github.io/flu-evidence-synthesis/RCoursePackage.html).
