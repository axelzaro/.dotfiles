SELECT
    PVL.*
FROM
    build B
JOIN
    public.plan_vcs_location PVL
ON
    B.build_id = PVL.plan_id