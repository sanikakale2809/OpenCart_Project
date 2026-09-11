/* DB_TC_037
   Test Scenario: TS_021 - Return Request
   Verify return request is stored with the correct order/product/customer
*/
SELECT return_id,
       order_id,
       customer_id,
       product_id,
       firstname,
       lastname,
       quantity,
       return_reason_id,
       return_action_id,
       return_status_id
FROM oc_return
WHERE order_id = 2
  AND customer_id = 1
  AND product_id = 28;