select * from {{ ref('emp_stg') }}
where salary < 0