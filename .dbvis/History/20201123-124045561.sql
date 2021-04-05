select name, collation_name
from sys.databases


USE master;  
GO  
IF DB_ID (N'bamboo711ms') IS NOT NULL  
DROP DATABASE MyOptionsTest;  
GO  
CREATE DATABASE bamboo711ms  
COLLATE Latin1_General_CS_AS;  
GO  