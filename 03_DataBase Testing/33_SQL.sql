/* DB_TC_033
   Test Scenario: TS_018 - Order Return
   Verify return-related information is associated with the correct order
*/
SELECT return_id,
       order_id,
       product_id,
       customer_id,
       firstname,
       lastname,
       quantity,
       date_ordered,
       date_added,
       return_status_id
FROM oc_return
WHERE order_id = 1
  AND product_id = 41;