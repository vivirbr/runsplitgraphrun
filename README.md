# runsplitgraphrun
____
## Installing dependencies

To run splitgraph in your computer you will need some packages that are ideally installed automatically in your computer after installing `runsplitgraphrun`, 
However, you may have some problems loading packages like `rJava`. In this case, make sure that you have `rJava` before starting this process. 

check this [link](https://cimentadaj.github.io/blog/2018-05-25-installing-rjava-on-windows-10/installing-rjava-on-windows-10/) if you need a help with this

When installing the package, R will ask you for updating or installing a bunch of packages, you can skip this process if you have: `DBI` and `RJDBC` already installed.
You can always install these packages in the same way you installed `rJava`:

```R
install.packages('rJava')
install.packages('DBI')
install.packages('RJDBC')
``` 
___
## Getting your credentials

Don't forget to Sign in and access [Splitgraph](https://www.splitgraph.com/connect) to get your credentials Username/Password

___
## Now that you have everything let's install this handy package and do your first query

```R
library(devtools) # to use install_github
library(rJava)

install_github('vivirbr/runsplitgraphrun')
library(runsplitgraphrun)

library(DBI)
library(RJDBC)
download_postgresql() # this step downloads the postgresql directly to you R folder
add_credentials(user='YOUR_USER_FROM_SPLITGRAPH',password='YOUR_PASSWORD_FROM_SPLITGRAPH')
conn<-connect() # creating your connection and voilà, you are good to go
dbGetQuery(conn,'SELECT * FROM "trase/supply-chains"."supply-chains" LIMIT 10') # your first query
```
