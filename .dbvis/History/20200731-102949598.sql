SELECT
    *
FROM
    buildresultsummary BRS
JOIN
    public.repository_changeset RCS
ON
    BRS.buildresultsummary_id = RCS.buildresultsummary_id
WHERE
    BRS.build_key = 'FP-CH'
order by BRS.build_number desc