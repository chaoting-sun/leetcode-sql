# Write your MySQL query statement below

# select
#     stu.student_id,
#     stu.student_name,
#     sub.subject_name,
#     count(exa.student_id) attended_exams
# from
#     Subjects as sub
# cross join
#     Students as stu
# left join Examinations exa
#     on stu.student_id=exa.student_id and sub.subject_name=exa.subject_name
# group by
#     stu.student_id, stu.student_name, sub.subject_name
# order by
#     stu.student_id, sub.subject_name;

select
    stu.student_id,
    stu.student_name,
    sub.subject_name,
    count(exa.student_id) attended_exams
from
    Subjects as sub join Students as stu
left join Examinations exa
    using(student_id,subject_name)
group by
    stu.student_id, stu.student_name, sub.subject_name
order by
    stu.student_id, sub.subject_name;

/*learned

(1) different ways to do Cartesian product of 2 relations (3*5=15)
a. CROSS JOIN -> SELECT * FROM table_a CROSS JOIN table_b
b. JOIN -> SELECT * FROM table_a JOIN table_b
c. SELECT * FROM table_a, table_b

(2) join時有相同名稱的column -> USING(coli, colj, ...)
*/