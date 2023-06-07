SELECT COUNT(*),EmployeeID
FROM Orders
WHERE EmployeeID IN(7,9)
GROUP BY EmployeeID

-- 조건 : EmployeeID가 7, 9 직원에 각각 주문 갯수
-- 문제 https://www.w3schools.com/sql/trysql.asp?filename=trysql_is_null
-- 결과 : 직원7 은 14 , 직원9는 6