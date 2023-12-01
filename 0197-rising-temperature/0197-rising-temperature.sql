# Write your MySQL query statement below

# SELECT id
# FROM Weather A
# WHERE temperature > (SELECT temperature
#                      FROM Weather B
#                      WHERE DATEDIFF(A.recordDate, B.recordDate) = 1);

SELECT A.id
FROM Weather A
    JOIN Weather B
WHERE A.temperature > B.temperature
    AND DATEDIFF(A.recordDate, B.recordDate) = 1;