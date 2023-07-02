-- 1. Show all columns and rows in the table. 
SELECT * FROM salaries;

-- 2. Show only the EmployeeName and JobTitle columns. 
SELECT EmployeeName, JobTitle FROM salaries;

-- 3. Show the number of employees in the table. 
SELECT COUNT(EmployeeNAME) as "number_employees" FROM salaries;

-- 4. Show the unique job titles in the table. 
SELECT DISTINCT JobTitle FROM salaries;

-- 5. Show the job title and overtime pay for all employees with overtime pay greater than 70000. 
SELECT JobTitle, OvertimePay FROM salaries 
WHERE OvertimePay > 70000
ORDER BY OvertimePay desc;

-- 6. Show the average base pay for all employees. 
SELECT Round(AVG(BasePay),2) AS "Average BasePay" FROM salaries;

-- 7. Show the ten highest paid employees. 
SELECT EmployeeName, TotalPay FROM salaries
ORDER BY TotalPay DESC 
LIMIT 10;

-- 8. Show the average of BasePay, OvertimePay, and OtherPay for each employees. 
SELECT EmployeeName, round((BasePay + OvertimePay + OtherPay) / 3, 2) as "Average - Base, OT, Other Pay" FROM salaries;

-- 9. Show all employees who have the word "manager" in their title. 
SELECT EmployeeName, JobTitle FROM salaries
WHERE JobTitle LIKE '%Manager%';

-- 10. Show all employees who are not managers. 
SELECT EmployeeName, JobTitle FROM salaries 
WHERE JobTitle != 'Manager';

-- 11. Show all employees with a TotalPay between 80,000 and 100,000. 
SELECT EmployeeName, TotalPay FROM salaries
WHERE TotalPay BETWEEN 80000 AND 100000;

-- 12. Show all employees with a base pay lower than 50,000 or a total pay greater than 150,000. 
SELECT EmployeeName, BasePay, TotalPay FROM salaries
WHERE BasePay < 50000 OR TotalPay > 150000;

-- 13. Show all employees with a TotalPay of between 100,000 and 150,000 who have the word "Director" in their JobTitle. 
SELECT EmployeeName, JobTitle, TotalPay FROM salaries
WHERE TotalPay BETWEEN 100000 AND 150000 
AND JobTitle LIKE '%director%';

-- 14. Show all employees ordered by their total pay benefits in descending order. 
SELECT EmployeeName, TotalPayBenefits FROM salaries
ORDER BY TotalPayBenefits DESC;

-- 15. Show all job titles with an average base pay at least 100,000 and order them by average base pay in descending order. 
SELECT JobTitle, AVG(BasePay) as "AvgBasePay" FROM salaries
GROUP BY JobTitle
HAVING avg(BasePay) >=100000
ORDER BY AvgBasePay DESC;

-- 16. Delete the notes column. 
SELECT * FROM salaries;
ALTER TABLE salaries
DROP COLUMN notes;
SELECT * FROM salaries;

-- 17. Increase the base pay of all employees with job titles containing "manager" by 10%. 
UPDATE salaries
SET BasePay = BasePay * 1.1
WHERE JobTitle LIKE '%Manager%';
SELECT * FROM salaries; 

-- 18. Delete all employees who have no overtime pay. 
SELECT COUNT(*) FROM salaries
WHERE OvertimePay = 0;
DELETE FROM salaries
WHERE OvertimePay = 0;



