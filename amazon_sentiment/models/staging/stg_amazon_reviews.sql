WITH source AS (

    SELECT *
    FROM AMAZON_BEST_SELLERS_RATINGS_AND_REVIEWS.PUBLIC.REVIEWS

),

renamed AS (

    SELECT
        ID AS REVIEW_ID,
        ASIN,
        URL AS PRODUCT_URL,
        BODY AS REVIEW_BODY,
        DATE AS REVIEW_DATE,
        TITLE AS REVIEW_TITLE,
        IMAGES,
        VIDEOS,
        STARS,
        USER_ID,
        VARIATION,
        FOUND_HELPFUL,
        VERIFIED_PURCHASE

    FROM source

)

SELECT *
FROM renamed
