{% macro alias_table_name() %}
    {% if var('alias_name', 'default') != 'default' %}
        {{ do return(var('alias_name')) }}
    {% else %}
        {{ do return(this.name) }}
    {% endif %}

{% endmacro %}
