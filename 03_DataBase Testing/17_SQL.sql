/* DB_TC_017
   Test Scenario: TS_010 - Shopping Cart
   Verify cart contains the correct product and customer/session association
*/
SELECT customer_id,
       session_id,
       product_id,
       quantity
FROM oc_cart
WHERE customer_id = 2
  AND product_id = 41;