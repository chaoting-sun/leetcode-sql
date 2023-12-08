# Write your MySQL query statement below


### method1

# select
#     s.user_id,
#     ifnull(
#       round((
#           select count(*)
#           from Confirmations c2
#           where c2.user_id = s.user_id
#             and c2.action = 'confirmed'
#         )/count(*),
#       2),
#     0) confirmation_rate
# from
#     Signups s left join Confirmations c1
#         on s.user_id = c1.user_id
# group by
#     s.user_id;


### method2

# select
#   user_id,
#   ifnull(round(sum(action='confirmed')/count(user_id), 2), 0) confirmation_rate
# from
#   Signups s left join Confirmations c using(user_id)
# group by
#   user_id;


# ### method3

select
    s.user_id,
    round(
      avg(
        if(c.action='confirmed', 1, 0)
      ),
    2) confirmation_rate
from
    Signups s left join Confirmations c
        on s.user_id = c.user_id
group by
    s.user_id;