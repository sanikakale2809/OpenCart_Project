/* DB_TC_028
   Test Scenario: TS_015 - Address Book
   Verify edited address updates the intended record
*/
SELECT address_id,
       customer_id,
       firstname,
       lastname,
       address_1,
       city,
       postcode
FROM oc_address
WHERE address_id = 2
  AND customer_id = 2;