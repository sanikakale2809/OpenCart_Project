/* DB_TC_029
   Test Scenario: TS_016 - Order History
   Verify order history displays orders belonging to the correct customer
*/
SELECT order_id,
       customer_id,
       firstname,
       lastname,
       total,
       order_status_id,
       date_added
FROM oc_order
WHERE customer_id = 1
ORDER BY order_id DESC;