# Write your MySQL query statement below
select
    class
from
    Courses
group by
    class
having
    count(*) >= 5;


### method2: subquery

# select class from 
# (select class, count(class) as cnt from courses group by class) as subquery
# where cnt >= 5 