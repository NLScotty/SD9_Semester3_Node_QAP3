-- We insert the authors into the database
insert into author (author_name) values ('Dorette Nestor');
insert into author (author_name) values ('Kizzee Kelso');
insert into author (author_name) values ('Tammy Hought');
insert into author (author_name) values ('Chery Minter');
insert into author (author_name) values ('Lydon Scroggs');

-- We insert the genre into the database
insert into genre (genre_name, description) values ('Action', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.');
insert into genre (genre_name, description) values ('Mystery', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.');
insert into genre (genre_name, description) values ('Documentary', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.');
insert into genre (genre_name, description) values ('Drama', 'Aliquam sit amet diam in magna bibendum imperdiet.');
insert into genre (genre_name, description) values ('Fantasy', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.');

-- We insert the customer into the database
insert into customer (name, address, phone, email) values ('Dianemarie Kilpatrick', '26 Thackeray Street', '631-597-1024', 'dkilpatrick0@webnode.com');
insert into customer (name, address, phone, email) values ('Gino Steuhlmeyer', '29 Riverside Lane', '686-890-2688', 'gsteuhlmeyer1@bandcamp.com');
insert into customer (name, address, phone, email) values ('Rani Filyukov', '96448 Farmco Trail', '811-706-0476', 'rfilyukov2@about.com');
insert into customer (name, address, phone, email) values ('Scotti Whiles', '86 Memorial Alley', '979-853-3895', 'swhiles3@answers.com');
insert into customer (name, address, phone, email) values ('Fransisco Millier', '45 Melby Terrace', '543-727-0128', 'fmillier4@amazon.co.uk');

-- We insert store locations into the database
insert into book_mobile_locations (phone_number, address, email) values ('632-745-1850', '14 Sundown Pass', 'mmessage0@soundcloud.com');
insert into book_mobile_locations (phone_number, address, email) values ('706-530-2850', '9 Bellgrove Circle', 'zperrot1@sfgate.com');
insert into book_mobile_locations (phone_number, address, email) values ('366-967-5152', '8684 Village Green Terrace', 'cusborn2@mapquest.com');
insert into book_mobile_locations (phone_number, address, email) values ('331-484-7948', '949 Fairview Center', 'bwilsee3@archive.org');
insert into book_mobile_locations (phone_number, address, email) values ('661-841-6960', '68 Hollow Ridge Terrace', 'ryakubovich4@squarespace.com');

-- We insert books into the database
insert into book (isbn, title, year, author_ID, genre_ID) values ('902098813', 'Sucker, The (Corniaud, Le)', 1999, '1', '1');
insert into book (isbn, title, year, author_ID, genre_ID) values ('392588050', 'It! The Terror from Beyond Space', 1995, '1', '1');
insert into book (isbn, title, year, author_ID, genre_ID) values ('008867831', 'Mercenary for Justice', 1995, '2', '1');
insert into book (isbn, title, year, author_ID, genre_ID) values ('520328560', 'Zatoichi and the Doomed Man (Zatôichi sakate giri) (Zatôichi 11)', 1998, '2', '3');
insert into book (isbn, title, year, author_ID, genre_ID) values ('426475805', 'Death of the Filthy Bulldog', 2005, '2', '3');
insert into book (isbn, title, year, author_ID, genre_ID) values ('123412343', 'Anatolia Falling', 2005, '2', '3');
insert into book (isbn, title, year, author_ID, genre_ID) values ('834789393', 'Dressed for Evil', 2005, '3', '4');
insert into book (isbn, title, year, author_ID, genre_ID) values ('349028324', 'The Marked Wolf', 2005, '4', '2');
insert into book (isbn, title, year, author_ID, genre_ID) values ('689947342', 'Case of the Shreiking Falcon', 2005, '4', '2');
insert into book (isbn, title, year, author_ID, genre_ID) values ('032480108', 'Voltiac Legacy', 2005, '5', '5');

-- We insert staff into the database
insert into staff (name, address, phone_number, location_ID) values ('Hirsch Bloxsome', '442 Sunnyside Court', '850-660-8123', 1);
insert into staff (name, address, phone_number, location_ID) values ('Liam Flavelle', '07535 Doe Crossing Junction', '983-545-7906', 2);
insert into staff (name, address, phone_number, location_ID) values ('Rickert Cobbold', '52359 Warrior Park', '585-220-8071', 3);
insert into staff (name, address, phone_number, location_ID) values ('Tabbatha Calway', '907 Crowley Place', '457-638-7333', 4);
insert into staff (name, address, phone_number, location_ID) values ('Malinda Skouling', '3 Sugar Street', '554-479-4680', 5);

-- We insert receipts into the database
insert into receipt (date_time, amount, payment_type, customer_ID) values ('2023-4-10', '19.52', 'americanexpress', null);
insert into receipt (date_time, amount, payment_type, customer_ID) values ('2023-2-10', '9.76', 'china-unionpay', 1);
insert into receipt (date_time, amount, payment_type, customer_ID) values ('2023-6-10', '19.55', 'jcb', 1);
insert into receipt (date_time, amount, payment_type, customer_ID) values ('2023-8-10', '9.38', 'diners-club-carte-blanche', 2);
insert into receipt (date_time, amount, payment_type, customer_ID) values ('2023-9-10', '9.40', 'jcb', 3);

-- We insert the Book/Receipt Bridging table into the database
insert into book_receipt (book_ID, purchase_ID, quantity) values ('1', 1, 2);
insert into book_receipt (book_ID, purchase_ID, quantity) values ('2', 2, 1);
insert into book_receipt (book_ID, purchase_ID, quantity) values ('3', 3, 2);
insert into book_receipt (book_ID, purchase_ID, quantity) values ('3', 4, 1);
insert into book_receipt (book_ID, purchase_ID, quantity) values ('4', 5, 1);

-- We insert the Book/Store Bridging table into the database
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('1', 1, 4);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('1', 2, 1);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('1', 3, 3);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('1', 4, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('1', 5, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('2', 1, 4);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('2', 2, 1);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('2', 3, 3);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('2', 4, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('2', 5, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('3', 1, 4);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('3', 2, 1);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('3', 3, 3);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('3', 4, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('3', 5, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('4', 1, 4);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('4', 2, 1);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('4', 3, 3);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('4', 4, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('4', 5, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('5', 1, 4);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('5', 2, 1);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('5', 3, 3);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('5', 4, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('5', 5, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('6', 1, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('6', 2, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('7', 3, 4);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('7', 4, 1);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('8', 5, 3);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('9', 1, 2);
INSERT INTO book_location (book_id, location_id, quantity) VALUES ('10', 1, 2);