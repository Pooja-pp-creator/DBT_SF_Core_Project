{% macro student_id(id_clean) %}
    REGEXP_REPLACE({{id_clean}}, '[^0-9]', '')
{% endmacro %}