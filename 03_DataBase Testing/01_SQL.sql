/* =========================================================
   DB_TC_001 - Verify newly registered customer is stored
   Test Scenario: TS_001 - Register Functionality
   ========================================================= */
USE openshop;

SELECT customer_id,
       customer_group_id,
       store_id,
       language_id,
       firstname,
       lastname,
       email,
       telephone,
       newsletter,
       status,
       date_added
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';


