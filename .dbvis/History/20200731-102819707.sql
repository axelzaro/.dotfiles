SELECT
    *
FROM
    buildresultsummary BRS
JOIN
    public.repository_changeset RCS
ON
    BRS.buildresultsummary_id = RCS.buildresultsummary_id
WHERE
    buildresultsummary.build_key = 'FP-CH'