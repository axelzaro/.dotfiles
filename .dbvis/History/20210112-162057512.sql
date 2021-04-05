SELECT
    *
FROM
    build
    join public.plan_vcs_location on build.build_id = plan_vcs_location.plan_id