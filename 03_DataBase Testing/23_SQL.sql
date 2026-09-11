/* DB_TC_023
   Test Scenario: TS_013 - Account Information
   Verify account information update is stored correctly
*/
SELECT customer_id,
       firstname,
       lastname,
       email,
       telephone
FROM oc_customer
WHERE customer_id = 2;