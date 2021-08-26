#' \code{DigitalDLSorter}-like list with Chung et al. 2017 data set
#'
#' \code{DigitalDLSorter}-like list containing the
#' original data set used to generate \code{breast.chung.generic} and
#' \code{breast.chung.specific} models in order to show some examples in
#' vignette and documentation. It contains a reduced version of the original
#' \code{ZinbParams} object in \code{zinb.params} slot. Data is stored as a
#' \code{SingleCellExperiment} object with counts in \code{assay} slot, cells
#' metadata in \code{colData} slot and genes metadata in \code{rowData} slot.
#'
#' For more information about the data set and the models, see
#' \code{breast.chung.generic} or \code{breast.chung.specific}.
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE75688}
#'
#' @references Chung, W., Eum, H. H., Lee, H. O., Lee, K. M., Lee, H. B., Kim,
#'   K. T., et al. (2017). Single-cell RNA-seq enables comprehensive tumour and
#'   immune cell profiling in primary breast cancer. Nat. Commun. 8 (1), 15081.
#'   doi: \doi{10.1038/ncomms15081}.
#'
#'   Torroja, C. and Sánchez-Cabo, F. (2019). digitalDLSorter: A Deep Learning
#'   algorithm to quantify immune cell populations based on scRNA-Seq data.
#'   Frontiers in Genetics 10, 978. doi: \doi{10.3389/fgene.2019.00978}.
#'
"DDLSChung.list"

#' \code{DigitalDLSorter}-like list with Li et al. 2017 data set
#'
#' \code{DigitalDLSorter}-like list containing single-cell RNA-seq data from Li
#' at al., 2017 consisted of 11 samples from patients with colorectal cancer in
#' different stages and grades and different gender. It contains a reduced
#' version of the original \code{ZinbParams} object in \code{zinb.params} slot.
#' Data is stored as a \code{SingleCellExperiment} object with counts in
#' \code{assay} slot, cells metadata in \code{colData} slot and genes metadata
#' in \code{rowData} slot.
#'
#' For more information about the data set, please see Torroja and Sanchez-Cabo,
#' 2019 and Li et al., 2017
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE75688}
#'
#' @references Li, H., Courtois, E. T., Sengupta, D., Tan, Y., Chen, K. H., Goh,
#'   J. J. L., et al. (2017). Reference component analysis of single-cell
#'   transcriptomes elucidates cellular heterogeneity in human colorectal
#'   tumors. Nat. Genet. 49 (5), 708–718. doi: \doi{10.1038/ng.3818}.
#'
#'   Torroja, C. and Sánchez-Cabo, F. (2019). digitalDLSorter: A Deep Learning
#'   algorithm to quantify immune cell populations based on scRNA-Seq data.
#'   Frontiers in Genetics 10, 978. doi: \doi{10.3389/fgene.2019.00978}.
#'   
"DDLSLi.list"

#' \code{DigitalDLSorter}-like list with Li et al. 2017 data set (trained
#' version)
#'
#' \code{DigitalDLSorter}-like list containing a trained model using
#' single-cell RNA-Seq data from Li at al., 2017. It consists of 11 samples from
#' patients with colorectal cancer in different stages and grades, and different
#' gender. It contains only the DDLS model in order to provide realistic results
#' in vignettes.
#'
#' For more information about the data set, please see Torroja and Sanchez-Cabo,
#' 2019 and Li et al., 2017
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE75688}
#'
#' @references Li, H., Courtois, E. T., Sengupta, D., Tan, Y., Chen, K. H., Goh,
#'   J. J. L., et al. (2017). Reference component analysis of single-cell
#'   transcriptomes elucidates cellular heterogeneity in human colorectal
#'   tumors. Nat. Genet. 49 (5), 708–718. doi: \doi{10.1038/ng.3818}
#'
#'   Torroja, C. and Sánchez-Cabo, F. (2019). digitalDLSorter: A Deep Learning
#'   algorithm to quantify immune cell populations based on scRNA-Seq data.
#'   Frontiers in Genetics 10, 978. doi: \doi{10.3389/fgene.2019.00978}
#'   
"DDLSLiComp.list"
