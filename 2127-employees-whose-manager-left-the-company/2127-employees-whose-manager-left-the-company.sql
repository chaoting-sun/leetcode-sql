# Write your MySQL query statement below
select
    employee_id
from
    Employees e1
where
    salary < 30000 and
    manager_id not in (
        select
            employee_id
        from
            Employees e2)
order by
    employee_id;


### method2: left join

# select e1.employee_id
# from 
# Employees as e1 
# left join 
# Employees as e2 
# on e1.manager_id=e2.employee_id
# where e1.salary<30000 and e2.employee_id is null and e1.manager_id is not null 
# order by employee_id;