-- dbt model
with payments as (   
    select 
           id               as payment_id
          ,orderid          as order_id
          ,paymentmethod    as payment_method
          ,status           as payment_status
          ,amount / 100     as dollar_amount
          ,created          as created_date
    from {{ source ('dbt_learn', 'payments') }}
)

select * from payments