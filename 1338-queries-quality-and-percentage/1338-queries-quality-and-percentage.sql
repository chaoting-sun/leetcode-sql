# Write your MySQL query statement below
select
    query_name,
    round(avg(rating/position), 2) quality,
    round(
        (select
            count(rating)
        from
            Queries q2
        where
            q1.query_name=q2.query_name and q2.rating < 3)
        /count(rating)*100,
        2) poor_query_percentage
from
    Queries q1
group by
    query_name;


/*learned

(1) we can use CASE: https://www.fooish.com/sql/case.html

select
    query_name,
    round(sum((rating/position))/count(query_name),2) as quality, 
    round(sum(case when rating<3 then 1 else 0 end)/count(query_name)*100,2) as poor_query_percentage 
from
    Queries 
group by
    query_name

(2) we can use boolean values to compute # rating<3

SELECT 
	query_name,
	ROUND(AVG(rating / position), 2) AS quality,
	ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage 
FROM 
	Queries
GROUP BY 
	query_name
*/