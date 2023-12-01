# Write your MySQL query statement below
select
    x,y,z,
    case
        when x >= y and x >= z and x < y + z then 'Yes'
        when y >= x and y >= z and y < x + z then 'Yes'
        when z >= x and z >= y and z < x + y then 'Yes'
        else 'No'
    end triangle
from
    Triangle;


### method2

# select x,y,z,
#     case
#         when x+y>z and x+z>y and z+y>x then 'Yes'
#         else 'No'
#     end as triangle
# from Triangle;