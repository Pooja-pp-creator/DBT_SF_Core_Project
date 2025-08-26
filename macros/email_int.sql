{% macro email_int(args) %}

    {% set email %}
        call system$SEND_EMAIL('EMAIL_DBT',
                            'ppande@televisaunivision.com',
                            'test subject',
                            'test body')

    {% endset %}
    {% do run_query(email) %}
    
{% endmacro %}