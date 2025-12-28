# Ola-data_analytics_POWERBI
End-to-end analytics for Ola ride operations analyzing rides, drivers, and customer patterns. Uses Power BI dashboards to monitor ride performance, optimize driver allocation, analyze cancellations, and improve operational efficiency.


🚀 Ola Ride-Sharing Analytics: End-to-End Power BI Dashboard
100K+ rows analyzed | SQL ETL → Interactive Power BI Visuals | Business Insights for Ride-Sharing Optimization
High cancellation rates (25% total: 10K+ customer cancels, 6.5K driver issues) and suboptimal vehicle allocation hurt revenue. This dashboard optimizes:​

Success Rate Tracking: 70%+ successful bookings monitored

Vehicle Optimization: Auto (6km avg) vs Prime Sedan (15km avg) performance

Customer Retention: Top 10 repeat riders identified for campaigns

🛠 Tech Stack & Workflow
Data Extraction	SQL (MySQL Workbench)	10+ queries with views, GROUP BY, COUNT, LIMIT [sql] ​
Data Cleaning	Excel	Removed 857 duplicates, AVERAGEIF for metrics ​
Visualization	Power BI	DAX measures, slicers, maps, KPIs [powerbi]

📈 Power BI Dashboard Features
Interactive Elements:

Slicers: Vehicle type, date range, booking status

KPIs: Success rate, total revenue, cancellation trends

Visuals: Bar chart (cancellations), Map (distances), Line chart (trends), Table (top customers)

DAX Measures Created:

Success Rate = DIVIDE([Successful Bookings], [Total_Booking], 0)
Cancellation Rate = DIVIDE([Cancelled Bookings], [Total_Bookings], 0)

🚀 Business Impact
Metric	Insight	Recommendation
25% Cancellation Rate	Driver issues peak at 65%	Prioritize short trips for Auto drivers ​
Vehicle Distance Variance	Prime Sedan = 2.5x Auto distance	Allocate long trips to Prime vehicles ​
Top 5 Customers	7x repeat rides	Loyalty program targeting.

ROI Potential: 20% efficiency gain through optimized allocation
