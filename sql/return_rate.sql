CREATE OR REPLACE VIEW `e-commerceanalysis.thelook_ecommerce.logistics_return_rate` AS
SELECT
  COUNTIF(returned_at IS NOT NULL) AS returned_items,
  COUNT(*) AS total_items,
  SAFE_DIVIDE(COUNTIF(returned_at IS NOT NULL), COUNT(*)) AS return_rate
FROM `e-commerceanalysis.thelook_ecommerce.order_items_logistics_clean`;
