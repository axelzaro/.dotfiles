SELECT
    COUNT(*) 
FROM
    BUILD
WHERE
    build.build_type = 'CHAIN_BRANCH'
GROUP BY build.master_id