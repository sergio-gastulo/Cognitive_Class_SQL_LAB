--OBS: Dep_name Architec Group was not included in the CSV file, so some 
-- answers to the problems might be a little different...

--Select the names, job start dates, and job titles 
--of all employees who work for the department number 5.
SELECT E.F_NAME, E.L_NAME, JH.START_DATE, J.JOB_TITLE
FROM EMPLOYEES AS E
INNER JOIN JOB_HISTORY AS JH ON JH.EMPL_ID = E.EMP_ID
INNER JOIN JOBS AS J ON J.JOB_IDENT = E.JOB_ID
WHERE DEP_ID = '5';

--Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables 
-- and select employee id, last name, department id and department name for all employees.
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
FROM EMPLOYEES AS E 
LEFT OUTER JOIN DEPARTMENTS AS D ON D.DEPT_ID_DEP = E.DEP_ID;

--Re-write the previous query but limit the result set to 
--include only the rows for employees born before 1980.
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
FROM EMPLOYEES AS E 
LEFT OUTER JOIN DEPARTMENTS AS D ON D.DEPT_ID_DEP = E.DEP_ID
WHERE E.B_DATE LIKE '%197%';

--Re-write the previous query but have the result set include all the employees but department names 
--for only the employees who were born before 1980.
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
FROM EMPLOYEES AS E 
LEFT OUTER JOIN DEPARTMENTS AS D ON D.DEPT_ID_DEP = E.DEP_ID AND E.B_DATE LIKE '%197%';

--Perform a Full Join on the EMPLOYEES and DEPARTMENT tables 
--and select the First name, Last name and Department name of all employees.
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME
FROM EMPLOYEES AS E
FULL JOIN DEPARTMENTS AS D ON D.DEPT_ID_DEP = E.DEP_ID;

--Re-write the previous query but have the result set include all employee 
--names but department id and department names only for male employees.
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME
FROM EMPLOYEES AS E
FULL JOIN DEPARTMENTS AS D ON D.DEPT_ID_DEP = E.DEP_ID AND E.SEX= 'M';

