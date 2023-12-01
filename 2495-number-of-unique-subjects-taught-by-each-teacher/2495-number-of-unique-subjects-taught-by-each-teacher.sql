# Write your MySQL query statement below
select
    teacher_id,
    count(distinct subject_id) cnt
from
    Teacher
group by
    teacher_id;

/*learned

(1) use CTE (common table expression) - WITH AS

with A as
    (select
        distinct teacher_id, subject_id
     from
        Teacher
    )
select
    teacher_id,
    count(*)
from
    A
group by
    teacher_id;
*/