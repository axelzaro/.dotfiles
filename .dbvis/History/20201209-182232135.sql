SELECT
    vcs.vcs_location_id, vcs.name, B.full_key
FROM
    vcs_location vcs
JOIN
    plan_vcs_location pvl
ON
    vcs.vcs_location_id = pvl.vcs_location_id
JOIN
    build B
ON
    pvl.plan_id = b.build_id
WHERE
    vcs.plugin_key ='com.atlassian.bamboo.plugin.system.repository:svnv2'