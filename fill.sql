--2. Заполнение
INSERT INTO user_account (last_name, first_name, email, password, phone_number, date_of_registration)
VALUES ('Blind', 'Orelie', 'oblind0@mapy.cz', '4017956354245827', '(804) 9503824', '2020-08-10 18:52:14'),
       ('Hasney', 'Clarey', 'chasney1@acquirethisname.com', '342495595814103', '(366) 3527673', '2020-04-25 21:46:08'),
       ('Rickersey', 'Jewell', 'jrickersey2@php.net', '5602242322337790', '(837) 5891564', '2020-10-25 04:21:14'),
       ('Wakerley', 'Sandy', 'swakerley3@homestead.com', '3534944286260078', '(944) 1819493', '2020-12-05 03:54:15'),
       ('Kinchington', 'Ricky', 'rkinchington4@photobucket.com', '3536785875799549', '(590) 2993587',
        '2020-09-19 01:27:51'),
       ('Darnody', 'Fanechka', 'fdarnody5@nydailynews.com', '3577314665785970', '(521) 6331921', '2020-06-23 20:21:06'),
       ('Cadwell', 'Cass', 'ccadwell6@usgs.gov', '3550811229692627', '(917) 6235379', '2020-11-27 11:43:23'),
       ('Edrich', 'Christan', 'cedrich7@scientificamerican.com', '3549560524499915', '(558) 2152207',
        '2020-12-10 17:05:36'),
       ('Paterson', 'Joelle', 'jpaterson8@hao123.com', '6706306169742629', '(642) 1029830', '2020-02-09 07:43:27'),
       ('Mazzilli', 'Barr', 'bmazzilli9@about.com', '3543936055167582', '(887) 7497688', '2020-07-26 22:17:52');

INSERT INTO area (area_name)
VALUES ('Skaramangás'),
       ('Ostuncalco'),
       ('Dois Vizinhos'),
       ('Socabaya');

INSERT INTO resume (user_account_id, area_id, vacancy, create_date)
VALUES (1, 1, 'Software Consultant', '2020-06-21 11:00:01'),
       (2, 2, 'Civil Engineer', '2020-05-29 11:44:15'),
       (3, 3, 'Business Systems Development Analyst', '2020-09-11 08:03:43'),
       (4, 4, 'Structural Engineer', '2020-09-04 02:27:59'),
       (5, 5, 'Recruiting Manager', '2020-06-04 06:54:46'),
       (6, 1, 'Technical Writer', '2020-06-17 02:46:05'),
       (7, 2, 'Biostatistician III', '2020-08-29 21:29:05'),
       (8, 3, 'Web Developer II', '2020-12-02 06:54:40'),
       (9, 4, 'Structural Analysis Engineer', '2020-01-18 16:38:42'),
       (10, 5, 'Research Nurse', '2020-09-21 07:07:46'),
       (1, 1, 'VP Sales', '2020-05-04 16:49:37'),
       (1, 5, 'Help Desk Technician', '2020-09-05 07:34:59'),
       (3, 2, 'Information Systems Manager', '2020-12-03 22:55:43'),
       (3, 1, 'Operator', '2019-12-29 10:27:26'),
       (3, 4, 'Senior Sales Associate', '2020-02-08 00:40:41');

INSERT INTO employer (employer_name, area_id)
VALUES ('Quaxo', 1),
       ('Zoomlounge', 2),
       ('Digitube', 3),
       ('Rooxo', 4),
       ('Voomm', 5),
       ('Blognation', 1),
       ('Riffpedia', 2),
       ('Youspan', 3),
       ('Layo', 4),
       ('Blogpad', 5),
       ('Mybuzz', 1),
       ('Demizz', 2),
       ('Thoughtbeat', 3),
       ('Dabshots', 4),
       ('Edgeclub', 5);

INSERT INTO vacancy (vacancy_name, employer_id, area_id, compensation_from, compensation_to, compensation_gross,
                     create_date)
VALUES ('Software Test Engineer I', 1, 1, 8616.45, 39088.81, true, '2020-01-22 19:18:18'),
    create_date)
    ('Mechanical Systems Engineer', 2, 2, 3477.56, 45049.31, true, '2020-11-24 22:17:31'),
    create_date)
    ('Director of Sales', 3, 3, 1540.24, 5056.71, false, '2020-06-07 16:55:08'),
    create_date)
    ('General Manager', 4, 4, 2924.85, 33608.19, true, '2020-10-20 23:36:50'),
    create_date)
    ('Help Desk Operator', 5, 5, 7717.00, 46786.89, false, '2020-08-06 13:02:57'),
    create_date)
    ('Community Outreach Specialist', 1, 1, 3891.00, 11422.85, true, '2020-03-21 00:02:04'),
    create_date)
    ('Electrical Engineer', 2, 2, 2956.63, 48353.05, true, '2020-01-05 07:31:22'),
    create_date)
    ('Programmer Analyst I', 3, 3, 6360.49, 25724.93, true, '2020-05-12 07:08:01'),
    create_date)
    ('Graphic Designer', 4, 4, 5428.88, 31784.41, true, '2020-08-27 02:23:41'),
    create_date)
    ('Structural Engineer', 5, 5, 9169.62, 40467.53, false, '2020-01-29 00:42:12'),
    create_date)
    ('Business Systems Development Analyst', 1, 1, 3140.75, 23693.54, true, '2020-07-28 09:22:04'),
    create_date)
    ('Account Representative I', 2, 2, 1946.43, 20242.04, false, '2020-08-24 12:49:56'),
    create_date)
    ('Structural Analysis Engineer', 3, 3, 9527.62, 20714.86, false, '2020-01-26 01:41:52'),
    create_date)
    ('Administrative Assistant IV', 4, 4, 5566.13, 10306.50, true, '2020-05-24 01:42:06'),
    create_date)
    ('Social Worker', 5, 5, 8950.71, 10210.76, false, '2020-05-07 06:31:03');

INSERT INTO response (resume_id, vacancy_id, apply_date, response_date, response_flag)
VALUES (11, 11, '2020-05-06 15:22:56', '2020-11-24 17:00:29', 1),
       (6, 8, '2020-01-10 09:42:08', '2020-11-25 19:47:22', 0),
       (12, 11, '2020-09-25 07:57:51', '2020-11-16 12:27:26', 1),
       (6, 3, '2020-10-04 21:03:49', '2020-11-18 03:45:17', 0),
       (14, 15, '2020-08-09 12:02:18', '2020-10-28 00:20:17', 1),
       (9, 11, '2020-05-02 02:11:00', '2020-11-30 11:24:32', 1),
       (2, 14, '2020-05-30 17:04:56', '2020-11-25 10:57:18', 0),
       (1, 2, '2020-02-25 23:26:12', '2020-12-01 10:42:25', 0),
       (1, 12, '2020-09-02 08:13:08', '2020-10-25 06:48:19', 0),
       (14, 14, '2020-02-02 06:25:46', '2020-11-17 17:41:23', 0),
       (12, 7, '2020-01-23 01:56:14', '2020-11-16 08:59:40', 0),
       (6, 13, '2020-09-07 02:07:26', '2020-12-13 04:55:36', 1),
       (13, 12, '2020-04-29 22:12:32', '2020-10-20 12:48:03', 0),
       (15, 4, '2019-10-17 14:22:55', '2020-11-08 06:42:56', 0),
       (1, 2, '2020-06-08 15:45:52', '2020-11-03 12:36:04', 1);