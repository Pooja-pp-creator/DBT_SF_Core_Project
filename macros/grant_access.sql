{#GRANT ACCESS DYNAMICALLY#}

{% macro grant_access(role, database,schema,table) %}
    {% set sql %}
        GRANT usage on database {{database}} TO ROLE {{ role }};
        GRANT usage on schema {{database}}.{{schema}} TO ROLE {{ role }};
        GRANT select on table {{database}}.{{schema}}.{{table}} TO ROLE {{ role }};
    {% endset %}
    {% do run_query(sql) %}
{% endmacro %}