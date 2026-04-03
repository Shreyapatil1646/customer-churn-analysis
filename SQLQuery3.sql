select Gender,COUNT(Gender)as TotalCount,
Count(Gender)*100.0 /(select Count(*) from stg_Churn)as Percentage
From stg_Churn
Group By Gender

select Contract,COUNT(Contract)as TotalCount,
Count(Contract)*1.0 /(select Count(*) from stg_Churn)as Percentage
From stg_Churn
Group By Contract


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100  as RevPercentage
from stg_Churn
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State)*100.0 / (Select Count(*) from stg_Churn) as Percentage
from stg_Churn
Group by State
Order by Percentage desc


select Distinct Internet_Type
from stg_Churn