
# ** OLA RIDE ANALYTICS (END-TO-END POWER BI OPERATIONAL DASHBOARD)**

## **1. Business Problem Understanding**

Ola is a major ride-sharing platform dealing with massive daily booking volumes, driver availability challenges, and customer drops. This operational project analyzes exactly **103,024 ride booking requests** captured across a 1-month time window (July 2025) to evaluate fleet performance, isolate leakage points, and track platform satisfaction.

The analysis addresses **4 major operational bottlenecks**:

* **High Cancellation Volumes:** The platform faces a severe leakage point with a **28.08% absolute cancellation rate**, translating to **28,933 unfulfilled rides** out of the 103,024 bookings.
* **Failed Matches ("Driver Not Found"):** A significant portion of overall bookings (~9.83%) drop entirely because the system cannot locate an available driver in the area.
* **Revenue Variance by Payment Type:** Reliance on different billing mechanisms impacts friction at checkout and operational cash flow transparency.
* **Class-Level Fleet Management:** Variations in demand across 7 distinct vehicle segments require targeted adjustments in driver supply strategies.

The overarching objective was to map these transactional records into a multi-tab interactive reporting engine to eliminate operational blind spots and maximize fulfilled booking values.

---

## **2. Project Architecture & Data Modeling**

I structured a highly scalable relational database schema built to support rapid filter propagation and sub-second visual refresh times:

* **Fact Table:** `Bookings` containing **103,024 rows** of individual ride attempts. Key fields include `Booking_ID` (Primary Key), `Date`, `Vehicle_Type`, `Booking_Status` (Success, Canceled by Driver, Canceled by Customer, Driver Not Found), `Ride_Distance`, `Booking_Value`, and rating scores.
* **Dimension Tables:** Outlying attributes were separated into clean dimensions to maintain optimal performance:
* `Vehicle_Type`: Manages metadata for the 7 active vehicle classes (*Prime Sedan, Prime SUV, Prime Plus, Mini, Auto, Bike, E-Bike*).
* `Booking_Status`: Maps transactional success criteria and distinct cancellation paths.
* `Date Table`: Handles standard time-intelligence logic spanning the July 2025 tracking horizon.



The data schema employs strict **Many-to-One (`*:1`) Cardinality** pointing from the central fact table to the dimension lookup entities. All cross-filter directions are set to **Single** to maintain strict query paths and protect against ambiguous filter context errors.

---

## **3. Data Sources & ETL Pipeline**

The backend processing engine safely cleansed raw system logs to prepare them for reporting view generation:

* **Data Ingestion:** Sourced raw tabular datasets encompassing localized ride parameters, financial tags, and customer response fields.
* **Power Query Cleaning & Transformation:**
* Validated date formats to establish uniform timelines spanning from **01-07-2025 to 31-07-2025**.
* Structured uniform text fields for status groupings, explicitly mapping `"Canceled by Driver"`, `"Canceled by Customer"`, and `"Driver Not Found"` string tags.
* Standardized decimal metrics across rating categories and numeric formats for the `Booking_Value` financial field.



---

## **4. Power BI Dashboard Design**

I built a 5-page highly functional interactive application utilizing an intuitive left-rail navigation layout:

### **Page 1: Overall Platform Performance**

* **Key Visuals:** Features macro metrics displaying **103,024 Total Bookings** and **56.53M in Gross Booking Value**. It includes a breakdown chart separating `Success` (62.09%) from cancellation buckets and a daily line chart (`Count of Booking_ID by Date`) tracking daily volume trends.
<img width="1451" height="792" alt="Ola overall" src="https://github.com/user-attachments/assets/f8c41390-cadd-4ecd-8c74-f93df7ff44ec" />

---

### **Page 2: Vehicle Type Deep-Dive**

* **Key Visuals:** A granular performance matrix breaking down metrics across all 7 vehicle segments. Tracks `Total Booking Value`, `Success Booking Value`, `Avg Distance Travelled`, and `Total Distance Travelled` (led by Prime Sedan at 8.30M gross value and E-Bikes at 231K total distance).
<img width="1263" height="694" alt="Ola Vehicle_Type" src="https://github.com/user-attachments/assets/1e35af56-b236-404a-a06b-5524cb8663e6" />

---

### **Page 3: Revenue Analytics**

* **Key Visuals:** Focuses on transaction types, showing that **Cash** and **UPI** represent the dominant payment methods, while Credit and Debit Cards account for minor shares. Features a daily clustered column chart mapping `Revenue and Ride_Distance` across individual days alongside a `Top 10 Bookings Value` table ranking highest-value unique trips.
<img width="1256" height="697" alt="Ola Revenue" src="https://github.com/user-attachments/assets/49fa4891-3c0e-4d2c-b389-69f0368621a3" />

---

### **Page 4: Cancellation Breakdown**

* **Key Visuals:** Tracks platform leaks via operational metrics highlighting **28,933 Cancelled Bookings** and a **28.08% Cancelled Percentage**. Dual breakdown charts display the distribution of cancel behaviors to separate driver-side dropping trends from passenger-side drop-offs.
<img width="1268" height="696" alt="Ola_Cancellation" src="https://github.com/user-attachments/assets/7d60671c-3fa6-4895-9cf6-6da0e572e4a0" />

---

### **Page 5: Ratings Distribution**

* **Key Visuals:** A matrix layout mapping customer sentiment and operator quality. Displays average `Driver Ratings` and `Customer Rating` scores across all vehicle categories, showing balanced, stable satisfaction baselines hovering tightly between **3.98 and 4.01 stars**.
<img width="1261" height="692" alt="Ola_Ratings" src="https://github.com/user-attachments/assets/534ff70a-2060-429b-be4e-cf6926d2c1f3" />

---

## **5. KPIs & DAX Measures**

Advanced DAX expressions were written to power the visualization metrics across all dashboard pages:

* **Total Ride Bookings Requested:**

```dax
Total Booking = COUNT(Bookings[Booking_ID])

```

* **Gross Transactional Value Attempted:**

```dax
Booking_Value = SUM(Bookings[Booking_Value])

```

* **Absolute Canceled Bookings Volume:**

```dax
Cancelled Bookings = CALCULATE(COUNT(Bookings[Booking_ID]), Bookings[Booking_Status] <> "Success")

```

* **Platform Cancellation Leakage Percentage:**

```dax
CanceledPercentage = DIVIDE([Cancelled Bookings], [Total Booking], 0) * 100

```

---

## **6. Business Insights & Recommendations**

1. **Address the 28.08% Cancellation Leakage:** With over 28K rides lost to cancellations, the platform is dropping substantial potential revenue. **Action:** Implement stricter driver penalties for persistent manual drop-offs alongside small customer retention credits if their ride is canceled by a driver.
2. **Mitigate "Driver Not Found" Bottlenecks:** This structural issue accounts for **9.83% of total booking failures**. **Action:** Deploy dynamic supply incentives (such as surge bonuses) to draw offline drivers into unserved grid zones during high-demand time slots.
3. **Optimize Payment Infrastructure Cash Flow:** **Cash** and **UPI** represent the overwhelming majority of payment methods. **Action:** Ensure the mobile driver application has real-time UPI payment verification built-in to minimize payment disputes and smooth out trip completion times.
4. **Maintain Uniform Fleet Standards:** Average driver and customer ratings across all segments are highly consistent, sitting tightly between **3.98 and 4.01 stars**. **Action:** Since baseline quality is stable, focus expansion efforts on high-margin tiers like **Prime Sedan** and **Prime SUV**, which generate the platform's highest gross booking values.
