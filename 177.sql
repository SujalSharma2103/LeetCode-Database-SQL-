
SELECT max(salary) 
      FROM (
          SELECT 
              salary,
              DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
          FROM Employee
      ) t
      WHERE rnk = N

-- Nth Highest Salary
-- Write a solution to find the nth highest distinct salary from the Employee table. If there are less than n distinct salaries, return null.

-- Example 1:

-- Input: 
-- Employee table:
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+
-- n = 2
-- Output: 
-- +------------------------+
-- | getNthHighestSalary(2) |
-- +------------------------+
-- | 200                    |
-- +------------------------+
-- Example 2:

-- Input: 
-- Employee table:
-- +----+--------+
-- | id | salary |
-- +----+--------+
-- | 1  | 100    |
-- +----+--------+
-- n = 2
-- Output: 
-- +------------------------+
-- | getNthHighestSalary(2) |
-- +------------------------+
-- | null                   |
-- +------------------------+