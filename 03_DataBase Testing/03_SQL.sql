/* =========================================================
   DB_TC_003 - Verify mandatory customer information
   Test Scenario: TS_001 - Register Functionality
   ========================================================= */

SELECT customer_id,
       firstname,
       lastname,
       email
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';