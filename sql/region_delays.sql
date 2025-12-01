CREATE OR REPLACE VIEW `e-commerceanalysis.thelook_ecommerce.logistics_region_delays` AS
SELECT
  country,
  COUNT(*) AS total_orders,
  AVG(fulfillment_hours) AS avg_fulfillment_hours,
  AVG(shipping_hours) AS avg_shipping_hours,
  AVG(processing_hours) AS avg_processing_hours,
  SAFE_DIVIDE(COUNTIF(fulfillment_hours > 120), COUNT(*)) AS delay_rate
FROM `e-commerceanalysis.thelook_ecommerce.order_items_logistics_clean`
GROUP BY country
ORDER BY delay_rate DESC
