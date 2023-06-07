SELECT COUNT(*) AS CATEGORY_CNT, T_OUTER_CATE.CategoryName
FROM (
     SELECT T_INNER_CATE.*
     FROM  Categories AS T_INNER_CATE
     WHERE T_INNER_CATE.CategoryName IN('Produce','Beverages')
    ) AS T_OUTER_CATE
GROUP BY T_OUTER_CATE.CategoryName;

-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_alias_column0
-- 결과 :  
-- CATEGORY_CNT	CategoryName
-- 1	Beverages
-- 1	Produce