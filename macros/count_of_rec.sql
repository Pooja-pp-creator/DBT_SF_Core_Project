{% macro count_of_rec(db,sc,tb) %}
    {{ return("count(*) as row_cnt from db.sc.tb")}}
{% endmacro %}