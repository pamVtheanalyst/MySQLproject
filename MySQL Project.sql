USE company_ltd;
#1.) How many staff do we have in the company? 

SELECT *
FROM company_ltd.stafftable

/*SELECT count(distinct MatriculeNo) AS Number_Of_Staff
FROM stafftable*/

#2.) How many staff are younger than 30 years?
/*SELECT count(*) AS Staff_Below_30
FROM stafftable
WHERE Age < 30*/

/*SELECT count(distinct MatriculeNo) AS Staff_Below_30
From stafftable
where Age < 30*/

#3.) How many staff are between 30 and 25 years?

/*SELECT count( MatriculeNo)AS Staff_Number
FROM stafftable
WHERE AGE <30 AND AGE > 25;*/

#4.) Select all the female staff and sort their age in descending order (from the oldest to the youngest)
/*SELECT *
FROM Stafftable
where StaffSex = "Female"
order by Age Desc;*/

#5.) What is the Average age of Peter and Nina?
/*SELECT AVG(Age) as Average_Age
FROM Stafftable
Where StaffName = "Nina" OR StaffName = "Peter";*/

#Customertable questions

#1.) How many customers do we have?
/*SELECT COUNT(CustomerCode) As Cutomer_count
FROM Customertable*/

#2.) How many customers are from Cameroon?
/*SELECT COUNT(CustomerCode)as Customer_count_by_Country
From CustomerTable
Where CustomerCountry = "Cameroon"*/

#) How many customers are from Cameroon and are Males?
/*LECT COUNT(CustomerCode) as Customer_Count_by_Country
FROM CustomerTable
WHERE CustomerCountry ="Cameroon" 
AND CustomerSex ="Male"*/

#.) What are the First names and Last names of customers who come from Togo and USA?

/*SELECT CustomerFirstName ,CustomerLastName
FROM Customertable
WHERE CustomerCountry 
IN ("Togo","USA);*/

#5.) Show the first 5 oldest customers and arrange the list in decreasing order of Age (Oldest to youngest)
/*SELECT CustomerFirstName,CustomerLastName,Age
FROM Customertable
ORDER BY Age DESC
LIMIT 5 ; */

# 6.) What is the average age of customers per country? 
/*SELECT AVG(AGE)AS Average_age
FROM CustomerTable
GROUP BY CustomerCountry
ORDER BY CustomerCountry*/

#JOINING TABLES

# 1.) What is the total profit we made?
/*SELECT SUM(Profit) as Total_Profit
FROM Salestable*/

# 2.) What is the total cost we incurred for these 03 countries "Cameroon","USA","Togo"?
/*SELECT CustomerCountry, SUM(Cost) as Total_Cost
FROM Salestable
JOIN Customertable
	ON Customertable.Customercode = Salestable.Customercode
   GROUP BY CustomerCountry
   ORDER BY Total_Cost DESC*/
   
   # 3.) What is the total profit we made per country?
  /*ELECT CustomerCountry, SUM(Profit)as Total_Profit
   FROM Salestable
   JOIN Customertable
   ON Salestable.Customercode = Customertable.Customercode
  GROUP BY CustomerCountry
  ORDER BY CustomerCountry*/
  
  # 4.) What is the average profit we made per country?
   /*SELECT CustomerCountry, AVG(Profit)as Average_Profit
   FROM Salestable
   JOIN Customertable
   ON Salestable.Customercode = Customertable.Customercode
  GROUP BY CustomerCountry
  ORDER BY CustomerCountry*/

# 5.) What is the total revenue per Staff?
/*SELECT StaffName, SUM(Revenue) as Total_Revenue
FROM Salestable
JOIN Stafftable 
 ON Salestable.StaffCode = stafftable.MatriculeNo
 GROUP BY StaffName
 ORDER BY StaffName*/
 
 # 6.) Which countries made more than 100 sales transactions? Sort them in decreasing order (from biggest to smallest)
/*SELECT CustomerCountry, COUNT(UnitsSold) as Sales
From salestable
JOIN Customertable
ON Customertable.Customercode = salestable.Customercode
GROUP BY Customercountry
HAVING Sales> 100
ORDER BY Sales DESC;*/

# 7.) What is the total profit made per country by the following staff "Emelda","Anita","Cynthia"?
/*SELECT StaffName,CustomerCountry, SUM(Profit)as Total_Profit
FROM Salestable
LEFT JOIN customertable
ON salestable.CustomerCode = customertable.CustomerCode
LEFT JOIN stafftable
ON salestable.StaffCode = stafftable.MatriculeNo
WHERE StaffName IN ("Emelda","Anita","Cynthia")
GROUP BY StaffName,Customercountry
ORDER BY CustomerCountry; */
















