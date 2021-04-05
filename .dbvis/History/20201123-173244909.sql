SELECT
    B.build_type,
    B.buildkey,
    BD.*
FROM
    BUILD B
JOIN
    BUILD_DEFINITION BD
ON
    B.build_id = BD.build_id
WHERE
    B.build_type = 'CHAIN'
