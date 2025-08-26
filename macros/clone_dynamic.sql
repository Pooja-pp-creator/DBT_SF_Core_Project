
{% macro clone_dynamic(src_n,trg_n) %}
    {% set clone_query %}
    create database {{trg_n}} clone {{src_n}} 
    {% endset%}  
    {% do run_query(clone_query) %}
{% endmacro %}