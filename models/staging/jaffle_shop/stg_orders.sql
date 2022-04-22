with orders as (    
    select
           id           as order_id
          ,user_id      as customer_id
          ,order_date
          ,status
    from `lunar-tube-130217`.dbt_learn.jaffle_shop_orders
)

select * from orders