CREATE OR REPLACE VIEW `e-commerceanalysis.thelook_ecommerce.order_items_logistics_clean` AS
SELECT
  -- Keys & IDs
  oi.id AS order_item_id,
  oi.order_id,
  oi.user_id,
  oi.product_id,
  oi.status,
  
  --Timestamps
  oi.created_at,
  oi.shipped_at,
  oi.delivered_at,
  oi.returned_at,

  --Durations
  TIMESTAMP_DIFF(oi.shipped_at, oi.created_at, HOUR) AS processing_hours,
  TIMESTAMP_DIFF(oi.delivered_at, oi.shipped_at, HOUR) AS shipping_hours,
  TIMESTAMP_DIFF(oi.delivered_at, oi.created_at, HOUR) AS fulfillment_hours,

  p.distribution_center_id,

  -- FIX: Normalize “España” → “Spain”
  REPLACE(u.country, 'España', 'Spain') AS country,

  u.state,
  u.city

--Joins
FROM `thelook_ecommerce.order_items` oi
JOIN `thelook_ecommerce.products` p
  ON oi.product_id = p.id
JOIN `thelook_ecommerce.users` u
  ON oi.user_id = u.id

--Data Cleaning
WHERE
  oi.status NOT IN ('Cancelled', 'Processing')
  AND oi.created_at IS NOT NULL
  AND oi.shipped_at IS NOT NULL
  AND oi.delivered_at IS NOT NULL
  AND oi.shipped_at >= oi.created_at
  AND oi.delivered_at >= oi.shipped_at;
