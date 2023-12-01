
    create sequence bus_seq start with 1 increment by 50;

    create sequence departure_seq start with 1 increment by 50;

    create sequence route_seq start with 1 increment by 50;

    create sequence trip_seq start with 1 increment by 50;

    create table bus (
        code bigint,
        driver_id bigint unique,
        id bigint not null,
        model varchar(255) unique,
        primary key (id)
    );

    create table bus_specifications (
        places_number integer,
        model varchar(255) not null,
        primary key (model)
    );

    create table departure (
        date timestamp(6),
        id bigint not null,
        trip_id bigint,
        primary key (id)
    );

    create table driver (
        bus_id bigint unique,
        id bigserial not null,
        first_name varchar(255),
        last_name varchar(255),
        login varchar(255),
        password varchar(255),
        surname varchar(255),
        primary key (id)
    );

    create table route (
        id bigint not null,
        primary key (id)
    );

    create table tickets (
        visited boolean,
        departure_id bigint not null,
        flight_number bigint,
        place_from bigint,
        place_number bigint,
        place_to bigint,
        first_name varchar(255),
        last_name varchar(255),
        surname varchar(255),
        primary key (departure_id)
    );

    create table trip (
        departure_time time(6),
        driver_id bigint,
        id bigint not null,
        route_id bigint,
        primary key (id)
    );

    alter table if exists bus 
       add constraint FKdybo98296m92dxlbqlt5ia6wh 
       foreign key (driver_id) 
       references driver;

    alter table if exists bus 
       add constraint FKhssqhm040rj4p5vf08g617gjq 
       foreign key (model) 
       references bus_specifications;

    alter table if exists departure 
       add constraint FKq7751bhms6giay91q21votg9j 
       foreign key (trip_id) 
       references trip;

    alter table if exists driver 
       add constraint FKsdl4lygfdv4up2k60tfqyerk5 
       foreign key (bus_id) 
       references bus;

    alter table if exists tickets 
       add constraint FKn4uv3vo6j4n9ev43je06bs59u 
       foreign key (departure_id) 
       references departure;

    alter table if exists trip 
       add constraint FKpuhkx68hnwy4by2b0onybv5x1 
       foreign key (driver_id) 
       references driver;

    alter table if exists trip 
       add constraint FKeva4adpyk6glllffnw5ypj20j 
       foreign key (route_id) 
       references route;
