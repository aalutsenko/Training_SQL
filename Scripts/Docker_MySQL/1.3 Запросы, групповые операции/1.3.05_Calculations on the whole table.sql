-- Вычисления по таблице целиком
-- Посчитать количество экземпляров книг на складе:
SELECT SUM(amount) AS Количество
FROM book;

-- Посчитать общее количество экземпляров книг на складе и их стоимость:
SELECT SUM(amount) AS Количество, 
    SUM(price * amount) AS Стоимость
FROM book;

-- Вывести  цену самой дешевой книги, цену самой дорогой и среднюю цену уникальных книг на складе.
-- Названия столбцов Минимальная_цена, Максимальная_цена, Средняя_цена соответственно. Среднюю цену округлить до двух знаков после запятой.
-- Пояснение. В задании нужно посчитать среднюю цену уникальных книг на складе, а не среднюю цену всех экземпляров книг:
SELECT MIN(price) AS Минимальная_цена, MAX(price) AS Максимальная_цена, ROUND(AVG(price), 2) AS Средняя_цена
FROM book;