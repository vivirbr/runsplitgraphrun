# runsplitgraphrun
____
## Installing dependencies

To run splitgraph in your computer you will need some packages that are ideally installed automatically in your computer after installing `runsplitgraphrun`, 
However, you may have some problems loading packages like `rJava`. In this case, make sure that you have `rJava` before starting this process. 

check this [link](https://cimentadaj.github.io/blog/2018-05-25-installing-rjava-on-windows-10/installing-rjava-on-windows-10/) if you need a help with this

When installing the package, R will ask you for updating or installing a bunch of packages, you can skip this process if you have: `DBI` and `RJDBC` already installed.
You can always install these packages in the same way you installed `rJava`:

<code> install.packages('rJava') </code> <br>
<code> install.packages('DBI') </code> <br>
<code> install.packages('RJDBC') </code> <br>

___
## Getting your credentials

Don't forget to Sign in and access [Splitgraph](https://www.splitgraph.com/connect) to get your credentials Username/Password

___
## Now that you have everything let's install this handy package and do your first query

`library(devtools) # to use install_github`  <br>
`library(rJava)` <br>

`install_github('vivirbr/runsplitgraphrun')` <br>
`library(runsplitgraphrun)` <br>

`library(DBI)` <br>
`library(RJDBC)` <br>
`download_postgresql() # this step downloads the postgresql directly to you R folder` <br>
`prompt_credentials()` <br>
`conn<-connect() # creating your connection and voilà, you are good to go` <br>
`dbGetQuery(conn,'SELECT * FROM "trase/supply-chains"."supply-chains" LIMIT 10') # your first query` <br>
