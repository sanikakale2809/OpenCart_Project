/* DB_TC_020
   Test Scenario: TS_012 - Checkout
   Verify successful checkout creates an order record
*/
SELECT order_id,
       customer_id,
       firstname,
       lastname,
       email,
       total,
       order_status_id,
       date_added
FROM oc_order
WHERE customer_id = 2
ORDER BY order_id DESC;