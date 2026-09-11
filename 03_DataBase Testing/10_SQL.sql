/* DB_TC_010
   Test Scenario: TS_006 - Product Compare
   Test Case: Verify selected products exist for comparison
*/

SELECT product_id,
       language_id,
       name,
       description
FROM oc_product_description
WHERE name IN ('iPod Classic', 'Samsung Galaxy Tab 10.1');