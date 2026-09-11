/* DB_TC_045
   Test Scenario: TS_025 - Currencies Functionality
   Verify configured currency record contains expected code/title/status
*/
SELECT currency_id,
       title,
       code,
       symbol_left,
       symbol_right,
       decimal_place,
       value,
       status
FROM oc_currency
WHERE code = 'USD';