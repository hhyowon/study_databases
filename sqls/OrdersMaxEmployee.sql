SELECT  MAX(total.CNT_Orders) ,total.NAME
FROM (
SELECT COUNT(*) AS CNT_Orders ,T_ORD.EmployeeID, T_EM.Lastname as NAME
FROM Orders as T_ORD
    JOIN Employees AS T_EM
    ON T_ORD.EmployeeID = T_EM.EmployeeID
GROUP BY T_ORD.EmployeeID
) as total


-- - Table : Orders
-- - 조건 : 가장 많이 주문 받은 회사 직원명과 갯수
-- 결과 :MAX(total.CNT_Orders)	NAME
--              40	            Peacock

-- Employee 테이블과 조인