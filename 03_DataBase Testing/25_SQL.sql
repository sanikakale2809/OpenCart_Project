/* DB_TC_025
   Test Scenario: TS_014 - Change Password
   Verify password change updates customer credential data
*/
SELECT customer_id,
       email,
       password
FROM oc_customer
WHERE customer_id = 1;