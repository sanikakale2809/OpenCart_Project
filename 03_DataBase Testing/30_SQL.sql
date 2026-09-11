/* DB_TC_030
   Test Scenario: TS_016 - Order History
   Verify order history does not show another customer's order
*/
SELECT order_id,
       customer_id,
       email,
       total
FROM oc_order
WHERE customer_id <> 2

ORDER BY order_id DESC;