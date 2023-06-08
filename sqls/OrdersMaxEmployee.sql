SELECT EmployeeID, MAX(total_Orders)
FROM (
SELECT COUNT(*) AS total_Orders ,EmployeeID
FROM Orders
GROUP BY EmployeeID
)


-- - Table : Orders
-- - 조건 : 가장 많이 주문 받은 회사 직원명과 갯수
-- 결과 :  EmployeeID	MAX(total_Orders)
-- 			4			40