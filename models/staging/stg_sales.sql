with sales as (
    select * from {{ source('bibilorllc', '201601_sales') }}
),

final as (
    select 
        SaleId as sale_id,
        SalesDate as sale_date,
        InventoryId as inventory_id,
        Store as store_id,
        Branch as brand_id, 
        Description as description,
        Size as size,
        SalesQuantity as sale_quantity,
        SalesDollars as sale_dollars,
        SalesPrice as sale_price,
        Volume as volume,
        Classification as classification,
        ExciseTax as excise_tax,
        VendorNo as vendor_number, 
        VendorName as vender_name
    from sales
) 
select * from final