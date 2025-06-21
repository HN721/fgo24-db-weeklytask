-- Active: 1750082338800@@127.0.0.1@5432@postgres
INSERT INTO
    users (
        id,
        name,
        phone_number,
        profile_image,
        email,
        password,
        role
    )
VALUES (
        'u-001',
        'Hosea Zen',
        '081234567890',
        'profile1.jpg',
        'hosea@gmail.com',
        '12345',
        'admin'
    ),
    (
        'u-002',
        'Bayu Adi',
        '081298765432',
        'profile2.jpg',
        'bayu@gmail.com',
        '22345',
        'users'
    ),
    (
        'u-003',
        'Mas Yasirstyle',
        '081111111111',
        'profile3.jpg',
        'yasir@gmail.com',
        '1224345',
        'users'
    ),
    (
        'u-004',
        'Mas Nanda',
        '08111111232',
        'profile4.jpg',
        'nanda@gmail.com',
        '1224345',
        'users'
    ),
    (
        'u-005',
        'Mas asa',
        '0811112',
        'profile5.jpg',
        'asa@gmail.com',
        '12243456',
        'users'
    );

INSERT INTO
    genres (id, name)
VALUES ('g-001', 'Action'),
    ('g-002', 'Comedy'),
    ('g-003', 'Drama'),
    ('g-004', 'Horor'),
    ('g-005', 'fantasy'),
    ('g-006', 'Comedy');

INSERT INTO
    directors (id, name)
VALUES ('d-001', 'Christopher Nolan'),
    ('d-002', 'Quentin Tarantino');

INSERT INTO
    actors (id, name)
VALUES ('a-001', 'Leonardo DiCaprio'),
    ('a-002', 'Brad Pitt'),
    ('a-003', 'Cillian Murphy');

INSERT INTO
    movies (
        id,
        title,
        synopsis,
        background,
        poster,
        release_date,
        duration,
        price
    )
VALUES (
        'm-001',
        'Inception',
        'A mind-bending thriller.',
        'bg1.jpg',
        'poster1.jpg',
        '2010-07-16 00:00:00',
        148,
        50000
    ),
    (
        'm-002',
        'Once Upon a Time in Hollywood',
        'An actor and stunt double...',
        'bg2.jpg',
        'poster2.jpg',
        '2019-07-26 00:00:00',
        161,
        55000
    ),
    (
        'm-003',
        'Once  in Hollywood',
        'An actor and stunt double...',
        'bg2.jpg',
        'poster2.jpg',
        '2019-07-26 00:00:00',
        161,
        55000
    ),
    (
        'm-004',
        'Osean',
        'An actor and stunt double...',
        'bg2.jpg',
        'poster2.jpg',
        '2019-07-26 00:00:00',
        161,
        55000
    ),
    (
        'm-005',
        'O Hollywood',
        'An actor and stunt double...',
        'bg2.jpg',
        'poster2.jpg',
        '2019-07-26 00:00:00',
        161,
        55000
    );

INSERT INTO
    movie_director (id, movie_id, director_id)
VALUES ('md-001', 'm-001', 'd-001'),
    ('md-002', 'm-002', 'd-002');

INSERT INTO
    movie_actors (id, movie_id, actor_id)
VALUES ('ma-001', 'm-001', 'a-003'),
    ('ma-002', 'm-002', 'a-001'),
    ('ma-003', 'm-002', 'a-002');

INSERT INTO
    cinema (id, name)
VALUES ('c-001', 'Cinepolis'),
    ('c-002', 'CGV'),
    ('c-003', 'XX1'),
    ('c-004', 'Icon Walk XXI');

INSERT INTO
    payment_method (id, name)
VALUES ('p-001', 'Go-Pay'),
    ('p-002', 'Dana'),
    ('p-003', 'BRI'),
    ('p-004', 'PayPal');

INSERT INTO
    transactions (
        id,
        time,
        date,
        id_cinema,
        id_payment_method,
        price_total,
        user_id,
        movie_id
    )
VALUES (
        't-006',
        '2025-06-19 15:30:00',
        '2025-06-19 00:00:00',
        'c-001',
        'p-001',
        100000,
        'u-002',
        'm-001'
    ),
    (
        't-002',
        '2025-06-19 15:30:00',
        '2025-06-19 00:00:00',
        'c-002',
        'p-004',
        100000,
        'u-002',
        'm-001'
    ),
    (
        't-004',
        '2025-06-19 15:30:00',
        '2025-06-19 00:00:00',
        'c-003',
        'p-001',
        100000,
        'u-001',
        'm-003'
    );

DELETE FROM transaction_detail WHERE costumer_name = 'hosea';

INSERT INTO
    transaction_detail (
        id,
        id_transaction,
        costumer_name,
        costumer_phone,
        seat
    )
VALUES (
        'td-001',
        't-002',
        'hosea',
        '081411110',
        'A1'
    ),
    (
        'td-002',
        't-006',
        'hosea',
        '081411110',
        'A2'
    ),
    (
        'td-003',
        't-004',
        'hosea',
        '081411110',
        'A2'
    );

INSERT INTO
    history_transaction (
        id,
        transaction_id,
        status,
        updated_by,
        note
    )
VALUES (
        'ht-001',
        't-006',
        'paid',
        'admin',
        'Payment confirmed by admin'
    ),
    (
        'ht-002',
        't-002',
        'paid',
        'admin',
        'Payment confirmed by admin'
    ),
    (
        'ht-003',
        't-004',
        'paid',
        'admin',
        'Payment confirmed by admin'
    );

SELECT * FROM transactions;

SELECT * FROM transaction_detail;

SELECT * FROM history_transaction;