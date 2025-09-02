{{
    config(materialized='view')
}}
select current_user() as User,current_role() as Role,current_database() as DB,current_warehouse() as WH