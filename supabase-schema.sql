create table if not exists public.levelup_settings (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  created_by uuid not null default auth.uid(),
  updated_by uuid default auth.uid(),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.levelup_settings enable row level security;

drop policy if exists "Users can read their own LevelUp settings" on public.levelup_settings;
create policy "Users can read their own LevelUp settings"
on public.levelup_settings for select
to authenticated
using (created_by = (select auth.uid()));

drop policy if exists "Users can insert their own LevelUp settings" on public.levelup_settings;
create policy "Users can insert their own LevelUp settings"
on public.levelup_settings for insert
to authenticated
with check (created_by = (select auth.uid()));

drop policy if exists "Users can update their own LevelUp settings" on public.levelup_settings;
create policy "Users can update their own LevelUp settings"
on public.levelup_settings for update
to authenticated
using (created_by = (select auth.uid()))
with check (created_by = (select auth.uid()));

drop policy if exists "Users can delete their own LevelUp settings" on public.levelup_settings;
create policy "Users can delete their own LevelUp settings"
on public.levelup_settings for delete
to authenticated
using (created_by = (select auth.uid()));
