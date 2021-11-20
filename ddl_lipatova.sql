-- База данных дилерского центра (ДЦ)
-- 
-- Создание базы данных ДЦ предназначено для сбора и хранения информации о сущностях ДЦ: 
-- о компании, департаментах, сотрудниках ДЦ, а также о том, к какому они отделу относятся; 
-- о клиентах и записях об их обращениях;
-- о наличие (не) доступных для продажи автомобилях(модели, бренды) в ДЦ, включая конфигурации. 
-- Кроме того база данных будет содержать данные о том, какие услуги предоставляет ДЦ (Салон, сервис, магазин).

-- Таблицы

CREATE DATABASE dealer_center;

USE dealer_center;

-- 1. Название ДЦ

CREATE TABLE company(
company_id SMALLINT UNSIGNED PRIMARY KEY,
name VARCHAR (20),
address VARCHAR (30),
city VARCHAR(20),
state VARCHAR (2),
zip VARCHAR(12)
);

-- 2. Названия отделов в ДЦ (внешний ключ на company)

CREATE TABLE department(
dept_id SERIAL,
company_id SMALLINT UNSIGNED NOT NULL,
name VARCHAR (20)
);

ALTER TABLE department 
ADD CONSTRAINT company_fk 
FOREIGN KEY (company_id) REFERENCES company(company_id);

-- 3. Таблица с сотрудниками из разных отделов (внешний ключ на таблицу department)

CREATE TABLE employee (
emp_id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
dept_id BIGINT UNSIGNED NOT NULL,
fname VARCHAR (20),
lname VARCHAR (20),
start_date DATE,
end_date DATE,
title VARCHAR(20),
CONSTRAINT fk_dept_id FOREIGN KEY (dept_id) REFERENCES department (dept_id)
);

-- 4. Таблица с клиентами

CREATE TABLE client (
client_id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
fname VARCHAR (20),
lname VARCHAR (20),
email VARCHAR(120) UNIQUE,
phone BIGINT UNSIGNED UNIQUE
);

-- 5. Типы услуг, предоставляемые ДЦ
CREATE TABLE activity_types (
id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255)
);

-- 6. Услуги, предоставляемые ДЦ. Необходимо записать какой тип услуг был предоставлен (activity_types_id), 
-- какой клиент обращался (client_id), в какую компанию обращался клиент (company_id).

CREATE TABLE activity (
id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
activity_types_id SMALLINT UNSIGNED NOT NULL,
client_id SMALLINT UNSIGNED NOT NULL,
company_id SMALLINT UNSIGNED NOT NULL,
body text,-- описание обращения клиента
created_at DATETIME DEFAULT NOW(),
updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT fk_activity_types_id FOREIGN KEY (activity_types_id) REFERENCES activity_types (id),
CONSTRAINT fk_client_id FOREIGN KEY (client_id) REFERENCES client (client_id),
CONSTRAINT fk_company_id FOREIGN KEY (company_id) REFERENCES company (company_id)
);


-- 7. Автомобили в наличие в ДЦ. Если автомобиль в наличии, не продан, то строка client_id пустая

CREATE TABLE vehicles(
vehicle_id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
client_id SMALLINT UNSIGNED, -- строчка пустая (null), то значит а/м в наличие, но не продано. 
VIN CHAR (17),
prod_date DATE,
CONSTRAINT fk1_client_id FOREIGN KEY (client_id) REFERENCES client (client_id)
);

ALTER TABLE vehicles ADD COLUMN model_id SMALLINT UNSIGNED NOT NULL;

ALTER TABLE vehicles ADD CONSTRAINT fk1_model_id FOREIGN KEY (model_id) REFERENCES model (model_id);

-- 8. Таблица с названиями брендов автомобиля

CREATE TABLE brand(
id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255)
);

-- 9. Таблица со всеми автомобилей

CREATE TABLE options (
option_id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
value VARCHAR(255) -- название доп. опции
);

-- 10. Таблица с комплектациями автомобилей

CREATE TABLE model (
model_id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
brand_id SMALLINT UNSIGNED NOT NULL,
name VARCHAR(255),
engine VARCHAR(255), -- двигатель (м.б. дизель или бензин)
gear VARCHAR(255), -- привод
doors VARCHAR(255), -- количество дверей
CONSTRAINT fk_brand_id FOREIGN KEY (brand_id) REFERENCES brand (id)
);

-- 11. Таблица опций определенных моделей (M2M)

CREATE TABLE options_to_model(
id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
option_id SMALLINT UNSIGNED NOT NULL, 
model_id SMALLINT UNSIGNED NOT NULL, 
CONSTRAINT fk_option_id FOREIGN KEY (option_id) REFERENCES options (option_id),
CONSTRAINT fk_model_id FOREIGN KEY (model_id) REFERENCES model (model_id)
);



