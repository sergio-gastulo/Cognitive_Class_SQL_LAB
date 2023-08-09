-- exercises developed from labs on cognitivie class

-- Retrieve all employees whose address is in Elgin,IL.
SELECT * FROM EMPLOYEES 
WHERE ADDRESS LIKE '%Elgin,IL%';

-- Retrieve all employees who were born during the 1970’s.
-- Observation: i had troubles changing the datatype of B_DATE, so 
-- it's just varchar, thus i couldn't take the function YEAR
-- as i'm only working with 70's and 80's, its relatively easy to query manually
SELECT * FROM EMPLOYEES WHERE B_DATE LIKE '%197%';

--Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT * FROM EMPLOYEES 
WHERE DEP_ID = 5 
AND SALARY BETWEEN 60000 AND 70000;

-- Retrieve a list of employees ordered by department ID.
SELECT * FROM EMPLOYEES ORDER BY DEP_ID DESC;

--Retrieve a list of employees ordered in descending order by department ID 
-- and within each department ordered alphabetically in descending order by last name.
SELECT * FROM EMPLOYEES ORDER BY DEP_ID  DESC, L_NAME DESC;

--In SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. 
--Retrieve a list of employees ordered by department name, 
--and within each department ordered alphabetically in descending order by last name.
SELECT EMP.F_NAME, EMP.L_NAME FROM EMPLOYEES AS EMP, DEPARTMENTS AS DEP
WHERE EMP.DEP_ID = DEP.DEPT_ID_DEP
ORDER BY DEP.DEP_NAME, L_NAME DESC;

--For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, COUNT(*) FROM EMPLOYEES
GROUP BY DEP_ID;

--For each department retrieve the number of employees in the department, 
--and the average employee salary in the department.
SELECT DEP_ID, COUNT(*), AVG(SALARY) FROM EMPLOYEES
GROUP BY DEP_ID;

--In SQL problem 3 (Exercise 3 Problem 3), order the result set by Average Salary.
SELECT DEP_ID, COUNT(*), AVG(SALARY) FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG(SALARY);

--In SQL problem 4 (Exercise 3 Problem 4), 
--limit the result to departments with fewer than 4 employees.
SELECT DEP_ID, COUNT(*), AVG(SALARY) FROM EMPLOYEES
GROUP BY DEP_ID HAVING COUNT(*)<4
ORDER BY AVG(SALARY);



