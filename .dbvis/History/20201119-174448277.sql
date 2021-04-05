SELECT
    B.build_type,
    B.buildkey,
    BD.*
FROM
    BUILD B
JOIN
    build_definition BD
ON
    B.build_id = BD.build_id