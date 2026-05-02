-- ============================================================
-- HackerRank SQL Solutions — Basic Select & Advanced Select
-- Author  : Ahmed Al Rafsan
-- GitHub  : github.com/Ahmed-Al-Rafsan
-- Updated : May 2026
-- ============================================================

-- ------------------------------------------------------------
-- Problem : Weather Observation Station 9
-- Category: Basic Select
-- Topic   : REGEXP — cities NOT starting with a vowel
-- ------------------------------------------------------------
SELECT DISTINCT City 
FROM Station 
WHERE City NOT REGEXP '^[AEIOUaeiou]';

-- ------------------------------------------------------------
-- Problem : Weather Observation Station 10
-- Category: Basic Select
-- Topic   : REGEXP — cities NOT ending with a vowel
-- ------------------------------------------------------------
SELECT DISTINCT City 
FROM Station 
WHERE City NOT REGEXP '[AEIOUaeiou]$';

-- ------------------------------------------------------------
-- Problem : Weather Observation Station 11
-- Category: Basic Select
-- Topic   : REGEXP OR — cities not starting OR not ending with vowel
-- ------------------------------------------------------------
SELECT DISTINCT City 
FROM Station 
WHERE City NOT REGEXP '^[AEIOUaeiou]' 
   OR City NOT REGEXP '[AEIOUaeiou]$';

-- ------------------------------------------------------------
-- Problem : Weather Observation Station 12
-- Category: Basic Select
-- Topic   : REGEXP AND — cities not starting AND not ending with vowel
-- ------------------------------------------------------------
SELECT DISTINCT City 
FROM Station 
WHERE City NOT REGEXP '^[AEIOUaeiou]' 
  AND City NOT REGEXP '[AEIOUaeiou]$';

-- ------------------------------------------------------------
-- Problem : Higher Than 75 Marks
-- Category: Basic Select
-- Topic   : RIGHT() string function for custom sort order
-- ------------------------------------------------------------
SELECT Name 
FROM Students
WHERE Marks > 75 
ORDER BY RIGHT(Name, 3), ID ASC;

-- ------------------------------------------------------------
-- Problem : Employee Names (alphabetical order)
-- Category: Basic Select
-- Topic   : Simple ORDER BY
-- ------------------------------------------------------------
SELECT Name 
FROM Employee
ORDER BY Name ASC;

-- ------------------------------------------------------------
-- Problem : Employee Salaries
-- Category: Basic Select
-- Topic   : Multi-condition WHERE filter
-- ------------------------------------------------------------
SELECT Name 
FROM Employee 
WHERE Salary > 2000 AND Months < 10
ORDER BY Employee_id ASC;

-- ------------------------------------------------------------
-- Problem : Type of Triangle
-- Category: Advanced Select
-- Topic   : CASE WHEN with triangle inequality theorem
-- ------------------------------------------------------------
SELECT 
    CASE 
        WHEN A + B <= C OR B + C <= A OR A + C <= B THEN 'Not A Triangle'
        WHEN A = B AND B = C                         THEN 'Equilateral'
        WHEN A = B OR A = C OR B = C                 THEN 'Isosceles'
        ELSE                                              'Scalene'
    END AS triangle_type
FROM TRIANGLES;

-- ------------------------------------------------------------
-- Problem : The PADS
-- Category: Advanced Select
-- Topic   : CONCAT, LEFT(), LOWER(), GROUP BY, multi-query
-- ------------------------------------------------------------
-- Query 1: Name(OccupationInitial)
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS formatted_name
FROM OCCUPATIONS 
ORDER BY Name;

-- Query 2: Occupation count sentence
SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS 
GROUP BY Occupation
ORDER BY COUNT(*), Occupation;
