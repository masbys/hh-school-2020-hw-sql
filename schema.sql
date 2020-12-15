--1. Создание таблиц
DROP TABLE IF EXISTS user_account, area, resume, employer, vacancy, response;

CREATE TABLE IF NOT EXISTS user_account
(
    user_account_id      SERIAL PRIMARY KEY,
    last_name            VARCHAR(40) NOT NULL,
    first_name           VARCHAR(40) NOT NULL,
    email                VARCHAR(40) NOT NULL,
    password             VARCHAR(40) NOT NULL,
    phone_number         VARCHAR(40) NOT NULL,
    date_of_registration TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (email, phone_number),
    CHECK ( email != '' AND phone_number != '' )
);

CREATE TABLE IF NOT EXISTS area
(
    area_id   SERIAL PRIMARY KEY,
    area_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS resume
(
    resume_id       SERIAL PRIMARY KEY,
    user_account_id INT,
    FOREIGN KEY (user_account_id) REFERENCES user_account (user_account_id),
    area_id         INT,
    FOREIGN KEY (area_id) REFERENCES area (area_id),
    vacancy         VARCHAR(40) NOT NULL,
    create_date     TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS employer
(
    employer_id   SERIAL PRIMARY KEY,
    employer_name VARCHAR(100) NOT NULL,
    area_id       INT,
    FOREIGN KEY (area_id) REFERENCES area (area_id)
);

CREATE TABLE IF NOT EXISTS vacancy
(
    vacancy_id         SERIAL PRIMARY KEY,
    vacancy_name       VARCHAR(40) NOT NULL,
    employer_id        INT,
    FOREIGN KEY (employer_id) REFERENCES employer (employer_id),
    area_id            INT,
    FOREIGN KEY (area_id) REFERENCES area (area_id),
    compensation_from  INT,
    compensation_to    INT,
    compensation_gross BOOLEAN     NOT NULL,
    create_date        TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS response
(
    response_id   SERIAL PRIMARY KEY,
    resume_id     INT,
    FOREIGN KEY (resume_id) REFERENCES resume (resume_id),
    vacancy_id    INT,
    FOREIGN KEY (vacancy_id) REFERENCES vacancy (vacancy_id),
    apply_date    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    response_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    response_flag INT       NOT NULL
);