SELECT
    VCSL.*
FROM
    build B
JOIN
    public.plan_vcs_location PVL
ON
    B.build_id = PVL.plan_id
    Join public.vcs_location VCSL on PVL.vcs_location_id = VCSL.vcs_location_id