SELECT
    B.build_type,
    B.full_key,
    B.title,
    B.storage_tag
FROM
    BUILD B
WHERE
    B.marked_for_deletion = false
AND B.storage_tag IS NOT NULL