{% macro learn_variables() %}
    {% set your_name = 'Tim Wong'%}
    {{ log("Hello " ~ your_name, info=True)}}


    {{ log("Hello dbt user " ~ var("user_name", "No USERNAME is Set") ~ "!", info=True)}}
{% endmacro %}