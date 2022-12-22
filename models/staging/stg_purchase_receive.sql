with received_order as (
    select * from {{ source('bibilorllc', '201601_received_purchases') }}
), 

final as (
    select 
        ReceiveId as receive_id,
        ReceivingDate as receive_date,
        PurchaseId as purchase_id,
        PODate as po_date,
        InventoryId as inventory_id,
        Store as store_id,
        Brand as brand_id, 
        Description as description,
        Size as size,
        VendorNumber as vendor_number,
        VendorName as vender_name,
        PONumber as po_number,
        PurchasePrice as purchase_price,
        Quantity as purchase_quantity, 
        Dollars as purchase_dollars,
        Classification as classification
    from received_order
)
select * from final