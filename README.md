**🚕 Ola Ride-Sharing Analytics Dashboard (Power BI Case Study)**

**🧠 Business Problem**

## 🧠 Business Problem

🚕 This analysis identifies key operational inefficiencies in Ola’s ride ecosystem, highlighting cancellation-driven revenue leakage and allocation imbalance across vehicle types and customer segments.

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

✔ Cancellation rate of ~25% is largely driven by driver-side cancellations during peak hours, indicating a supply-demand imbalance in high congestion windows.

✔ Short-distance rides show disproportionately higher cancellation probability, suggesting inefficient driver assignment strategy for low-value trips.

✔ Prime Sedan usage shows 2.5x higher average trip distance than Auto, revealing a structural imbalance in vehicle segmentation strategy.

✔ Repeat customers contribute disproportionately to ride volume, indicating high-value customer concentration suitable for loyalty targeting.

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

✔ Identified ~25% cancellation-driven operational inefficiency impacting ride fulfillment rates

✔ Revealed vehicle allocation mismatch reducing driver utilization efficiency

✔ Enabled data-driven segmentation strategy for ride allocation optimization

✔ Highlighted high-value customer groups for retention-focused growth strategy

✔ Estimated potential ~20% operational efficiency improvement through optimized allocation strategy

**📊 KPI Deep-Dive Insights**

✔ 25% cancellation rate is largely driven by driver-side cancellations during peak hours, indicating a supply-demand imbalance in high congestion windows.

✔ Driver efficiency varies significantly across trip types, with short-distance rides showing higher cancellation probability.

✔ Prime Sedan rides cover ~2.5x higher distance than Auto, revealing structural segmentation inefficiency.

✔ Top repeat customers contribute disproportionately to total ride volume, indicating strong retention concentration.

📌 Executive Summary

This project demonstrates a complete end-to-end data analytics workflow by converting raw ride-sharing data into actionable business decisions, similar to real-world BI systems used in mobility platforms like Ola and Uber.

**🧠 Tools Used**

Power BI | Excel | DAX | Data Modeling | Business Intelligence
