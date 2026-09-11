/* =========================================================
   DB_TC_001 - Verify newly registered customer is stored
   Test Scenario: TS_001 - Register Functionality
   ========================================================= */
USE openshop;

SELECT customer_id,
       customer_group_id,
       store_id,
       language_id,
       firstname,
       lastname,
       email,
       telephone,
       newsletter,
       status,
       date_added
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';


/* =========================================================
   DB_TC_002 - Verify duplicate customer email
   Test Scenario: TS_001 - Register Functionality
   ========================================================= */

SELECT email,
       COUNT(*) AS email_count
FROM oc_customer
WHERE email = 'sanikakale@gmail.com'
GROUP BY email;


/* =========================================================
   DB_TC_003 - Verify mandatory customer information
   Test Scenario: TS_001 - Register Functionality
   ========================================================= */

SELECT customer_id,
       firstname,
       lastname,
       email
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';


/* DB_TC_004
   Verify registered customer exists
*/

SELECT customer_id,
       email,
       status
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';


/* DB_TC_006
   Logout is primarily session-level functionality.
   No direct customer-table validation is required.
*/
SELECT * From oc_customer




/* DB_TC_007
   Verify customer record used for password reset
*/
USE openshop;
SELECT customer_id,
       email,
       code,
       token
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';


/* DB_TC_007
   Verify customer record used for password reset
*/

SELECT customer_id,
       email,
       code,
       token
FROM oc_customer
WHERE email = 'sanikakale@gmail.com';


/* DB_TC_008
   Verify product exists for a valid search keyword
*/

SELECT p.product_id,
       pd.name,
       p.price,
       p.quantity,
       p.status
FROM oc_product p
INNER JOIN oc_product_description pd
        ON p.product_id = pd.product_id
WHERE pd.name LIKE '%iPod Classic%';



/* DB_TC_009
   Verify invalid product search returns no matching product
*/

SELECT p.product_id,
       pd.name
FROM oc_product p
INNER JOIN oc_product_description pd
        ON p.product_id = pd.product_id
WHERE pd.name LIKE '%XYZ987654%';



/* DB_TC_010
   Test Scenario: TS_006 - Product Compare
   Test Case: Verify selected products exist for comparison
*/

SELECT product_id,
       language_id,
       name,
       description
FROM oc_product_description
WHERE name IN ('iPod Classic', 'Samsung Galaxy Tab 10.1');


/* DB_TC_011
   Test Scenario: TS_007 - Product Display
   Verify iMac product details
*/

SELECT product_id,
       model,
       price
FROM oc_product
WHERE product_id = 41;


/* DB_TC_012
   Test Scenario: TS_007 - Product Display
   Verify iMac product details
*/
use openshop;
SELECT p.product_id,
       pd.name,
       p.status
FROM oc_product p
JOIN oc_product_description pd
     ON p.product_id = pd.product_id
WHERE p.product_id = 16;


/* DB_TC_017
   Verify shopping cart product details
*/
SHOW TABLES LIKE '%cart%';

SELECT *
FROM oc_cart
WHERE customer_id = 2;


/* DB_TC_017
   Verify cart quantity is stored correctly
*/
use openshop;
SELECT customer_id, product_id, quantity
FROM oc_cart
WHERE customer_id = 2
AND product_id = 43;


/* DB_TC_015
   Test Scenario: TS_009 - Wishlist
   Verify adding a product to wishlist creates the correct wishlist association
*/
SELECT customer_id,
       product_id
FROM oc_customer_wishlist
WHERE customer_id = 2
  AND product_id = 42;
  
  
  /* DB_TC_015
   Test Scenario: TS_009 - Wishlist
   Verify adding a product to wishlist creates the correct wishlist association
*/
SELECT customer_id,
       product_id
FROM oc_customer_wishlist
WHERE customer_id = 2
  AND product_id = 43
  ;
  
  
  /* DB_TC_017
   Test Scenario: TS_010 - Shopping Cart
   Verify cart contains the correct product and customer/session association
*/
SELECT customer_id,
       session_id,
       product_id,
       quantity
FROM oc_cart
WHERE customer_id = 2
  AND product_id = 41;



/* DB_TC_018
   Test Scenario: TS_010 - Shopping Cart
   Verify cart subtotal is consistent with stored product price and quantity
*/
SELECT c.product_id,
       pd.name,
       p.price,
       c.quantity,
       (p.price * c.quantity) AS calculated_subtotal
FROM oc_cart c
JOIN oc_product p
     ON c.product_id = p.product_id
JOIN oc_product_description pd
     ON p.product_id = pd.product_id
WHERE c.customer_id = 2
  AND c.product_id = 41
  AND pd.language_id = 1;
  
  
  
  
  /* DB_TC_019
   Test Scenario: TS_011 - Home Page
   Verify products displayed on the home page are active/available according to product data
*/
SELECT p.product_id,
       pd.name,
       p.status,
       p.quantity,
       p.price
FROM oc_product p
JOIN oc_product_description pd
     ON p.product_id = pd.product_id
WHERE p.status = 1
  AND p.quantity > 0
  AND pd.language_id = 1;
  
  
  
  /* DB_TC_020
   Test Scenario: TS_012 - Checkout
   Verify successful checkout creates an order record
*/
SELECT order_id,
       customer_id,
       firstname,
       lastname,
       email,
       total,
       order_status_id,
       date_added
FROM oc_order
WHERE customer_id = 2
ORDER BY order_id DESC;


/* DB_TC_021
   Test Scenario: TS_012 - Checkout
   Verify order total is stored consistently
*/
SELECT order_id,
       total,
       currency_code,
       currency_value,
       order_status_id
FROM oc_order
WHERE order_id = 6;
  
  
/* DB_TC_022
   Test Scenario: TS_012 - Checkout
   Verify order customer association is correct
*/
SELECT order_id,
       customer_id,
       firstname,
       lastname,
       email
FROM oc_order
WHERE order_id = 2;



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


/* DB_TC_025
   Test Scenario: TS_014 - Change Password
   Verify password change updates customer credential data
*/
SELECT customer_id,
       email,
       password
FROM oc_customer
WHERE customer_id = 1;



/* DB_TC_026
   Test Scenario: TS_014 - Change Password
   Verify failed password change does not unexpectedly modify credential data
*/
SELECT customer_id,
       email,
       password
       
FROM oc_customer
WHERE customer_id = 1;

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
  
  
  
  /* DB_TC_029
   Test Scenario: TS_016 - Order History
   Verify order history displays orders belonging to the correct customer
*/
SELECT order_id,
       customer_id,
       firstname,
       lastname,
       total,
       order_status_id,
       date_added
FROM oc_order
WHERE customer_id = 1
ORDER BY order_id DESC;


/* DB_TC_030
   Test Scenario: TS_016 - Order History
   Verify order history does not show another customer's order
*/
SELECT order_id,
       customer_id,
       email,
       total
FROM oc_order
WHERE customer_id <> 2

ORDER BY order_id DESC;

/* DB_TC_031
   Test Scenario: TS_017 - Order Information
   Verify order details contain correct product, quantity and price
*/
SELECT op.order_id,
       op.product_id,
       op.name,
       op.model,
       op.quantity,
       op.price,
       op.total
FROM oc_order_product op
WHERE op.order_id = 6;


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


/* DB_TC_033
   Test Scenario: TS_018 - Order Return
   Verify return-related information is associated with the correct order
*/
SELECT return_id,
       order_id,
       product_id,
       customer_id,
       firstname,
       lastname,
       quantity,
       date_ordered,
       date_added,
       return_status_id
FROM oc_return
WHERE order_id = 1
  AND product_id = 41;
  
  
  /* DB_TC_037
   Test Scenario: TS_021 - Return Request
   Verify return request is stored with the correct order/product/customer
*/
SELECT 
    return_id,
    order_id,
    customer_id,
    product_id,
    firstname,
    lastname,
    quantity,
    return_reason_id,
    return_action_id,
    return_status_id
FROM
    oc_return
WHERE
    order_id = 2 AND customer_id = 1
        AND product_id = 28;
        
        

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


/* DB_TC_043
   Test Scenario: TS_024 - Product Review
   Verify product review is stored for the correct product/customer
*/
SELECT review_id,
       product_id,
       customer_id,
       author,
       text,
       rating,
       status,
       date_added
FROM oc_review
WHERE product_id = 41
  AND customer_id = 1
ORDER BY review_id DESC;




/* DB_TC_044
   Test Scenario: TS_024 - Product Review
   Verify review status/moderation value is stored correctly
*/
SELECT review_id,
       product_id,
       customer_id,
       rating,
       status,
       date_added
FROM oc_review
WHERE review_id = 3;



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

  
  
  
  
  
  
  





  
  
  




  
  
  
  
  




























