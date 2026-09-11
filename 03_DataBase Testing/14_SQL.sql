/* DB_TC_017
   Verify cart quantity is stored correctly
*/
use openshop;
SELECT customer_id, product_id, quantity
FROM oc_cart
WHERE customer_id = 2
AND product_id = 43;