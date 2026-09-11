/* DB_TC_032
   Test Scenario: TS_017 - Order Information
   Verify billing/shipping information is associated with the correct order
*/
SELECT order_id,
       payment_firstname,
       payment_lastname,
       payment_address_1,
       payment_city,
       payment_postcode,
       shipping_firstname,
       shipping_lastname,
       shipping_address_1,
       shipping_city,
       shipping_postcode
FROM oc_order
WHERE order_id = 7;