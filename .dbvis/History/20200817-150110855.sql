SELECT
    B.full_key,
    PVCSL.vcs_location_id    
FROM
    public.plan_vcs_location PVCSL
LEFT JOIN
    public.build B
ON
    PVCSL.plan_id = B.build_id
    WHERE PVCSL.vcs_location_id IN (1048578)