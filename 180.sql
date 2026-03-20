
select distinct num as ConsecutiveNums
from (
    select id, num, 
      lag(num, 1) over (order by id) as past1,
      LAG(num, 2) OVER (ORDER BY id) AS past2
    from Logs
)t
where num = past1 and num = past2

-- Consecutive Numbers
-- Find all numbers that appear at least three times consecutively.
-- Return the result table in any order.

-- Input: 
-- Logs table:
-- +----+-----+
-- | id | num |
-- +----+-----+
-- | 1  | 1   |
-- | 2  | 1   |
-- | 3  | 1   |
-- | 4  | 2   |
-- | 5  | 1   |
-- | 6  | 2   |
-- | 7  | 2   |
-- +----+-----+
-- Output: 
-- +-----------------+
-- | ConsecutiveNums |
-- +-----------------+
-- | 1               |
-- +-----------------+
-- Explanation: 1 is the only number that appears consecutively for at least three times.