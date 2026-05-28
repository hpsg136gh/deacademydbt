{{
    config
    (
        materialized = 'ephemeral'
    )
}}

with base_orders as 
(select
    ORDER_ID,
    ORDER_DATE,
    CUSTOMER_ID,
    CASE WHEN CUSTOMER_NAME is null THEN 'NA' ELSE upper(customer_name) END AS CUSTOMER_NAME,
    CREATED_AT,
    CURRENT_TIMESTAMP AS INSERT_DTS
    FROM {{source('orders','base_orders')}}
    where ORDER_DATE is not null
)
select * from base_orders