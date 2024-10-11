WITH raw_orders AS (

  SELECT * 
  
  FROM {{ source('vlaunir_demos.default', 'raw_orders') }}

),

renamed AS (

  SELECT 
    id AS order_id,
    user_id AS customer_id,
    order_date,
    status
  
  FROM raw_orders AS source

)

SELECT *

FROM renamed
