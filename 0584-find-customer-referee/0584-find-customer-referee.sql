# Write your MySQL query statement below
SELECT
    name
FROM
    Customer
WHERE
    referee_id != 2 OR referee_id IS NULL

/* learned:
# method1:
- IFNULL(expression, alt_value): The IFNULL() function returns a specified value if the expression is NULL. If the expression is NOT NULL, this function returns the expression.
=> WHERE IFNULL(referee_id,0) <> 2;

# method2:
- COALESCE(val1, val2, ...., val_n): returns the first non-null value in a list.
=> WHERE COALESCE(referee_id, 0) <> 2

# method3:
- nested query
SELECT  
    name
FROM 
    Customer
WHERE 
    id NOT IN
        (
        SELECT id
        FROM Customer
        WHERE referee_id = 2
        )
*/