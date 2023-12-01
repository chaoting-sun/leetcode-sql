# Write your MySQL query statement below
select
    contest_id, round(count(user_id)/(select count(*) from Users)*100, 2) percentage
from
    Register left join Users using(user_id)
group by
    contest_id
order by
    percentage desc, contest_id asc;