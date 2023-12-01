# Write your MySQL query statement below
# SELECT id, movie, description, rating
# FROM Cinema
# WHERE MOD(id, 2) = 1 AND description != 'boring'
# ORDER BY rating DESC;

SELECT id, movie, description, rating
FROM Cinema
WHERE id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC;

/*learned:

MOD(a,2) is equal to a%2
*/