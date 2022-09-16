
-- SQL Query to fetch the list of employees with the same salary--
SELECT *
FROM Worker
WHERE SALARY IN
    (SELECT SALARY
     FROM Worker e
     WHERE Worker.WORKER_ID <> e.WORKER_ID);

	 --SQL Query to show the second highest salary from a table--

WITH RESULT AS  
(  
    SELECT SALARY,  
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK  
    FROM Worker  
)  
SELECT TOP 1 SALARY  
FROM RESULT  
WHERE DENSERANK = 2  

--SQL Query to fetch the first 50% records from a table--

select top 50 percent * from Worker;

--SQL Query to show all departments along with the number of people in there--

SELECT DEPARTMENT, COUNT(*) AS Total_Number
  FROM Worker
  GROUP BY DEPARTMENT;

--SQL Query to fetch departments along with the total salaries paid for each of them--

SELECT DEPARTMENT, SUM(SALARY) AS Total_Salary
FROM Worker 
GROUP BY DEPARTMENT;

--SQL Query to fetch the name of workers who earn the highest salary--

select FIRST_NAME
from Worker
where SALARY=(select Max(SALARY) from Worker);

-- SQL Query to show the last record from a table--

SELECT TOP 1 * 
FROM WORKER
ORDER BY WORKER_ID DESC

--SQL Query  to fetch three min salaries from a table--

SELECT DISTINCT SALARY 
FROM WORKER a 
WHERE  3 >= (SELECT COUNT(DISTINCT SALARY) 
FROM WORKER b 
WHERE b.SALARY <= a.SALARY) 
ORDER BY a.SALARY DESC;

--SQL Query to print the name of employees having the highest salary in each department--

SELECT FIRST_NAME,DEPARTMENT
FROM WORKER 
WHERE SALARY IN
    (SELECT max(SALARY)
     FROM WORKER
     GROUP BY DEPARTMENT);


