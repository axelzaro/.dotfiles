SELECT
    B.FULL_KEY,
    B.TITLE,
    PVL.VCS_LOCATION_ID,
    VCSL.NAME,
    VCSL.PLUGIN_KEY
FROM
    BUILD B
JOIN
    PLAN_VCS_LOCATION PVL
ON
    B.BUILD_ID = PVL.PLAN_ID
JOIN
    VCS_LOCATION VCSL
ON
    PVL.VCS_LOCATION_ID = VCSL.VCS_LOCATION_ID