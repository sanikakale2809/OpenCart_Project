/* DB_TC_018
   Test Scenario: TS_010 - Shopping Cart
   Verify cart subtotal is consistent with stored product price and quantity
*/
SELECT c.product_id,
       pd.name,
       p.price,
       c.quantity,
       (p.price * c.quantity) AS calculated_subtotal
FROM oc_cart c
JOIN oc_product p
     ON c.product_id = p.product_id
JOIN oc_product_description pd
     ON p.product_id = pd.product_id
WHERE c.customer_id = 2
  AND c.product_id = 41
  AND pd.language_id = 1;