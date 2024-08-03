{% macro get_table_name() %}

    {% if var('filter_name', '') != '' %}
        {{  return(this.name ~ '_' ~ var('filter_name') )}}
    {% else %}
        {{  return(this.name) }}
    {% endif %}

{% endmacro %}