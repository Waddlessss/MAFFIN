% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QuantileNorm.R
\name{QuantileNorm}
\alias{QuantileNorm}
\title{Quantile normalization.}
\usage{
QuantileNorm(
  FeatureTable,
  IntThreshold = 0,
  SampleInCol = TRUE,
  output = FALSE,
  OutputNormFactors = FALSE,
  RunEvaluation = TRUE
)
}
\arguments{
\item{FeatureTable}{Data frame with features in row and samples in column (default).}

\item{IntThreshold}{A numeric value indicating the feature intensity threshold. Feature is detected when its intensity larger than this value.}

\item{SampleInCol}{\code{TRUE} if samples are in column. \code{FALSE} if samples are in row.}

\item{output}{\code{TRUE} will output the result table in current working directory}

\item{OutputNormFactors}{\code{TRUE} will print the normalization factors after normalization}

\item{RunEvaluation}{\code{TRUE} will evaluate the normalization results using intragroup variation.}
}
\value{
This function will return a list that contains four items if \code{RunEvaluation = TRUE}:
the normalized feature table, normalization factors, PRMAD of original data,
and PRMAD of normalized data. The last two items will not be generated if
\code{RunEvaluation = FASLE}
}
\description{
Quantile sample normalization.
}
\details{
\code{FeatureTable} contains measured or corrected signal intensities of metabolic features,
with features in row and samples in column (default). The column names should
be sample names, and the first row should be sample group names (e.g. control, case).\cr
The first column should be unique feature identifiers.
For group names, please do not use "blank", "RT", "QC", or "SQC_###" for real biological samples. \cr
An example of \code{FeatureTable} is provided as \code{TestingData} in this package.
}
\examples{
QuantileNormedTable = QuantileNorm(TestingData)
}
\references{
Yu, Huaxu, and Tao Huan. "MAFFIN: Metabolomics Sample Normalization
Using Maximal Density Fold Change with High-Quality Metabolic Features and Corrected
Signal Intensities." \emph{bioRxiv} (2021). \cr
Bolstad, Benjamin M., et al. "A comparison of normalization methods for high density
oligonucleotide array data based on variance and bias."
\emph{Bioinformatics} 19.2 (2003): 185-193.
}
