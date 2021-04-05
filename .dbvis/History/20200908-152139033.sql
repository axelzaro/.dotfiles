SELECT
    B.FULL_KEY,
    B.BUILD_TYPE,
    BUILD_DATE,
    B.STORAGE_TAG
FROM
    BUILD B
LEFT JOIN
    (
        SELECT
            BUILD_KEY ,
            MAX(BUILD_DATE) AS BUILD_DATE
        FROM
            BUILDRESULTSUMMARY
        WHERE
            BUILD_TYPE IN ('CHAIN',
                           'CHAIN_BRANCH')
        GROUP BY
            BUILD_KEY) AS BRS
ON
    B.FULL_KEY = BRS.BUILD_KEY
WHERE
    B.BUILD_TYPE IN ('CHAIN',
                     'CHAIN_BRANCH')
AND ((
            BUILD_DATE <= '2020-11-05 00:00:00')
    OR  BUILD_DATE IS NULL)