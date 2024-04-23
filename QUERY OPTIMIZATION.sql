# 1.) How many staff do we have in the company? 
USE COMPANY_ltd;

SELECT COUNT(*)
FROM stafftable;

SELECT count(distinct MATRICULENO)AS NUMBER_OF_STAFF
FROM STAFFTABLE;