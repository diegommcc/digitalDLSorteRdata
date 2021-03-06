% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ddlsObjExamples.R
\docType{data}
\name{DDLSLi.list}
\alias{DDLSLi.list}
\title{\code{DigitalDLSorter}-like list with Li et al. 2017 data set}
\format{
An object of class \code{list} of length 10.
}
\source{
\url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE75688}
}
\usage{
DDLSLi.list
}
\description{
\code{DigitalDLSorter}-like list containing single-cell RNA-seq data from Li
at al., 2017 consisted of 11 samples from patients with colorectal cancer in
different stages and grades and different gender. It contains a reduced
version of the original \code{ZinbParams} object in \code{zinb.params} slot.
Data is stored as a \code{SingleCellExperiment} object with counts in
\code{assay} slot, cells metadata in \code{colData} slot and genes metadata
in \code{rowData} slot.
}
\details{
For more information about the data set, please see Torroja and Sanchez-Cabo,
2019 and Li et al., 2017
}
\references{
Li, H., Courtois, E. T., Sengupta, D., Tan, Y., Chen, K. H., Goh,
J. J. L., et al. (2017). Reference component analysis of single-cell
transcriptomes elucidates cellular heterogeneity in human colorectal
tumors. Nat. Genet. 49 (5), 708–718. doi: \doi{10.1038/ng.3818}.

Torroja, C. and Sánchez-Cabo, F. (2019). digitalDLSorter: A Deep Learning
algorithm to quantify immune cell populations based on scRNA-Seq data.
Frontiers in Genetics 10, 978. doi: \doi{10.3389/fgene.2019.00978}.
}
\keyword{datasets}
