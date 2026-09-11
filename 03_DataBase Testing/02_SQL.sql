/* =========================================================
   DB_TC_002 - Verify duplicate customer email
   Test Scenario: TS_001 - Register Functionality
   ========================================================= */

SELECT email,
       COUNT(*) AS email_count
FROM oc_customer
WHERE email = 'sanikakale@gmail.com'
GROUP BY email;
