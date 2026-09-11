
/* DB_TC_009
   Verify invalid product search returns no matching product
*/

SELECT p.product_id,
       pd.name
FROM oc_product p
INNER JOIN oc_product_description pd
        ON p.product_id = pd.product_id
WHERE pd.name LIKE '%XYZ987654%';
