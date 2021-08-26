# How to match the iDigBio Search Bar

Using ridigbio, I wanted to match a simple search from the [iDigBio web-portal](https://www.idigbio.org/portal/search).    

For a long time, I tried to get this right, but failed! Finally, I found the answer!

```
library(ridigbio)

search <- ridigbio::idig_search_records(rq = list("data" =  list("type" = "fulltext","value" = "Galax urceolata")))
```

As of August 2021, this returned the same specimen as searching on the web-portal! 