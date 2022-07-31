-- Выборка данных, групповые функции SUM и COUNT
-- Посчитать, сколько экземпляров книг каждого автора хранится на складе:
SELECT author, SUM(amount)
FROM book
GROUP BY author;

-- Посчитать, сколько различных книг каждого автора хранится на складе.
-- Только для этого примера в таблицу book добавлена запись с пустыми значениями в столбцах amount и price:
INSERT INTO book (title, author, price, amount) VALUES ('Черный человек','Есенин С.А.', Null, Null);

SELECT author, COUNT(author), COUNT(amount), COUNT(*)
FROM book
GROUP BY author;

-- Посчитать, количество различных книг и количество экземпляров книг каждого автора , хранящихся на складе.
-- Столбцы назвать Автор, Различных_книг и Количество_экземпляров соответственно.
SELECT author AS "Автор", count(title) AS "Различных_книг", sum(amount) AS "Количество_экземпляров"
FROM book
GROUP BY author;