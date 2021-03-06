% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cost_effectiveness.R
\name{public_health_outcome}
\alias{public_health_outcome}
\title{Calculate the number of public health relevant cases (e.g. mortality, hospitalisations) 
from incidence data}
\usage{
public_health_outcome(proportion, incidence, no_risk_groups = NULL,
  no_age_groups = NULL)
}
\arguments{
\item{proportion}{The expected proportion of cases resulting in hospitalisations. 
This can be a constant value for each age/risk groups, or a vector with the proportion for each age/risk group. Finally if
either no_risk_groups or no_age_groups is specified it can also be a vector with the proportion by risk groups or by age group.
Finally it can also be a list with different proportions for different outcomes, e.g. \code{list("hospitalisation" = c(0.01, 0.001), "mortality" = 0.0001)}}

\item{incidence}{Vector containing the expected incidence for each age/risk group as returned by for example \code{\link{vaccinationScenario}}.}

\item{no_risk_groups}{The total number of risk groups (optional)}

\item{no_age_groups}{The total number of age groups (optional)}
}
\value{
A vector with the number of hospitalisations for each age/risk group
}
\description{
Uses the provided proportion to calculate the number of different cases from the incidence data. The expected
proportion of each case needs to be provided by the user and is likely to be country/disease specific.
}

