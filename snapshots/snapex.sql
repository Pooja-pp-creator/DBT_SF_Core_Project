{% snapshot snapex %}
    {{
        config(
            target_schema='snap_sc',
            target_database='snap_db',
            unique_key='id',
            strategy='check',
            invalidate_hard_deletes=true,
            check_cols=['city']
        )
    }}

    select * from {{ source('snp_src', 'EPFO') }}
 {% endsnapshot %}