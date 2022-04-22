with customers as (   
    select 
           id           as customer_id
          ,first_name
          ,last_name
    from `lunar-tube-130217`.dbt_learn.jaffle_shop_customers
)

select * from customers