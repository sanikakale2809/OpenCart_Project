/* DB_TC_015
   Test Scenario: TS_009 - Wishlist
   Verify adding a product to wishlist creates the correct wishlist association
*/
SELECT customer_id,
       product_id
FROM oc_customer_wishlist
WHERE customer_id = 2
  AND product_id = 42;