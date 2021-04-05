SELECT
    *
FROM
    CWD_USER CU
JOIN
    CWD_DIRECTORY CD
ON
    CU.DIRECTORY_ID = CD.ID
LEFT JOIN
    CWD_USER_ATTRIBUTE CUA
ON
    CU.ID = CUA.USER_ID
LEFT JOIN
    CWD_MEMBERSHIP CM
ON
    CM.CHILD_ID = CU.ID
LEFT JOIN
    CWD_GROUP CG
ON
    CM.PARENT_ID = CG.ID
WHERE
    CU.user_name = 'admin';