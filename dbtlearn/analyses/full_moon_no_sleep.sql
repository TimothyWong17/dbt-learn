WITH fullmoon_reviews AS (
    SELECT * 
    FROM {{ ref("full_moon_reviews") }}
) 
SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) as reviews
FROM
    fullmoon_reviews
GROUP BY
    1,2
ORDER BY
    1,2