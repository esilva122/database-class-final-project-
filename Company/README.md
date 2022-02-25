 # Company Schema
 This Folder contains the schema for a simplified company HR system
 # Commands
 You can run the query either
 ## Interactively
 ```bash
 psql -h localhost -p 5432 -U mhassanin -d schools
```
 or 
 ## File
1. To create the schema
```bash
 psql -h localhost -p 5432 -U mhassanin -d schools -f ./Company/up.sql
```
2. To drop the schema
```bash
 psql -h localhost -p 5432 -U mhassanin -d schools -f ./Company/down.sql
```
# Online interactive sql fiddler
You can run the examples in this section also by running [SQL Fiddle](http://sqlfiddle.com/)
