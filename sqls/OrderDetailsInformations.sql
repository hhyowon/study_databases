SELECT T_PRD.ProductName ,T_PRD.Price, T_ORDT.Quantity, T_CST.CustomerName
FROM Orders as T_ORD
	JOIN Products as T_PRD
    ON T_ORDT.ProductID = T_PRD.ProductID 
    JOIN OrderDetails as T_ORDT
    ON T_ORD.OrderID = T_ORDT.OrderID
    JOIN Customers AS T_CST
	ON T_ORD.CustomerID = T_CST.CustomerID


-- - Table : OrderDetails
-- - 조건 : 제품명,가격, 주문 갯수, 고객명 표시
-- - 결과 :
-- Number of Records: 518
-- ProductName	    Price	Quantity	CustomerName
-- Queso Cabrales	  21	     12	       Wilman Kala

