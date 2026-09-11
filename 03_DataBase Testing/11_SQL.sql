/* DB_TC_011
   Test Scenario: TS_007 - Product Display
   Verify iMac product details
*/

SELECT product_id,
       model,
       price
FROM oc_product
WHERE product_id = 41;
