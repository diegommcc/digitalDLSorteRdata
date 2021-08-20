################################################################################
###################### trainDigitalDLSorterModel function ######################
################################################################################
if (!requireNamespace("digitalDLSorteR", quietly = TRUE)) {
  stop("digitalLDSorteR package is needed to check these functions")
}

library("digitalDLSorteR")
# loading data
data("DDLSLi.list")
data("DDLSLiComp.list")
data("breast.chung.generic")
data("breast.chung.specific")

test_that(
  "Check behaviour", 
  {
    # DigitalDLSorterDNN
    expect_s4_class(
      listToDDLSDNN(breast.chung.generic), "DigitalDLSorterDNN"
    )
    expect_s4_class(
      listToDDLSDNN(breast.chung.specific), "DigitalDLSorterDNN"
    )
    # DigitalDLSorter
    expect_s4_class(listToDDLS(DDLSLi.list), "DigitalDLSorter")
    expect_s4_class(listToDDLS(DDLSLiComp.list), "DigitalDLSorter")
  }
)
