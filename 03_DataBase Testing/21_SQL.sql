/* DB_TC_021
   Test Scenario: TS_012 - Checkout
   Verify order total is stored consistently
*/
SELECT order_id,
       total,
       currency_code,
       currency_value,
       order_status_id
FROM oc_order
WHERE order_id = 6;