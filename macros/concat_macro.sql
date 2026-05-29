{% macro concat_macro_addr(emp_street,emp_city) %}

concat( {{emp_street}},', ', {{emp_city}} )

{% endmacro %}

{% macro concat_macro_name(emp_firstname,emp_lastname) %}

concat( {{emp_firstname}},', ', {{emp_lastname}} )

{% endmacro %}