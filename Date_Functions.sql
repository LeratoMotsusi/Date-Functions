-- Databricks notebook source
------------------------------------------------------------------------------------
--CURRENT DATES & TIMES
------------------------------------------------------------------------------------

SELECT CURRENT_DATE(); --- Todays date only
SELECT CURRENT_TIMESTAMP(); --- Timestamp
SELECT NOW();--- Timestamp

------------------------------------------------------------------------------------
--TIME ZONE CONVERSIONS
------------------------------------------------------------------------------------

SELECT FROM_UTC_TIMESTAMP ('2026-06-10 20:00:00', 'Africa/Johannesburg'); ---Converting from UTC to a specific timezone
SELECT FROM_UTC_TIMESTAMP ('2026-06-22 20:00:00', 'America/New_York'); ---Converting from UTC to a New York timezone
SELECT FROM_UTC_TIMESTAMP ('2026-06-30 20:00:00', 'Africa/Lagos');---Converting from UTC to a Lagos timezone
---SELECT CURRENT_TIMESTAMP (AT TIMEZONE 'Africa/Johannesburg'); ----- TBI




------------------------------------------------------------------------------------
--EXTRACTING DATE PARTS - For easier analysis of data points in the date column
------------------------------------------------------------------------------------

SELECT YEAR('2026-06-10') AS Year,
       MONTH('2026-06-10') AS Month,
       DAY('2026-06-10') AS Day,
       MONTHNAME('2026-06-10') AS Month_name,
       DAYNAME('2026-06-10') AS Day_name,
       MINUTE('2026-06-10 20:30:00') AS Minute,
       SECOND('2026-06-10 20:30:45') AS Second,
       DAYOFWEEK('2026-10-13') AS Leratos_birthday,
       DAYOFYEAR('2026-10-13') AS Day_of_year,
       WEEKOFYEAR('2026-10-13') AS Week_of_Year,
       QUARTER('2026-10-13') AS Quarter_of_Year;


-- ANSI EXTRACT syntax (works across most databases)
SELECT EXTRACT (YEAR FROM '2026-06-10') AS Year,
        EXTRACT (MONTH FROM '2026-06-10') AS Month,
        EXTRACT (DOW FROM '2026-10-13') AS Dow; --- Day of week


------------------------------------------------------------------------------------
--FORMATTING DATES 
------------------------------------------------------------------------------------

-- Format a date as a readable string
SELECT DATE_FORMAT('2024-06-15', 'dd MMMM yyyy');   -- 15 June 2024
SELECT DATE_FORMAT('2024-06-15', 'MM/dd/yyyy');     -- 06/15/2024
SELECT DATE_FORMAT(current_date(), 'EEEE');          -- Wednesday
SELECT DATE_FORMAT(current_date(), 'yyyy-QQQ');      -- 2024-Q2

-- Parse a string → date
SELECT TO_DATE('15-06-2024', 'dd-MM-yyyy');
SELECT TO_TIMESTAMP('15-06-2024 14:30:00', 'dd-MM-yyyy HH:mm:ss');

















