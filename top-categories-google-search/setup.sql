create table categories
(
    category_id   int,
    category_name varchar(255),
    primary key (category_id)
);

create table searches
(
    search_id   int,
    user_id     int,
    search_date DATETIME,
    category_id int,
    query       varchar(255),
    primary key (search_id),
    foreign key (category_id) references categories (category_id)
);

insert into categories
values (1001, "Programming tutorials"),
       (2001, "Stock Market"),
       (3001, "Recipes"),
       (4001, "Sports news");

INSERT INTO searches
(search_id, user_id, search_date, category_id, query)
VALUES
    (1001, 7654, '2024-06-01 00:00:00', 3001, 'chicken recipe'),
    (1002, 2346, '2024-06-02 00:00:00', 3001, 'vegan meal prep'),
    (1003, 8765, '2024-06-03 00:00:00', 2001, 'google stocks'),
    (1004, 9871, '2024-07-01 00:00:00', 1001, 'python tutorial'),
    (1005, 8760, '2024-07-02 00:00:00', 2001, 'tesla stocks');