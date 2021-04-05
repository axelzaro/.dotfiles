SELECT
    *
FROM
    queue A
JOIN
    public.capability_set CS
ON
    A.capability_set = CS.capability_set_id
JOIN
    public.capability C
ON
    CS.capability_set_id = C.capability_set
    
