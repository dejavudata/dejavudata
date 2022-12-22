with sale_date as (
  select distinct SalesDate as date_key from {{ source('bibilorllc', '201601_sales') }}
),

receive_date as (
  select distinct ReceivingDate as date_key from {{ source('bibilorllc', '201601_received_purchases') }}
),

purchase_date as (
  select distinct PODate as date_key from {{ source('bibilorllc', '201601_purchase_order') }}
),

final as (
    select date_key from sale_date
    union distinct 
    select date_key from receive_date
    union distinct 
    select date_key from purchase_date
    order by date_key
)

select * from final


