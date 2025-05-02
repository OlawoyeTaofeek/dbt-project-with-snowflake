{{
    config(
        materialized='view'
    )
}}

with customers as (
    SELECT * 
    FROM {{ ref('stg_jaffle_shop__customers') }}
),

orders as (
        select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

        from {{ ref('stg_jaffle_shop__orders')}}
)


