{{ config(alias=alias_table_name(), schema = get_schema_name() )}}

    select cus_id, sum(amount) from {{ source('sales', 'total_sales') }} group by cus_id 
    {{ fetch_data_in_range_monthly('purchase_date', var('start_year'), var('end_year') )}}

    