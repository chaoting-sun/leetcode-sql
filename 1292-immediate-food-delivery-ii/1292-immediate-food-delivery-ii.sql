# Write your MySQL query statement below

with first_order
as (
    select
        customer_id, order_date, customer_pref_delivery_date
    from
        Delivery d1
    where
        order_date = (
            select
                min(order_date)
            from
                Delivery d2
            where
                d1.customer_id = d2.customer_id
        )
)
select
    round(sum(if(order_date=customer_pref_delivery_date,1,0))/count(*)*100, 2)  
        as immediate_percentage
from
    first_order;