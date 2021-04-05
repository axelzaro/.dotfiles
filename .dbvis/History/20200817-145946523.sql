SELECT
    B.*
FROM
    public.plan_vcs_location PVCSL
LEFT JOIN
    public.build B
ON
    PVCSL.plan_id = B.build_id