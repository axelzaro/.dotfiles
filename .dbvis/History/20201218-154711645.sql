 SELECT
            b.FULL_KEY,
            MAX(brs.BUILD_COMPLETED_DATE) AS LAST_BUILD
        FROM
            BUILD b
        LEFT JOIN
            BUILDRESULTSUMMARY brs
        ON
            (
                full_key = build_key)
        WHERE
            brs.BUILD_KEY IS NOT NULL
        AND b.BUILD_TYPE IN ('CHAIN',
                             'CHAIN_BRANCH')
        GROUP BY
            full_key) a