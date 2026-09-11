/* DB_TC_019
   Test Scenario: TS_011 - Home Page
   Verify products displayed on the home page are active/available according to product data
*/
SELECT p.product_id,
       pd.name,
       p.status,
       p.quantity,
       p.price
FROM oc_product p
JOIN oc_product_description pd
     ON p.product_id = pd.product_id
WHERE p.status = 1
  AND p.quantity > 0
  AND pd.language_id = 1;