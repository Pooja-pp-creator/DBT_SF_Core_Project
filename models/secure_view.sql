{{
    config(
        materialized='view',
        secure='true',
        alias='vw_secure',
        query_tag='dbt_view'
    )
}}
select * from {{ ref('id') }}
