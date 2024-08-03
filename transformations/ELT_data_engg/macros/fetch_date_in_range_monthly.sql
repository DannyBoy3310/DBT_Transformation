{% macro fetch_data_in_range_monthly(column_name, start_range, end_range) %}

    {% set query = "where month(%s) between '%s' and '%s' " | format(column_name,start_range, end_range) %}
    {{ do return(query) }}

{% endmacro %}

