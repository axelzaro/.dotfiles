SELECT
    *
FROM
    queue A
JOIN
    public.capability C
ON
    A.capability_set = C.capability_set