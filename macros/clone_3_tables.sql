{% macro clone_3_tables(trg_db,trg_sc,tb_list,src_db,src_sc) %}

{% set create_db %}
CREATE OR REPLACE DATABASE {{trg_db}}
{% endset %}
{% do run_query(create_db) %}

{% set create_sc %}
CREATE OR REPLACE schema {{trg_db}}.{{trg_sc}};
{% endset %}
{% do run_query(create_sc) %}


{% for item in tb_list %}
    {% set src_table=src_db~'.'~src_sc~'.'~item %}
    {% set trg_table=trg_db~'.'~trg_sc~'.'~item %}

    {% set create_tb %}
        CREATE or replace TABLE {{trg_table}} CLONE {{src_table}}
    {% endset %}
    {% do run_query(create_tb) %}
{% endfor %}

{% endmacro %}