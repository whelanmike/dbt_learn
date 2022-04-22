with orders as
    (
        select * from {{ ref ('stg_orders') }}
    )
    ,payments as 
    (
        select * from {{ ref ('stg_payments') }}
    )
    ,fct_orders as 
    (
        select
              ord.order_id
             ,ord.customer_id
             ,ord.status
             ,pay.dollar_amount
             ,sum(
                  case when ord.status = 'completed' 
                       then pay.dollar_amount end)  
                                    as completed_dollar_amount
        from  orders                ord 
              inner join payments   pay on ord.order_id = pay.order_id
        group by
              ord.order_id
             ,ord.customer_id
             ,ord.status
             ,pay.dollar_amount        
    )

    select * from fct_orders