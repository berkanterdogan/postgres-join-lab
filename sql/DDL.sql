-- region - Drop tables
drop table if exists book;
drop table if exists publisher;
-- endregion - Drop tables

-- region - Create tables
create table publisher
(
    id   serial
        constraint publisher_pk
            primary key,
    name varchar(100) not null
);

alter table publisher
    owner to postgres;

create table book
(
    id           serial
        constraint book_pk
            primary key,
    name         varchar(100),
    publisher_id integer
        constraint fk_publisher_id
            references publisher
);

alter table book
    owner to postgres;
-- endregion - Create tables