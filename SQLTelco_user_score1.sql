USE master;
GO
# Top 10 Users by Satisfaction
SELECT TOP 10 * FROM telco_xdr_analysis;
SELECT TOP 10 *
FROM telco_xdr_analysis
ORDER BY Satisfaction DESC;
#Least 10 Users by Experience
SELECT TOP 10 *
FROM telco_xdr_analysis
ORDER BY Experience ASC;

# Overall Average Scores
SELECT 
    AVG(Engagement) AS Avg_Engagement,
    AVG(Experience) AS Avg_Experience,
    AVG(Satisfaction) AS Avg_Satisfaction
FROM telco_xdr_analysis;
# Record Count of Table
SELECT COUNT(*) FROM telco_xdr_analysis;
# Satisfaction Score Distribution (SQL version)
SELECT 
  CASE 
    WHEN Satisfaction >= 6000000000 THEN 'High'
    WHEN Satisfaction BETWEEN 3000000000 AND 5999999999 THEN 'Medium'
    ELSE 'Low'
  END AS Satisfaction_Level,
  COUNT(*) AS User_Count
FROM telco_xdr_analysis
GROUP BY 
  CASE 
    WHEN Satisfaction >= 6000000000 THEN 'High'
    WHEN Satisfaction BETWEEN 3000000000 AND 5999999999 THEN 'Medium'
    ELSE 'Low'
  END;
  # Basic Aggregation Example – Summary Metrics
  SELECT 
  AVG(Engagement) AS Avg_Engagement,
  AVG(Experience) AS Avg_Experience,
  AVG(Satisfaction) AS Avg_Satisfaction
FROM telco_xdr_analysis;

# Top 10 Users with Highest Satisfaction
SELECT TOP 10 * 
FROM telco_xdr_analysis
ORDER BY Satisfaction DESC;

# Filter Specific User Data (example IMSI)
SELECT * 
FROM telco_xdr_analysis
WHERE User_ID = '208200000000000';
