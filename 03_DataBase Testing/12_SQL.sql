/* DB_TC_012
   Test Scenario: TS_007 - Product Display
   Verify iMac product details
*/
use openshop;
SELECT p.product_id,
       pd.name,
       p.status
FROM oc_product p
JOIN oc_product_description pd
     ON p.product_id = pd.product_id
WHERE p.product_id = 16;