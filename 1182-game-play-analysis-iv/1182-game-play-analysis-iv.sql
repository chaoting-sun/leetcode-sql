# Write your MySQL query statement below

select
    round(
        count(*)/(select count(distinct player_id) from Activity),
    2) fraction
from
    Activity a1
where
    datediff(
        a1.event_date,
        (select min(event_date) from Activity a2 where a1.player_id=a2.player_id)
    ) = 1;