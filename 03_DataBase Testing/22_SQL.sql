/* DB_TC_022
   Test Scenario: TS_012 - Checkout
   Verify order customer association is correct
*/
SELECT order_id,
       customer_id,
       firstname,
       lastname,
       email
FROM oc_order
WHERE order_id = 2;