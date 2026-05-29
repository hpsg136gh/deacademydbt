{{
    config
    (
        materialized = 'table'
    )
}}
select emp_id, {{ concat_macro_addr('emp_street','emp_city') }} as address
from {{ ref('employee') }}