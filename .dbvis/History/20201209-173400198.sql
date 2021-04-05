SELECT
    B.FULL_KEY PLAN, PB.BRANCHES
FROM
    BUILD B
JOIN
    (
        SELECT
            COUNT(*) BRANCHES,
            master_id
        FROM
            BUILD
        WHERE
            build.build_type = 'CHAIN_BRANCH'
        GROUP BY
            build.master_id) PB
ON
    B.build_id = PB.master_id