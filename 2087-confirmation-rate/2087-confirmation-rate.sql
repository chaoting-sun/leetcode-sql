# Write your MySQL query statement below
select
    s.user_id,
    ifnull(
      round((
          select count(*)
          from Confirmations c2
          where c2.user_id = s.user_id
            and c2.action = 'confirmed'
        )/count(*),
      2),
    0) confirmation_rate
from
    Signups s left join Confirmations c1
        on s.user_id = c1.user_id
group by
    s.user_id;