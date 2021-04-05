SELECT
    B.build_type,B.full_key, B.title, B.storage_tag
FROM
    BUILD B
WHERE
    B.marked_for_deletion = false and
    B.storage_tag IS NOT NULL
    
