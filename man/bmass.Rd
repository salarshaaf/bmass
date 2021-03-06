% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bmass.R
\name{bmass}
\alias{bmass}
\title{Bayesian multivariate analysis of summary statistics 
(\code{bmass})}
\usage{
bmass(DataSources, GWASsnps = NULL,
  SNPMarginalUnivariateThreshold = 1e-06,
  SNPMarginalMultivariateThreshold = 1e-06, GWASThreshFlag = TRUE,
  GWASThreshValue = 5e-08, NminThreshold = 0,
  PrintMergedData = FALSE, PrintProgress = FALSE, ...)
}
\arguments{
\item{DataSources}{A string indicating the variable names of the
input datafiles and phenotypes. No default value.}

\item{GWASsnps}{A data.table containing rows of SNPs that were
univariate genome-wide significant in the phenotypes being used for
analysis; \code{GWASsnps} input file should have two columns, one 
for chromosome and another for basepair position (with column headers
of \code{Chr} and \code{BP}). No default value.}

\item{SNPMarginalUnivariateThreshold}{A numerical value indicating
the univariate p-value threshold to use when collecting marginally
significant SNPs for final \code{bmass} analysis. Default is 
\code{1e-6}.}

\item{SNPMarginalMultivariateThreshold}{A numerical value
indicating the basic multivariate p-value threshold to use when
collecting marginally significant SNPs for final \code{bmass} 
analysis. Default is \code{1e-6}.}

\item{GWASThreshFlag}{A logical \code{TRUE}/\code{FALSE} flag that 
indicates whether to threshold input \code{GWASsnps} list by a 
univariate GWAS p-value or not (eg the input \code{GWASsnps} list 
contains variants that are significant from discovery + replication 
data, but the input summary statistics are just from the discovery 
cohort). Default is \code{TRUE}.}

\item{GWASThreshValue}{A numerical value indicating the univariate
p-value threshold to use in conjunction with the \code{GWASThreshFlag}.
Default is \code{5e-8}.}

\item{NminThreshold}{A numerical value that indicates a sample size
threshold to use where SNPs below which are removed. Default is
\code{0}.}

\item{PrintMergedData}{A logical \code{TRUE}/\code{FALSE} flag that 
indicates whether the intermediary 'merged datafile' should be included 
in the final \code{bmass} output; this file combines all the phenotypes 
for every SNP provided just prior to thresholding for marginally
significant SNPs. Default is \code{FALSE}.}

\item{PrintProgress}{A logical \code{TRUE}/\code{FALSE} flag that 
indicates whether progress statements should be printed to 
\code{stderr} during the course of running \code{bmass} or not.
Default is \code{FALSE}.}

\item{...}{Additional optional arguments.}
}
\value{
A list containing model, SNP, and posterior information for
both the previously significant univariate SNPs (\code{PreviousSNPs})
and the newly significant multivariate SNPs (\code{NewSNPs}). For a 
full breakdown of the \code{bmass} output list structure, please see 
the associated vignettes.
}
\description{
Run \code{bmass} on a set of phenotypes that each have
univariate GWAS statistics on the same set of SNPs
}
\section{Other Examples}{

\code{bmass(c("HDL","LDL","TG","TC"), GWASsnps, NminThreshold = 50000)}
\code{bmass(c("HDL","LDL","TG","TC"), GWASsnps, GWASThreshValue = 1e-8,
  NminThreshold = 50000, PrintProgress = TRUE)} 
\code{bmass(c("HDL", "LDL", "TG", "TC"), GWASsnps, GWASThreshFlag = FALSE,
  SNPMarginalUnivariateThreshold = 1e-4,
  SNPMarginalMultivariateThreshold = 1e-4,
  PrintMergedData = TRUE)} 
\code{bmassOutput <- bmass(c("HDL","LDL","TG","TC"),
  GWASsnps, NminThreshold = 50000)}
}

\examples{
Phenotypes <- c("bmass_SimulatedData1", "bmass_SimulatedData2")
bmassOutput <- bmass(Phenotypes, bmass_SimulatedSigSNPs)
summary(bmassOutput)
bmassOutput$NewSNPs$SNPs

}
