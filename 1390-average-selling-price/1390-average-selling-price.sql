# Write your MySQL query statement below

select
    p.product_id,
    ifnull(round(sum(price*units)/sum(units),2), 0) average_price
from
    Prices p left join UnitsSold u
        on u.product_id = p.product_id and
           start_date <= purchase_date and purchase_date <= end_date
group by
    product_id;