# Write your MySQL query statement below

select
   a. machine_id,
    round(avg(b.timestamp-a.timestamp),3) processing_time
from
    (select *
     from Activity
     where activity_type='start') a join
     (select *
     from Activity
     where activity_type='end') b on
        a.machine_id = b.machine_id and
        a.process_id = b.process_id and
        a.timestamp < b.timestamp
group by
    a.machine_id;