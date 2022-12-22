with inventory as (
    select * from {{ source('bibilorllc', '2016_begin_inventory') }}
),

final as (
    select 
        InventoryId as inventory_id,
        Store as store_id,
        Brand as brand_id,
        Description as description,
        Size as size,
        OnHand as on_hand,
        po_shipping as on_order,
        startDate as start_date
    from inventory
)

select * from final