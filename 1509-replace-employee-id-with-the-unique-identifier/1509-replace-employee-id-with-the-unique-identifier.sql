# Write your MySQL query statement below
SELECT
    unique_id, name
FROM
    Employees
        LEFT JOIN EmployeeUNI ON Employees.id = EmployeeUNI.id

/*learned

if two tables are to be joined on a column in the same name
on both tables. instead of using ON, We can use USING to
simply the expression.

EX:
SELECT
    unique_id, name
FROM
    Employees
        LEFT JOIN EmployeeUNI USING(id)
*/