WITH products AS (

    SELECT *
    FROM {{ ref('stg_amazon_products') }}

),

reviews AS (

    SELECT *
    FROM {{ ref('stg_amazon_reviews') }}

),

joined AS (

    SELECT
        r.REVIEW_ID,
        r.ASIN,
        p.PRODUCT_TITLE,
        p.RATING AS PRODUCT_RATING,
        p.NUMBER_OF_RATINGS,
        r.REVIEW_TITLE,
        r.REVIEW_BODY,
        r.REVIEW_DATE,
        r.STARS AS REVIEW_STARS,
        r.USER_ID,
        r.VERIFIED_PURCHASE,
        r.FOUND_HELPFUL,
        p.PRODUCT_URL

    FROM reviews r

    LEFT JOIN products p
        ON r.ASIN = p.ASIN

)

SELECT *
FROM joined
