
-- This would only take care of the newly created rows
-- for the records
-- Another strategy needs to be made for the update
with
source as (

    select * from {{ source('jaffle_shop', 'suppliers')}}
    {% if is_incremental() %}
        where id > (select max(supplier_id) from {{ this }})
    {% endif %}

),

suppliers as (
    select 
        ----- id
        id as supplier_id,
        ----- first name
        first_name,
        --- last name
        last_name,
        -- last loaded as current timestamp
        CURRENT_TIMESTAMP() as last_loaded_at
    from source
)

select * from suppliers

-- select
--     id as supplier_id,
--     first_name,
--     last_name,
--     CURRENT_TIMESTAMP() as last_loaded_at
-- from {{ source('jaffle_shop', 'suppliers') }}