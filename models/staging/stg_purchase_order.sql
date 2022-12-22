with purchase_order as (
    select * from {{ source('bibilorllc', '201601_purchase_order') }}
),

final as (
    select
        PurchaseId as purchase_id,
        PODate as po_date,
        InventoryId as inventory_id,
        Store as store_id,
        Brand as brand_id, 
        Description as description,
        Size as size,
        VendorNumber as vendor_number,
        VendorName as vender_name,
        PurchasePrice as purchase_price,
        Quantity as purchase_quantity,
        Dollars as purchase_dollars, 
        Classification as classification
    from purchase_order
)
select * from final