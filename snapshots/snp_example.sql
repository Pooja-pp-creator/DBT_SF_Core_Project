{% snapshot snp_example %}
    {{
        config(
            unique_key='id',
            check_cols=['city'],
            strategy='check'
            
        )
    }}

    select * from {{ source('macro_src', 'snpshot_tab1') }}
 {% endsnapshot %}