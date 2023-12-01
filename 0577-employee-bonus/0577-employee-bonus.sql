# Write your MySQL query statement below
SELECT
    name, bonus
FROM
    Employee LEFT JOIN Bonus USING(empId)
WHERE
    bonus is NULL OR bonus < 1000;