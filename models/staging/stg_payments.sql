WITH raw_payments AS (

  SELECT * 
  
  FROM {{ source('vlaunir_demos.default', 'raw_payments') }}

),

renamed AS (

  SELECT 
    id AS payment_id,
    order_id,
    payment_method,
    -- `amount` is currently stored in cents, so we convert it to dollars
    amount / 100 AS amount
  
  FROM raw_payments AS source

)

SELECT *

FROM renamed
