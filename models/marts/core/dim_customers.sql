with customers as (
    select * from {{ ref('stg_customers') }}
),

orders as (
    select * from {{ ref('stg_orders') }}
),
fact_orders as(
    select * from {{ ref ('fct_orders')}}
),


final as (
    select
           cus.customer_id
          ,cus.first_name
          ,cus.last_name
          ,min (ord.order_date)                 as first_order_date
          ,max (ord.order_date)                 as  most_recent_order_date
          ,count (ord.order_id)                 as number_of_orders
          ,sum(f_ord.completed_dollar_amount)   as lifetime_dollar_value 
    from  customers                       cus 
          left outer join orders          ord    on cus.customer_id = ord.customer_id
          left outer join fact_orders     f_ord  on cus.customer_id = f_ord.customer_id
    group by
           cus.customer_id
          ,cus.first_name
          ,cus.last_name
)

select * from final