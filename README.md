**🚕 Ola Ride-Sharing Analytics Dashboard (Power BI Case Study)**

**🧠 Business Problem**

Ride-sharing platforms like Ola face operational challenges such as:

High cancellation rates from customers and drivers
Inefficient vehicle allocation
Lack of visibility into booking performance
Revenue loss due to ride drop-offs

These issues directly impact customer experience, driver efficiency, and platform profitability.

**🎯 Project Objective**

Built an end-to-end Power BI analytics solution to:

Monitor ride performance metrics
Analyze cancellation behavior (customer vs driver)
Optimize vehicle allocation strategy
Identify high-value customer segments
Improve operational efficiency using data-driven insights

**🛠 Tech Stack**

Excel → Data cleaning & preprocessing
Power BI → Dashboard development
DAX → KPI calculations
Data Visualization → Interactive reporting

**📊 Key KPIs**

Total Bookings
Successful Ride Rate
Cancellation Rate
Average Ride Distance
Revenue Trend
Repeat Customer Ratio

**📈 Dashboard Features**

Interactive slicers (Vehicle Type, Date, Booking Status)
KPI cards for real-time performance tracking
Trend analysis for ride performance
Geographic ride distribution map
Customer segmentation table (Top riders)

**🧮 DAX Measures Used**

Success Rate =
DIVIDE([Successful Bookings], [Total Bookings], 0)

Cancellation Rate =
DIVIDE([Cancelled Bookings], [Total Bookings], 0)

**🔍 Key Business Insights**

✔ Overall cancellation rate is ~25%, with driver-related cancellations contributing significantly during peak hours.

✔ Short-distance trips are more frequently cancelled, indicating inefficiency in driver allocation strategy.

✔ Prime Sedan vehicles show 2.5x higher average trip distance compared to Auto, indicating segmentation imbalance.

✔ A small group of repeat customers contributes disproportionately to ride frequency, indicating strong retention potential.

**💡 Business Recommendations**

✔ Dynamic Driver Allocation System
High cancellation rates during peak hours indicate mismatch in ride assignment → implement real-time allocation optimization.

✔ Trip-Type Based Vehicle Segmentation
Short trips should be prioritized for Auto drivers, while long-distance rides should be routed to Prime vehicles.

✔ Driver Performance Monitoring System
Introduce cancellation-based KPI scoring to identify and improve low-performing drivers.

✔ Customer Retention Strategy
Top repeat customers should be targeted with loyalty programs to increase ride frequency and lifetime value.

**📊 Business Impact**

Reduced inefficiency in ride allocation
Improved visibility into cancellation patterns
Enhanced decision-making for operations team
Potential ~20% operational efficiency improvement

**Metric Insight Recommendation** 
25% Cancellation Rate Driver issues peak at 65% Prioritize short trips for Auto drivers ​Vehicle Distance Variance Prime Sedan = 2.5x Auto distance Allocate long trips to Prime vehicles ​Top 5 Customers 7x repeat rides Loyalty program targeting.

ROI Potential: 20% efficiency gain through optimized allocation

**🧠 Tools Used**

Power BI | Excel | DAX | Data Modeling | Business Intelligence
