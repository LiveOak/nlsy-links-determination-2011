library(RODBC)
rm(list=ls(all=TRUE))
pathCsv <- "F:/Projects/Nls/Links2011/Extracts/Gen1Outcomes.csv"
ds <- read.csv(pathCsv, header=TRUE)

#A DSN must be defined for this to work.  In a 64-bit OS, it can be tricky: http://support.microsoft.com/kb/942976
odbcCloseAll()
channel <- RODBC::odbcDriverConnect("driver={SQL Server}; Server=Bee\\Bass; Database=NlsLinks; Uid=NlsyReadWrite; Pwd=nophi")
odbcGetInfo(channel)
keepExistingTable <- FALSE
sqlSave(channel, dat=ds, tablename="Extract.tblGen1Outcomes", safer=keepExistingTable, rownames=FALSE, append=FALSE)
odbcClose(channel)
#Don't forget to make Gen1ID the primary key in the table.