SELECT
    lower_user_name, count (lower_user_name)
FROM
    public.cwd_user
group by lower_user_name


having count (lower_user_name) >0