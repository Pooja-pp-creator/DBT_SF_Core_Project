{% macro clone_db(args) %}
    {% set clone_dbs %}
    create or replace database NEW_MACRO_DATABASE clone MACRO_DB
    {% endset%}
    {% do run_query(clone_dbs) %}
{% endmacro %}