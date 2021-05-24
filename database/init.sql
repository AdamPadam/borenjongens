create schema master;
create extension pgcrypto;

create table if not exists master.users
(
    id         uuid primary key     default gen_random_uuid(),
    name       text        not null,
    surname    text        not null,
    patronymic text,
    login      text unique not null,
    password   text        not null,
    address    text,
    email      text,
    phone      text,
    created    timestamp   not null default now()::timestamp
);

create table if not exists master.categories
(
    tag               text primary key,
    name              text not null,
    description       text,
    count_of_products int  not null default 0
);

create table if not exists master.products
(
    id           uuid primary key default gen_random_uuid(),
    name         text    not null,
    price        decimal not null,
    rating       integer not null default 0,
    information  jsonb   not null default '{}',
    quantities   integer not null,
    category_tag text    references categories (tag) on delete set null not null,
    created      timestamp
);

create table if not exists master.carts
(
    user_id    uuid      not null,
    product_id uuid      not null,
    count      integer   not null default 1,
    added      timestamp not null default now()::timestamp
);

create table if not exists master.favorite_lists
(
    user_id    uuid references master.users (id) on delete cascade    not null,
    product_id uuid references master.products (id) on delete cascade not null
);

alter table master.carts
    add constraint cart_user_id
        foreign key (user_id) references master.users (id);
alter table master.carts
    add constraint cart_product_id
        foreign key (product_id) references master.products (id);
