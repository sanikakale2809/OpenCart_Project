/* DB_TC_004
   Verify registered customer exists
*/

SELECT customer_id,
       email,
       status
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';
