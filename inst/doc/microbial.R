## ----install, eval = FALSE----------------------------------------------------
#  library(devtools) # Load the devtools package
#  install_github("guokai8/microbial") # Install the package

## ----download, eval=FALSE-----------------------------------------------------
#  preRef(ref_db = "silva", path=".")

## ----processSeq, eval=FALSE---------------------------------------------------
#  ?processSeq

## ----quick, message=FALSE-----------------------------------------------------
library(microbial)
data("Physeq")
#default normalize method is relative
phy <- normalize(physeq, method = "relative")

## ----plotbar, message=FALSE---------------------------------------------------
plotbar(phy,level="Phylum")
#or among two group
# plotbar(phy,level="Phylum", group="group")


## ----alpha, message = FALSE---------------------------------------------------
plotalpha(physeq, group = "group")

## ----plotbeta, message = FALSE------------------------------------------------
plotbeta(phy, group="SampleType")

## ----betatest, message = FALSE,eval=FALSE-------------------------------------
#  beta <-betatest(phy,group="SampleType")

## ----difftest, message = FALSE,eval=FALSE-------------------------------------
#  res <- difftest(physeq,group="group")

## ----plotdiff, message = FALSE,eval=FALSE-------------------------------------
#  plotdiff(res,level="Genus",padj=0.001,log2FC = 7,fontsize.y = 3)
#  

## ----biomarker,message=FALSE,eval=FALSE---------------------------------------
#  res <- biomarker(physeq,group="group",ntree = 100)

## ----plotmarker,message = FALSE,eval=FALSE------------------------------------
#  plotmarker(res,level="Genus")

## ----lda, message=FALSE,eval=FALSE--------------------------------------------
#  res <- ldamarker(physeq,group="group")

## ----plotlda, message = FALSE,eval=FALSE--------------------------------------
#  plotLDA(res,group=c("A","B"),lda=5,pvalue=0.05)

