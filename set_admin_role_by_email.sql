insert into public.user_roles (user_id, role)
select id, 'admin'
from auth.users
where email = 'sevostyanov.vlad@icloud.com'
on conflict (user_id) do update
set role = 'admin';
