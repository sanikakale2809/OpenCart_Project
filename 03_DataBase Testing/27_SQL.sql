/* DB_TC_027
   Test Scenario: TS_015 - Address Book
   Verify new address is stored for the correct customer
*/
SELECT address_id,
       customer_id,
       firstname,
       lastname,
       address_1,
       city,
       postcode,
       country_id,
       zone_id
FROM oc_address
WHERE customer_id = 2
ORDER BY address_id DESC;