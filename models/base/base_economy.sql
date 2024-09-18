with base_economy as (

    select 
        _AIRBYTE_RAW_ID,
        gdp_usd,
        location_key,
        gdp_per_capita_usd,
        human_capital_index 
    from {{ source('raw_covid19', 'economy') }}

)

select * from base_economy