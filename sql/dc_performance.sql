CREATE OR REPLACE VIEW `e-commerceanalysis.thelook_ecommerce.logistics_dc_performance` AS
SELECT
  distribution_center_id,
  COUNT(*) AS total_orders,
  AVG(processing_hours) AS avg_processing_hours,
  AVG(shipping_hours) AS avg_shipping_hours,
  AVG(fulfillment_hours) AS avg_fulfillment_hours,
  SAFE_DIVIDE(COUNTIF(fulfillment_hours <= 240), COUNT(*)) AS on_time_delivery_rate
FROM `e-commerceanalysis.thelook_ecommerce.order_items_logistics_clean`
GROUP BY distribution_center_id
ORDER BY avg_fulfillment_hours;
