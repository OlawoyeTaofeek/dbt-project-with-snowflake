{{
    config(
        materialized='view'
    )
}}

with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from raw.jaffle_shop.customers

)
SELECT * FROM raw.jaffle_shop.customers