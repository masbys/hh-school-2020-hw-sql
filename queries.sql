--3. Вывести название вакансии, город, в котором опубликована вакансия (можно просто area_id), имя работодателя для
-- первых 10 вакансий у которых не указана зарплата, сортировать по дате создания вакансии от новых к более старым.
SELECT vacancy_name, a.area_name, e.employer_name
FROM vacancy v
         INNER JOIN area a ON v.area_id = a.area_id
         INNER JOIN employer e ON v.employer_id = e.employer_id
WHERE (compensation_from IS NULL AND compensation_to IS NULL)
ORDER BY create_date DESC
LIMIT 10;

--4. Вывести среднюю максимальную зарплату в вакансиях, среднюю минимальную и среднюю среднюю
-- (compensation_to - compensation_from) в одном запросе. Значения должны быть указаны до вычета налогов.

WITH compensation_gross_range AS (
    SELECT
    CASE
           WHEN compensation_gross IS TRUE
           THEN compensation_to * 0.87
           ELSE compensation_to
           END AS compensation_to,
    CASE
           WHEN compensation_gross IS TRUE
           THEN compensation_from * 0.87
           ELSE compensation_from
            END AS compensation_from
FROM vacancy)
SELECT avg(compensation_from)                         AS min_avr,
       avg(compensation_to)                           AS max_avr,
       avg(compensation_to - compensation_from) AS avg_salary_range
FROM compensation_gross_range

--5. Вывести топ-5 компаний, получивших максимальное количество откликов на одну вакансию, в порядке убывания откликов.
-- Если более 5 компаний получили одинаковое максимальное количество откликов, отсортировать по алфавиту и вывести только 5.


--6. Вывести медианное количество вакансий на компанию. Использовать percentile_cont.


--7. Вывести минимальное и максимальное время от создания вакансии до первого отклика для каждого города.