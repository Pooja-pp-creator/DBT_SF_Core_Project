{{
    config(
        materialized='table',
        alias='student_new_id'
    )
}}

select {{student_id('id')}} ID_new
from {{ source('macro_src', 'student') }}