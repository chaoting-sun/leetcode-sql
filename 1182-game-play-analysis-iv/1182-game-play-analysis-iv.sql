# Write your MySQL query statement below


### method1 (slow)

# select
#     round(
#         count(*)/(select count(distinct player_id) from Activity),
#     2) fraction
# from
#     Activity a1
# where
#     datediff(
#         a1.event_date,
#         (select min(event_date) from Activity a2 where a1.player_id=a2.player_id)
#     ) = 1;


### method2

select
    round(
        count(distinct player_id)/(select count(distinct player_id) from Activity),
    2) fraction
from
    Activity
where
    (player_id, date_sub(event_date, interval 1 day)) in (
        select
            player_id, min(event_date)
        from
            Activity
        group by
            player_id
    );