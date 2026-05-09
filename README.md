**🚕 Ola Ride-Sharing Analytics Dashboard (Power BI Case Study)**

**🧠 Business Problem**

Ola’s ride ecosystem shows operational inefficiencies affecting revenue and customer experience:

High ride cancellation rates (customer + driver-side)

Imbalanced vehicle allocation across demand patterns

Lack of visibility into booking success and failure patterns

Revenue loss due to failed ride fulfillment

👉 These issues reduce platform efficiency, driver utilization, and customer satisfaction.

**🎯 Project Objective**

Built an end-to-end Power BI analytics solution to:

Track ride performance and cancellation trends

Analyze driver vs customer cancellation behavior

Improve vehicle allocation efficiency

Identify high-value customer segments

Enable KPI-driven operational decisions


**📊 Key KPIs**

Total Bookings
Successful Ride Rate
Cancellation Rate
Average Ride Distance
Revenue Trend
Repeat Customer Ratio


**🛠 Tech Stack**

Power BI | Excel | DAX | Data Modeling | Business Intelligence


**📈 Dashboard Highlights**

KPI cards for real-time performance tracking

Cancellation analysis (customer vs driver breakdown)

Ride trend analysis over time

Vehicle type performance comparison

Customer segmentation insights

Interactive filters (date, vehicle type, booking status)


**🧮 DAX Measures**

Success Rate = DIVIDE([Successful Bookings], [Total Bookings], 0)

Cancellation Rate = DIVIDE([Cancelled Bookings], [Total Bookings], 0)


**🔍 Key Business Insights**

✔ ~25% cancellation rate is mainly driven by driver-side cancellations during peak hours, indicating supply-demand imbalance

✔ Short-distance rides have higher cancellation probability, showing inefficient trip allocation

✔ Prime Sedan trips have ~2.5x higher distance than Auto, revealing segmentation imbalance in vehicle usage

✔ Repeat customers contribute disproportionately to total bookings, indicating strong customer concentration


**💡 Business Recommendations**

✔ Dynamic Driver Allocation System
→ Optimize real-time ride assignment during peak hours

✔ Trip-Based Vehicle Segmentation
→ Assign Auto for short trips, Prime vehicles for long-distance rides

✔ Driver Performance Scoring System
→ Track cancellation behavior as a KPI for driver optimization

✔ Customer Retention Strategy
→ Target high-frequency users with loyalty programs


**📊 Business Impact**

✔ Identified ~25% cancellation-driven inefficiency impacting ride completion rate

✔ Improved visibility into driver vs customer behavior patterns

✔ Enabled data-driven vehicle allocation strategy design

✔ Highlighted high-value customer segments for retention focus

✔ Estimated potential ~20% operational efficiency improvement opportunity



**🧠 Executive Summary**

This project demonstrates an end-to-end Data Analytics workflow:

Raw Data → SQL/Excel → Power BI Modeling → KPI Dashboard → Insights → Business Decisions

It replicates real-world mobility analytics similar to ride-sharing platforms like Ola and Uber, focusing on operational efficiency and revenue optimization.
