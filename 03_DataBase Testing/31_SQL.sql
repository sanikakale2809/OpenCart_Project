/* DB_TC_031
   Test Scenario: TS_017 - Order Information
   Verify order details contain correct product, quantity and price
*/
SELECT op.order_id,
       op.product_id,
       op.name,
       op.model,
       op.quantity,
       op.price,
       op.total
FROM oc_order_product op
WHERE op.order_id = 6;