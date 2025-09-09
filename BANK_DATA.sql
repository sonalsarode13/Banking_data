CREATE DATABASE bank_data;

SELECT * FROM bank_data.dbo.financial_loan;

-- 1. Total Loan Applications:
select count(id) as Total_Loan_Applications
from bank_data.dbo.financial_loan

-- 2. Total Funded Amount
select sum(loan_amount) as Total_Funded_Amount
from bank_data.dbo.financial_loan

-- 3. Total Amount Received:
select sum(total_payment) as Total_Payment
from bank_data.dbo.financial_loan

-- 4. Average Interest Rate:
select round(avg(int_rate),3) *100 as Average_Interest_Rate_Percentage
from bank_data.dbo.financial_loan

-- 5. Average Debt-to-Income Ratio (DTI)
select round(avg(dti),3)*100 as Average_Debt_To_Income_Percentage
from bank_data.dbo.financial_loan


SELECT * FROM bank_data.dbo.financial_loan;
SELECT count(id) as Good_Loan_Applications FROM bank_data.dbo.financial_loan
where loan_status='Fully Paid' or loan_status='Current'

SELECT sum(loan_amount) as Good_Loan_Funded_Amount FROM bank_data.dbo.financial_loan
where loan_status='Fully Paid' or loan_status='Current'


SELECT sum(total_payment) as Good_Loan_Recieved_Amount FROM bank_data.dbo.financial_loan
where loan_status='Fully Paid' or loan_status='Current'


SELECT count(id) as Bad_Loan_Applications FROM bank_data.dbo.financial_loan
where loan_status='Charged Off'

SELECT sum(loan_amount) as Bad_Loan_Funded_Amount FROM bank_data.dbo.financial_loan
where loan_status='Charged Off'


SELECT sum(total_payment) as Bad_Loan_Recieved_Amount FROM bank_data.dbo.financial_loan
where loan_status='Charged Off'

SELECT * FROM bank_data.dbo.financial_loan;

-- 1. Monthly Trends by Issue Date
select 
DATENAME(month,issue_date),
count(id) as Total_Loan_Applications,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_amount_recieved
FROM bank_data.dbo.financial_loan
group by DATENAME(MONTH,issue_date)
order by DATENAME(MONTH,issue_date)

SELECT * FROM bank_data.dbo.financial_loan

-- 2. Regional Analysis by State
select count(id) as Total_Loan_Applications,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_amount_recieved,
address_state
from bank_data.dbo.financial_loan
group by address_state

-- 3. Loan Term Analysis 
select count(id) as Total_Loan_Applications,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_amount_recieved,
term
from bank_data.dbo.financial_loan
group by term

SELECT * FROM bank_data.dbo.financial_loan
-- 4. Employee Length Analysis
select count(id) as Total_Loan_Applications,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_amount_recieved,
emp_length
from bank_data.dbo.financial_loan
group by emp_length

ALTER DATABASE bank_data SET EMERGENCY; DBCC CHECKDB(bank_data); 
ALTER DATABASE bank_data SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DBCC CHECKDB(bank_data, REPAIR_ALLOW_DATA_LOSS); 
ALTER DATABASE bank_data SET MULTI_USER;

-- 5. Loan Purpose Breakdown
select count(id) as Total_Loan_Applications,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_amount_recieved,
purpose
from bank_data.dbo.financial_loan
group by purpose


-- 6. Home Ownership Analysis
select count(id) as Total_Loan_Applications,
sum(loan_amount) as total_funded_amount,
sum(total_payment) as total_amount_recieved,
home_ownership
from bank_data.dbo.financial_loan
group by home_ownership


