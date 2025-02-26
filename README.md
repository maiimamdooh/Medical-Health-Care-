# Medical Health Care Analysis 

## Project Description
This project focuses on analyzing the financial and operational data of a healthcare provider. The key metrics such as billing amounts, treatment costs. The project also covers patient data, including length of stay, visit types and their satisfaction rate. The goal is to offer actionable insights that can help improve financial efficiency and patient care outcomes.

## Contents 

- [Data Preparation](https://github.com/maiimamdooh/Medical-Health-Care-/blob/main/README.md#data-preparation)
- [Features](https://github.com/maiimamdooh/Medical-Health-Care-/blob/main/README.md#features)
- [Data Visualization](https://github.com/maiimamdooh/Medical-Health-Care-/blob/main/README.md#data-visualization-dashboard)
- [Data Insights](https://github.com/maiimamdooh/Medical-Health-Care-/blob/main/README.md#data-insights)


## Data Preparation

With a quick overview on the data found that cities table with wrong data as each city present in each state (such as London must be in England only not in Weels or Scottland also) like this
![city 3](https://github.com/user-attachments/assets/a256ce3d-9c1e-4afa-9fb4-c886f970d5d8)

So i handeled this with SQL as following [city cleaning](https://github.com/maiimamdooh/Medical-Health-Care-/blob/main/city%20cleaing.sql)

![clean](https://github.com/user-attachments/assets/1aeaba38-0bda-48b5-8364-e87ff56e85ef)

after that we should replace all citiy_id with only the right ones in Patients table so i did that with a dax function in power query which is :

![City id](https://github.com/user-attachments/assets/a92e36a6-c7b0-4936-b903-7e065244dfc5)


-- now we get a [new-cities-table](https://github.com/maiimamdooh/Medical-Health-Care-/blob/main/CITIY%20CLEANED.csv)  with only 10 row and a [new-patients-table](https://github.com/maiimamdooh/Medical-Health-Care-/blob/main/Patient%20Cleaned.csv) with only the correct id
-- other handling of the was with null value such as in Insurance Coverage => 0 and so on.

 
## Features

 - `Billing Analysis`: Tracks billing amounts by department and year.
 - `Department Insights`: Displays total visits per department.
 - `Patient Duration Analysis`: Shows the average duration of admitted patients.
 - `Emergency & Follow-Up Visits`: Provides breakdowns of emergency and follow-up visits.
 - `Time-Based Trends`: Analyzes patient visits over time (yearly, quarterly, monthly).
 - `Interactive Buttons & Filters`: Includes buttons for easy navigation and data filtering.

## Data Visualization [Dashboard](https://github.com/maiimamdooh/Medical-Health-Care-/blob/main/health%20care%20dashboard.pbix) 
  Data visualization for the data analysis was done in Microsoft Power BI Desktop:
  
  ![page 1](https://github.com/user-attachments/assets/21ddbc79-b673-498e-9fab-f3d0ee6f6f20)
  
  ![page 2](https://github.com/user-attachments/assets/18201c87-affd-489e-89c7-a9700e9b930b)



## Data Insights

- `Total Billing Amount`: 3.36M.
- `Total Admitted Patients` : 1232 patient with avg duration length 3 days and 
 satisfaction rate 3.8.
- `Top Billing Procedure`: X-Ray (1.15M).
- `Top Diagnosis by Billing`: Hypertension.
- `Top Department by Visits`: Cardiology (1279 total visits).
- `Top Department by Emergency Visits`: Orthopedics (509).
- `Emergency Visits`: 38% of total vists.
