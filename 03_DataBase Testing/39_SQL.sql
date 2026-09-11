/* DB_TC_046
   Test Scenario: TS_025 - Currencies Functionality
   Verify currency value/rate is stored correctly
*/
SELECT currency_id,
       code,
       title,
       value,
       status,
       date_modified
FROM oc_currency
WHERE code = 'USD';