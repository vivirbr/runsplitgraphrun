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
<b> The postgresql driver will only work if you have Java 8+ </b>

___
## Getting your credentials

Don't forget to Sign in and access [Splitgraph](https://www.splitgraph.com/connect) to get your credentials Username/Password

___
## Run Splitgraph, Run!

```R
library(devtools) # to use install_github
library(rJava)

install_github('vivirbr/runsplitgraphrun')
library(runsplitgraphrun)

library(DBI)
library(RJDBC)
download_postgresql() # this step downloads the postgresql directly to you R folder
```

#### Adding credentials - you only need to add them once
```R
add_credentials(user='YOUR_USER_FROM_SPLITGRAPH',password='YOUR_PASSWORD_FROM_SPLITGRAPH', database='PUBLIC') 
#you can also set the credentials for the PRIVATE repo
```
#### Connection and your first query
```R
conn<-connect(database='PUBLIC') # creating your connection and voilà, you are good to go 
dbGetQuery(conn,'SELECT * FROM "trase/supply-chains"."supply-chains" LIMIT 10') # your first query
```
#### In case you need to delete existing credentials you can use:
```R
keyring_delete(keyring = "SPLITGRAPH_PUBLIC") # or "SPLITGRAPH_PRIVATE"
```
