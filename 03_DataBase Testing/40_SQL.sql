/* DB_TC_048
   Test Scenario: TS_027 - Header, Footer and Menu
   Verify navigation/menu configuration data where the selected OpenCart implementation stores it in the database
*/
SELECT setting_id,
       store_id,
       code,
       `key`,
       value,
       serialized
FROM oc_setting
WHERE code IN ('theme', 'config')
ORDER BY code, `key`;


