/* DB_TC_008
   Verify product exists for a valid search keyword
*/

SELECT p.product_id,
       pd.name,
       p.price,
       p.quantity,
       p.status
FROM oc_product p
INNER JOIN oc_product_description pd
        ON p.product_id = pd.product_id
WHERE pd.name LIKE '%iPod Classic%';
