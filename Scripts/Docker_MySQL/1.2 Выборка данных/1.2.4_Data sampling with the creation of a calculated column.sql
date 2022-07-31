-- Выборка данных с созданием вычисляемого столбца
SELECT title, amount, 
     1.65 * amount AS pack 
FROM book;