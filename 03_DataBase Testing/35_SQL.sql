/* DB_TC_038
   Test Scenario: TS_021 - Return Request
   Verify return request status is stored correctly
*/
SELECT return_id,
       order_id,
       product_id,
       return_status_id,
       date_added
FROM oc_return
WHERE return_id = 3;