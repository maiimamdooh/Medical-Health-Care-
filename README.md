# Medical Health Care Analysis 

## Project Description
This project focuses on analyzing the financial and operational data of a healthcare provider. The key metrics such as billing amounts, treatment costs. The project also covers patient data, including length of stay, visit types and their satisfaction rate. The goal is to offer actionable insights that can help improve financial efficiency and patient care outcomes.

## Data Preparation

With a quick overview on the data found that cities table with wrong data as each city present in each state (such as London must be in England only not in Weels or Scottland also) So i handeled this with SQL as following [city cleaning]()
after that we should replace all citiy_id with only the right ones in Patients table so i did that with a dax function in power query which is :
= Table.AddColumn(#"Changed Type", "City_id", each
if List.Contains( {2,3,4}, [City ID]) then 1
else if List.Contains( {6,7,8}, [City ID]) then 5 
else if List.Contains( {9,10,12}, [City ID]) then 11
else if List.Contains( {13,14,16}, [City ID]) then 15 
else if List.Contains( {18,19,20}, [City ID]) then 17
else if List.Contains( {22,23,24}, [City ID]) then 21 
else if List.Contains( {26,27,28}, [City ID]) then 25
else if List.Contains( {30,31,32}, [City ID]) then 29 
else if List.Contains( {34,35,36}, [City ID]) then 33 
else if List.Contains( {38,39,40}, [City ID]) then 37 
else [City ID])

-- now we get a new cities table with only 10 row and a new patients table with only the correct id
-- other handling of the was with null value such as in Insurance Coverage => 0 and so on.

 
## Features

 - Billing Analysis: Tracks billing amounts by department and year.
 - Department Insights: Displays total visits per department.
 - Patient Duration Analysis: Shows the average duration of admitted patients.
 - Emergency & Follow-Up Visits: Provides breakdowns of emergency and follow-up visits.
 - Time-Based Trends: Analyzes patient visits over time (yearly, quarterly, monthly).
 - Interactive Buttons & Filters: Includes buttons for easy navigation and data filtering.

## Data Visualization (Dashboard) 
  Data visualization for the data analysis was done in Microsoft Power BI Desktop:

## Data Insights

`Total Billing Amount`: 3.36M
`Total Admitted Patients` : 1232 patient with avg duration length 3 days and 
 satisfaction rate 3.8
`Top Billing Procedure`: X-Ray (1.15M)
`Top Diagnosis by Billing`: Hypertension
`Top Department by Visits`: Cardiology (1279 total visits)
`Top Department by Emergency Visits`: Orthopedics (509)
`Emergency Visits`: 38% of total vists
