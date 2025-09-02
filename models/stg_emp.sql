{{
    config(
        materialized='table',
        transient=false,
        query_tag='Macro_dbt'
    )
}}

select * EXCLUDE GENDER,{{macro_gender('GENDER')}} GENDER,{{full_name('fname','lname')}} FULL_NAME_EMP
from {{ source('macro_src', 'EMPLOYEE') }}