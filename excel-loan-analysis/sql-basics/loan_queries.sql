-- View all loan records
SELECT *
FROM loan_approval_dataset;

-- Count total loan applications
SELECT COUNT(*) AS total_applications
FROM loan_approval_dataset;

-- Count approved vs rejected loans
SELECT loan_status, COUNT(*) AS total_count
FROM loan_approval_dataset
GROUP BY loan_status;

-- Average loan amount
SELECT AVG(loan_amount) AS average_loan_amount
FROM loan_approval_dataset;

-- Approval counts by income group
SELECT Income_Group, loan_status, COUNT(*) AS total_count
FROM loan_approval_dataset
GROUP BY Income_Group, loan_status
ORDER BY Income_Group;
