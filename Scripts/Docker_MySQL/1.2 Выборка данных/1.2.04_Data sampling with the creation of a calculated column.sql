-- Выборка данных с созданием вычисляемого столбца
-- Для упаковки каждой книги требуется один лист бумаги, цена которого 1 рубль 65 копеек.
-- Посчитать стоимость упаковки для каждой книги (сколько денег потребуется, чтобы упаковать все экземпляры книги).
-- В запросе вывести название книги, ее количество и стоимость упаковки, последний столбец назвать pack
SELECT title, amount, 
     1.65 * amount AS pack 
FROM book;