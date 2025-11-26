CREATE OR REPLACE VIEW `e-commerceanalysis.thelook_ecommerce.logistics_kpi_on_time_delivery` AS
SELECT
  COUNTIF(fulfillment_hours <= 240) AS on_time_deliveries,
  COUNT(*) AS total_deliveries,
  SAFE_DIVIDE(COUNTIF(fulfillment_hours <= 240), COUNT(*)) AS on_time_delivery_rate
FROM `e-commerceanalysis.thelook_ecommerce.order_items_logistics_clean`;
