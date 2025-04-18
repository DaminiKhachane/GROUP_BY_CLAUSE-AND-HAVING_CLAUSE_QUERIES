/*QUESTIONS ON HAVING CLAUSE*/
/*1.WAQTD DNO AND NUMBER OF EMP WORKING IN EACH 
DEPT IF THERE ARE ATLEAST 2 CLERKS IN EACH DEPT.*/
SELECT COUNT(*) AS NUMBER_OF_EMP,DEPTNO
FROM EMP
WHERE JOB='CLERK'
GROUP BY DEPTNO
HAVING COUNT(*) =2;

/*2)WAQTD DNO AND TOTAL SAALARY NEEDED TO PAY ALL 
EMP IN EACH DEPT IF THERE ARE ATLEAST 4 EMP IN EACH 
DEPT. */
SELECT SUM(SAL) AS TOTAL_SALARY,DEPTNO
FROM EMP 
GROUP BY DEPTNO
HAVING COUNT(*)>=4;

/*3) WAQTD NUMBER OF EMP EARNING MORE THAN 1200 
IN EACH JOB AND THE TOTAL SAL NEEDED TO PAY EMP OF 
EACH JOB MUST EXCEES 3800.*/
SELECT JOB, COUNT(*) AS NUMBER_OF_EMP, 
SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE SAL > 1200
GROUP BY JOB
HAVING SUM(SAL) > 3800;

/*4.WAQTD DEPTNO AND NUMBER OF EMP WORKING ONLY 
IF THERE ARE 2 EMP WORKING IN EACH DEPT AS 
MANAGER .*/
SELECT DEPTNO, COUNT(*) AS NUMBER_OF_EMP
FROM EMP
WHERE JOB ='MANAGER'
GROUP BY DEPTNO
HAVING COUNT(*) = 2;

/*5.WAQTD JOB AND MAX SAL OF EMP IN EACH JOB IF THE 
MAX SAL EXCEEDS 2600 */
SELECT MAX(SAL),JOB
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 2600;

/*6.WAQTD THE SALARIES WHICH ARE REPEATED IN EMP 
TABLE.*/
SELECT SAL,COUNT(*)
FROM EMP
GROUP BY SAL
HAVING COUNT(*)>1;

/*7.WAQTD THE HIREDATE WHICH ARE DUPLICATED IN EMP 
TABLE .*/
SELECT HIREDATE,COUNT(*)
FROM EMP
GROUP BY HIREDATE
HAVING COUNT(*)>1;

/*8.WAQTD AVG SALARY OF EACH DEPT IF AVG SAL IS LESS 
THAN 3000 */
SELECT AVG(SAL) AS AVERAGE_SALARY,DEPTNO
FROM EMP 
GROUP BY DEPTNO
HAVING AVG(SAL) < 3000;

/*9.WAQTD DEPTNO IF THERE ARE ATLEAST 3 EMP IN EACH 
DEPT WHOS NAME HAS CHAR 'A' OR 'S' .*/
SELECT DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%' OR ENAME LIKE '%S%'
GROUP BY DEPTNO
HAVING COUNT(*) >= 3;

/*10.WAQTD MIN AND MAX SALARIES OF EACH JOB IF MIN 
SAL IS MORE THAN 1000 AND MAX SAL IS LESS THAN 5000 */
SELECT JOB, MIN(SAL) AS MIN_SALARY, 
MAX(SAL) AS MAX_SALARY
FROM EMP 
GROUP BY JOB
HAVING MIN(SAL) > 1000 AND MAX(SAL) < 5000;






