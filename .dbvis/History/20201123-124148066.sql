USE master;  
GO  
IF DB_ID ('bamboo711ms') IS NOT NULL  
DROP DATABASE MyOptionsTest;  
GO  
CREATE DATABASE bamboo711ms  
COLLATE Latin1_General_CS_AS;  
GO  