## model level incremental

```
This is moved to the schema.yml
{{ config(
    materialized='incremental',
    unique_key='id',
    on_schema_change='sync_all_columns'
    )
}}
```