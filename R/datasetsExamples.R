#' Breast cancer bulk RNA-Seq samples from TCGA Research Network
#'
#' Subset of breast cancer bulk RNA-Seq samples from TCGA Research Network.
#' FPKMs were transformed to TPMs and aggregated based on SYMBOL genes.
#'
#' @source \url{https://www.cancer.gov/about-nci/organization/ccg/research/structural-genomics/tcga}
#'
#' @references Koboldt, D. C., Fulton, R. S., McLellan, M. D., Schmidt, H.,
#'   Kalicki-Veizer, J., McMichael, J. F., et al. (2012). Comprehensive
#'   molecular portraits of human breast tumours. Nature 490 (7418), 61–70. doi:
#'   10.1038/nature11412
#'
#'   Ciriello, G., Gatza, M. L., Beck, A. H., Wilkerson, M. D., Rhie, S. K.,
#'   Pastore, A., et al. (2015). Comprehensive molecular portraits of invasive
#'   lobular breast cancer. Cell. 163 (2), 506–519. doi:
#'   10.1016/j.cell.2015.09.033
#'
#'   Torroja, C. and Sánchez-Cabo, F. (2019). digitalDLSorter: A Deep Learning
#'   algorithm to quantify immune cell populations based on scRNA-Seq data.
#'   Frontiers in Genetics 10, 978. doi: \doi{10.3389/fgene.2019.00978}
#'
"TCGA.breast.small"

#' Colorectal cancer bulk RNA-Seq samples from TCGA Research Network
#'
#' Colorectal cancer bulk RNA-Seq samples from TCGA Research Network. These data
#' is provided as raw counts.
#'
#' @source \url{https://www.cancer.gov/about-nci/organization/ccg/research/structural-genomics/tcga}
#'
#' @references Koboldt, D. C., Fulton, R. S., McLellan, M. D., Schmidt, H.,
#'   Kalicki-Veizer, J., McMichael, J. F., et al. (2012). Comprehensive
#'   molecular portraits of human breast tumours. Nature 490 (7418), 61–70. doi:
#'   10.1038/nature11412
#'
#'   Ciriello, G., Gatza, M. L., Beck, A. H., Wilkerson, M. D., Rhie, S. K.,
#'   Pastore, A., et al. (2015). Comprehensive molecular portraits of invasive
#'   lobular breast cancer. Cell. 163 (2), 506–519. doi:
#'   10.1016/j.cell.2015.09.033
#'
#'   Torroja, C. and Sánchez-Cabo, F. (2019). digitalDLSorter: A Deep Learning
#'   algorithm to quantify immune cell populations based on scRNA-Seq data.
#'   Frontiers in Genetics 10, 978. doi: \doi{10.3389/fgene.2019.00978}
#'
"TCGA.colon.se"


#' Colorectal cancer single-cell RNA-seq dataset from Lee, Hong, 
#' Etlioglu Cho et al., 2020  
#'
#' \code{SingleCellExperiment} object containing single-cell RNA-seq data from 
#' colorectal cancer samples from the Lee, Hong, Etlioglu Cho et al., 2020 
#' study (GSE132465, GSE132257 and GSE144735).The raw count matrix only contains
#' information for the 2,000 genes selected to build the \code{DDLS.colon.lee} 
#' pre-trained model from the \code{digitalDLSorteRmodels} R package. 
#'
#' @source \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE75688}
#'   \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE132257}
#'   \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE144735}
#'
#' @references Lee HO, Hong Y, Etlioglu HE, Cho YB, Pomella V, Van den Bosch B, 
#'   Vanhecke J, Verbandt S, Hong H, Min JW, Kim N, Eum HH, Qian J, Boeckx B, 
#'   Lambrechts D, Tsantoulis P, De Hertogh G, Chung W, Lee T, An M, Shin HT, 
#'   Joung JG, Jung MH, Ko G, Wirapati P, Kim SH, Kim HC, Yun SH, Tan IBH, 
#'   Ranjan B, Lee WY, Kim TY, Choi JK, Kim YJ, Prabhakar S, Tejpar S, Park WY. 
#'   Lineage-dependent gene expression programs influence the immune landscape 
#'   of colorectal cancer. Nat Genet. 2020 Jun;52(6):594-603. 
#'   doi: \doi{10.1038/s41588-020-0636-z}.
#'
"SCE.colon.Lee"
