# How to match the iDigBio Search Bar

Using ridigbio, I wanted to match a simple search from the [iDigBio web-portal](https://www.idigbio.org/portal/search). This sounds simple, right?  

Though this code may not look "long-winded", it took me a long time to find the right fields to search. 

```
library(ridigbio)

search <- ridigbio::idig_search_records(rq = list("data" =  list("type" = "fulltext","value" = "Galax urceolata")))
```

As of August 2021, this returned the same specimen as searching on the web-portal! 
