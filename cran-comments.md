## Test environments
* local Ubuntu 20.04, R 4.1.0
* local macOS BigSur, R 4.1.0
* win-builder (devel and release)

## R CMD check results
There were no ERRORs or WARNINGs.

There were 1 NOTE:

* checking installed package size ... NOTE
  installed size is 128.0Mb
  sub-directories of 1Mb or more:
    data  127.9Mb

  This is a data package created to avoid exceeding the size limit in 
  digitalDLSorteR, the software package to which it is linked. Since 
  digitalDLSorteR can be used without the data hosted in this package, 
  digitalDLSorteRdata was created.

## Downstream dependencies
I have also run R CMD check on downstream dependencies of httr 
(https://github.com/wch/checkresults/blob/master/httr/r-release). 
All packages that I could install passed except:

* Ecoengine: this appears to be a failure related to config on 
  that machine. I couldn't reproduce it locally, and it doesn't 
  seem to be related to changes in httr (the same problem exists 
  with httr 0.4).
