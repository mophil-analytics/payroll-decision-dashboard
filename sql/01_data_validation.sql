-- =========================================
-- PAYROLL DATA VALIDATION
-- Project: Payroll Decision Dashboard
-- Analyst: Mophil Analytics
-- =========================================


-- STEP 1: Total Record Count

SELECT COUNT(*) AS total_records
FROM payroll_data;



-- STEP 2: Check for NULL Employee IDs

SELECT *
FROM payroll_data
WHERE employee_id IS NULL;



-- STEP 3: Validate Department Categories

SELECT DISTINCT department
FROM payroll_data
ORDER BY department;



-- STEP 4: Payroll Status Distribution

SELECT
    payroll_status,
    COUNT(*) AS total_count
FROM payroll_data
GROUP BY payroll_status
ORDER BY total_count DESC;



-- STEP 5: Employment Type Distribution

SELECT
    employment_type,
    COUNT(*) AS total_staff
FROM payroll_data
GROUP BY employment_type;



-- STEP 6: Salary Range Validation

SELECT
    MIN(monthly_salary) AS minimum_salary,
    MAX(monthly_salary) AS maximum_salary,
    ROUND(AVG(monthly_salary), 2) AS average_salary
FROM payroll_data;
