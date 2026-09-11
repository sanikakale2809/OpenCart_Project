/* DB_TC_024
   Test Scenario: TS_013 - Account Information
   Verify unchanged customer fields remain unchanged
*/
SELECT customer_id,
       firstname,
       lastname,
       email,
       telephone
FROM oc_customer
WHERE customer_id = 1;