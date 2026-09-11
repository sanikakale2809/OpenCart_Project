/* DB_TC_026
   Test Scenario: TS_014 - Change Password
   Verify failed password change does not unexpectedly modify credential data
*/
SELECT customer_id,
       email,
       password
       
FROM oc_customer
WHERE customer_id = 1;