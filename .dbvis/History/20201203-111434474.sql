SELECT
    b.full_key AS plan_key,
    COUNT(*)   AS test_cases
FROM
    BUILD b
LEFT OUTER JOIN
    TEST_CLASS cl
ON
    b.build_id = cl.plan_id
LEFT OUTER JOIN
    TEST_CASE
ON
    cl.TEST_CLASS_ID = TEST_CASE.TEST_CLASS_ID
GROUP BY
    b.build_id,
    b.buildkey,
    b.full_key
ORDER BY
    COUNT(*) DESC