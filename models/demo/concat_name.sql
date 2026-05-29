{{
    config(
        materialized='table'
    )
}}


select emp_id, {{ concat_macro_name('emp_firstname','emp_lastname') }} as Full_Name
from {{ ref('employee') }}