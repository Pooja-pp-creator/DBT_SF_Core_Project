{% macro clone_db(args) %}
    create or replace database NEW_MACRO_DATABASE clone MACRO_DB
{% endmacro %}