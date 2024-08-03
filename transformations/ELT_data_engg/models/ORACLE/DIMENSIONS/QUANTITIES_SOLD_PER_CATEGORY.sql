{{ config(alias = get_table_name() ) }}

    select A.category_code, A.category_name, sum(B.Quantity_Sold) as Total_qt_sold, avg(B.Quantity_Sold*unit_selling_price) as Average_Sales_price 
    from {{ source('main', 'product_summary')}} A 
    inner join {{ source('main', 'product_sales') }} B
    on A.item_code = B.item_code 
    group by A.category_code, A.category_name