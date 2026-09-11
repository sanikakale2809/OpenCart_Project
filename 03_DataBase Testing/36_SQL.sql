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