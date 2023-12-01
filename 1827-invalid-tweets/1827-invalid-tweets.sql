# Write your MySQL query statement below
SELECT
    tweet_id
FROM
    Tweets
WHERE CHAR_LENGTH(content) > 15

/* learned

compare LENGTH and CHAR_LENGTH
- LENGTH: measures the string length in 'bytes'
- CHAR_LENGTH: measures the string length in 'characters'
=> there are some multi-byte characters, so to to compute
=> the number of characters, CHAR_LENGTH is more correct
*/