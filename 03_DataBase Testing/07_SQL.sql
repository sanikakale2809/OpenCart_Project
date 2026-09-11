/* DB_TC_007
   Verify customer record used for password reset
*/

SELECT customer_id,
       email,
       code,
       token
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';
