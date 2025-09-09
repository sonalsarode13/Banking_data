# Banking_data


Bank Loan Report Dashboard
# Project Overview
This project implements an interactive dashboard for analyzing bank loan applications and performance metrics. The dashboard provides comprehensive insights into loan data, including summaries, detailed records, and visual overviews, to support decision-making in loan issuance, risk assessment, and financial reporting. It visualizes key performance indicators (KPIs) such as total applications, funded amounts, repayment status, and demographic distributions.
The dashboard is built using a business intelligence tool (inspired by Microsoft Power BI or similar), featuring dynamic charts, tables, and maps. It processes loan data to highlight trends in good vs. bad loans, applicant profiles, and regional patterns.
Key Features

# Interactive Navigation: Users can switch between Summary, Overview, and Details views using sidebar buttons.
Dynamic Selections: Filters for measures (e.g., Total Loan Applications), State, Grade, and Purpose allow customized analysis.
Visual Elements:

# KPI Cards: Display core metrics like total applications (3K MTD), funded amounts ($436M MTD), received amounts ($473M MTD), average interest rate (12.05% MTD), and average DTI (13.33% MTD).
Pie Charts: Show breakdowns of good/bad loan applications and funded amounts (e.g., 86.2% good loans, 13.8% bad loans).
Bar and Line Charts: Illustrate loan applications by employee tenure, purpose (e.g., debt consolidation, credit card, home improvement), and monthly trends.
Donut Charts: Represent loan terms (e.g., <10 months: 28%, 60 months: 73%) and home ownership (e.g., Rent: 18K, Mortgage: 17K, Own: high proportion).
Geographic Map: Displays loan applications by address state, with points across regions like America, Europe, and Africa.
Data Tables: Detailed listings of individual loans with columns for ID, purpose, ownership, grade, issue date, funded amount, interest rate, installment, and totals.


# Loan Status Breakdown: Categorizes loans as Fully Paid or Charged Off, with aggregated totals (e.g., Grand Total: $435.7M funded, $473M received).
Good vs. Bad Loan Insights: Highlights approved loans (33K good applications, $370.2M funded) vs. risky ones (5K bad applications, $64M funded).

# Data Summary

Total Loan Applications: 3K (MTD), 4.31K (YTD), with 6.9% MoM growth.
Funded Amounts: $436M (MTD), $54M (MoM), 13% growth.
Received Amounts: $473M (MTD), $58M (MoM), 15.84% growth.
Average Metrics: Interest Rate 12.05% (MTD), DTI 13.33% (MTD).
Loan Purposes: Primarily car and mortgage in the sample data; broader categories include debt consolidation (10K+), credit card (5K), home improvement (3K), major purchases (2K).
Time Period: Data spans 2021 (e.g., January to July), with monthly trends showing increasing applications.
Sample Details Table Columns: Sum of ID, Purpose, Home Ownership, Grade, Sub-grade, Issue Date, Total Amount Funded, Sum of Int Rate, Sum of Installment, Total Amount Received.
Aggregates: Grand totals include $435.7M funded, $473M received, 38,576 applications, 13.33% avg DTI.

# Implementation Highlights

Data Processing: Aggregated loan records into summaries for good/bad classifications, status (Fully Paid/Charged Off), and calculations for MTD/MoM/YTD comparisons.
Visual Design: Color-coded scheme (e.g., teal for good loans, pink for bad; orange for KPIs) for intuitive reading. Responsive layout with drill-down capabilities.
Insights Derived:

# High approval rate for good loans (86.2%), but bad loans represent 13.8% of applications and $37M received.
Strong repayment in fully paid loans ($355.3M funded, $417.5M received).
Geographic spread indicates international exposure (e.g., points in Europe and Africa).
Employee tenure analysis shows concentration in 1-5 years of service.


# Tools Used: Power BI (inferred from map branding), with DAX for measures, M for data transformation.
