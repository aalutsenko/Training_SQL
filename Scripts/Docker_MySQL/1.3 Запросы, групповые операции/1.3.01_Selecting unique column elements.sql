-- Выбор уникальных элементов столбца
-- Способ 1 с использованием ключевого слова DISTINCT:
SELECT DISTINCT author
FROM book;

-- Способ 2 с использованием оператора GROUP BY:
SELECT  author
FROM book
GROUP BY author;

-- Задание:
-- Отобрать различные (уникальные) элементы столбца amount таблицы book.\
SELECT DISTINCT amount
FROM book;
