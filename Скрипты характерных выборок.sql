USE dealer_center;

-- Скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы);

-- 1. Вывести инфо по моделям и брендам автомобилей, которые не были проданны 

SELECT b.name AS brand, m.name AS model, v.prod_date, m.engine, m.gear, m.doors, v.VIN
FROM model m 
JOIN vehicles v ON m.model_id=v.model_id
JOIN brand b ON b.id=m.brand_id 
WHERE client_id IS NULL;


-- 2. Вывести самую старую (произведенную) модель и бренд авто

SELECT b.name AS brand, m.name AS model, v.prod_date
FROM model m 
JOIN vehicles v
ON m.model_id=v.model_id
JOIN brand b ON b.id=m.brand_id 
ORDER BY v.prod_date ASC
LIMIT 1;

-- 3. Вывести бренд с самым большим количеством произведенных авто

SELECT b.name, COUNT(*)
FROM vehicles v 
JOIN model m 
ON v.model_id = m.model_id 
JOIN brand b 
ON b.id=m.brand_id
GROUP BY b.name
ORDER BY COUNT(*) DESC 
LIMIT 1;

-- 4. Вывести все опции модели X5

SELECT DISTINCT m.name AS model, o.name AS option_name, o.value AS option_value
FROM model m
JOIN options_to_model otm 
ON otm.model_id = m.model_id 
JOIN `options` o 
ON otm.option_id = o.option_id
Where m.name = 'X5';


-- 5. Вывести информацию о клиентах, которые приезжали на сервис (подзапрос без JOIN)


SELECT c.client_id, c.fname, c.lname 
FROM client c 
WHERE c.client_id IN (
	SELECT a.client_id 
	FROM activity a 
	WHERE a.activity_types_id IN (
		SELECT act.id 
		FROM activity_types act 
		WHERE act.name = 'Сервис'));
	
	
-- Представления (минимум 2);

-- 1. Вывести всех уволившихся сотрудников (VIEW)
	CREATE VIEW fired_emp AS 
	SELECT e.emp_id, e.fname, e.lname 
	FROM employee e 
	WHERE e.end_date < NOW();

-- 2. Вывести всех сотрудников отдела бухгалтерии (VIEW)

	CREATE VIEW buch_emp AS
	SELECT e.emp_id, e.fname, e.lname, d.name
	FROM employee e 
	JOIN department d 
	ON d.dept_id = e.dept_id 
	WHERE d.name = 'Бухгалтерия';

-- Хранимые процедуры / триггеры;
-- 1. Процедура
-- Возвращает список имен сотрудников и дату их начала работы

delimiter //

CREATE PROCEDURE employees_start_date ()
   BEGIN
     	SELECT e.emp_id, e.fname, e.lname, e.start_date 
		FROM employee e;
   END//


delimiter ;

CALL employees_start_date();

-- Триггеры
-- 1. Проверить дату производства автомобилей, чтобы они были не раньше, чем сегодня

DROP TRIGGER IF EXISTS check_vehicle_prod_date_insert;

DELIMITER //

CREATE TRIGGER check_vehicle_prod_date_insert BEFORE INSERT ON vehicles
FOR EACH ROW BEGIN
  IF (NEW.prod_date < Now()) THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'incorrect prod_date!';
  END IF;
END//

DELIMITER ;


INSERT INTO vehicles (vehicle_id, VIN, prod_date, model_id) Values
(11, '9999', '2021-12-20', 1);

INSERT INTO vehicles (vehicle_id, VIN, prod_date, model_id) Values
(11, '99998', '2021-10-20', 1);


DROP TRIGGER IF EXISTS check_vehicle_prod_date_update;

DELIMITER //

CREATE TRIGGER check_vehicle_prod_date_update BEFORE UPDATE ON vehicles
FOR EACH ROW BEGIN
  IF (NEW.prod_date < Now()) THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'incorrect prod_date!';
  END IF;
END//

DELIMITER ;


UPDATE vehicles SET prod_date = '2021-12-20' 
WHERE vehicle_id = 11;

UPDATE vehicles SET prod_date = '2021-10-20' 
WHERE vehicle_id = 11;

