{%macro full_name(fn,ln) %}
initcap({{fn}}||' '||{{ln}})
{% endmacro %}