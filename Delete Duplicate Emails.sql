# Write your MySQL query statement below
WITH records AS (
SELECT MIN(id) AS id
    FROM Person
    GROUP BY email

)
DELETE FROM Person
WHERE id NOT IN (SELECT id FROM records);