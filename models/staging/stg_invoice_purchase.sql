with invoice as (
    select * from {{ source('bibilorllc', '201601_invoice_purchases') }}
),

final as (
    select 
        VendorNumber as vendor_number,
        VendorName as vender_name,
        InvoiceDate as invoice_date,
        PONumber as po_number,
        PODate as po_date,
        PayDate as pay_date,
        Quantity as purchase_quantity,
        Dollars as purchase_dollars,
        Freight as freight,
        Approval as approval
    from invoice
)
select * from final