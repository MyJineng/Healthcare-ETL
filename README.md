This project analyzes healthcare expenditure data in the United States. The data is sourced from two government agencies: CMS.gov (Centers for Medicare & Medicaid Services) and Fred API (Federal Reserve Economic Data). 

US Centers for Medicare and Medicaid Services (2024). Health Expenditures by State of Residence: Summary 	Tables [Data set]. CMS.gov. https://www.cms.gov/data-research/statistics-trends-and-reports/national health-expenditure-data/state-residence

St. Louis Fred Economic Data (2024). Income Per Capita Consumption Expenditures by State. [Data 	Set]. Fred.stlouisfed.org. https://fred.stlouisfed.org/release/tables?rid=391&eid=217586

# Required Liabraries:
%pip install psycopg2 - for interacting with PostGres(PGADMIN) database
%pip install requests - for accessing Fred API
%pip install pandas - for data cleaning and local visualizations
%pip install numpy - for statistical visualizations
%pip install openpyxl - for viewing excel sheets used for clean(data) function
%pip install sqlalchemy - for sending queries to PostGres(PGADMIN) database
%pip install matplotlib - for visualizations

# Schema and Queries

The project focuses on the following relationships:

# Income and healthcare expenditure: 
This analysis explores how income levels affect spending on Medicaid in addition to Medicaid Expansion Adoption (ACA) The Data shows a weak relationship (r=0.43) between Real Personal Income per capita and Medicaid Spending per capita. However, the majority ACA opt out states are in the 1st quartile of Medicaid Spending.
# Health insurance types: 
The project compares expenditures across different health insurance categories, including Medicare, Medicaid, and Private Insurance.
# Regional health expenditure: 
This analysis examines how healthcare spending varies across different regions in the United States. New England spends the most on healthcare, while the South spends the least.
# Home health vs. nursing expenditure: 
The project compares spending on home health care services with spending on nursing care facilities.
# Hospital expenditure and clinical services:
This analysis investigates the relationship between spending on hospitals and spending on clinical services.

The project provides insights into how various factors influence healthcare expenditure in the United States. This information can be valuable for policymakers, healthcare providers, and researchers interested in understanding healthcare spending patterns.
