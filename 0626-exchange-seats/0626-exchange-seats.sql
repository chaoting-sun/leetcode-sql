# Write your MySQL query statement below

### method1

# select
#     case
#         when id%2 = 0 then id-1
#         when id%2 = 1 and id < (select count(*) from Seat) then id+1
#         else id
#     end as id,
#     student
# from
#     Seat
# order by
#     id;


### method2

select
    id,
    case
        when id%2 = 0 then (lag(student,1) over(order by id))
        else ifnull((lead(student) over(order by id)), student)
    end as student
from
    Seat;