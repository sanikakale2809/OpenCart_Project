/* DB_TC_017
   Verify shopping cart product details
*/
SHOW TABLES LIKE '%cart%';

SELECT *
FROM oc_cart
WHERE customer_id = 2;