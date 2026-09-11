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