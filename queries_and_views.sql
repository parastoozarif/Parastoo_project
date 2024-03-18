-- Query to view transaction history
SELECT * FROM Transactions;

-- Query to view account balances
SELECT * FROM Accounts;

-- View to get total expenses per category
CREATE VIEW ExpensePerCategory AS
SELECT c.name AS category, SUM(t.amount) AS total_expense
FROM Transactions t
JOIN Categories c ON t.category_id = c.category_id
GROUP BY c.name;
