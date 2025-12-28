SELECT * FROM ola_ride.bookings;
use ola_ride;
-- Total Revenue Generated Per Day
-- How much revenue is generated each day from completed bookings?
SELECT Date,
       SUM(Booking_Value) AS daily_revenue
FROM bookings
WHERE Booking_Status = 'Completed'
GROUP BY Date
ORDER BY Date;
-- Most Used Payment Methods
-- Which payment methods are most preferred by customers?
SELECT Payment_Method,
       COUNT(*) AS total_bookings
FROM bookings
GROUP BY Payment_Method
ORDER BY total_bookings DESC;
-- Average Ride Distance by Vehicle Type
-- Do certain vehicle types serve longer rides?
SELECT Vehicle_Type,
       ROUND(AVG(Ride_Distance),2) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;
 --  Revenue Loss Due to Cancellations
 SELECT
    ROUND(SUM(Booking_Value),2) AS revenue_lost
FROM bookings
WHERE Booking_Status = 'Cancelled';
-- Customer Satisfaction vs Ride Distance
SELECT
    CASE
        WHEN Ride_Distance < 5 THEN 'Short'
        WHEN Ride_Distance BETWEEN 5 AND 15 THEN 'Medium'
        ELSE 'Long'
    END AS ride_length,
    ROUND(AVG(Customer_Rating),2) AS avg_rating
FROM bookings
WHERE Booking_Status = 'Completed'
GROUP BY ride_length;
-- Repeat Customer Behavior
WITH customer_rides AS (
    SELECT Customer_ID,
           COUNT(*) AS ride_count
    FROM bookings
    GROUP BY Customer_ID
)
SELECT
    ROUND(100.0 * COUNT(CASE WHEN ride_count > 1 THEN 1 END) 
    / COUNT(*),2) AS repeat_customer_percentage
FROM customer_rides;
-- Drop Route Profitability-Which pickup-drop routes generate the most revenue?
SELECT Pickup_Location,
       Drop_Location,
       ROUND(SUM(Booking_Value),2) AS total_revenue
FROM bookings
WHERE Booking_Status = 'Completed'
GROUP BY Pickup_Location, Drop_Location
ORDER BY total_revenue DESC
LIMIT 10;
-- Driver Performance vs Ratings
SELECT
    CASE 
        WHEN V_TAT <= 10 THEN 'Fast'
        WHEN V_TAT BETWEEN 11 AND 20 THEN 'Moderate'
        ELSE 'Slow'
    END AS speed_category,
    ROUND(AVG(Driver_Ratings),2) AS avg_rating
FROM bookings
WHERE Booking_Status = 'Completed'
GROUP BY speed_category;
-- Incomplete Ride Analysis(most common reasons for incomplete rides?)
SELECT Incomplete_Rides_Reason,
       COUNT(*) AS occurrences
FROM bookings
WHERE Incomplete_Rides = 1
GROUP BY Incomplete_Rides_Reason
ORDER BY occurrences DESC;
-- Vehicle Type Efficiency (Time vs Distance)
-- Which vehicle type delivers rides faster per km?
SELECT Vehicle_Type,
       ROUND(AVG(V_TAT / NULLIF(Ride_Distance,0)),2) AS time_per_km
FROM bookings
WHERE Booking_Status = 'Completed'
GROUP BY Vehicle_Type
ORDER BY time_per_km;
-- Identify High-Value Customers
-- Which customers generate the highest lifetime booking value?
SELECT Customer_ID,
       COUNT(Booking_ID) AS total_rides,
       ROUND(SUM(Booking_Value),2) AS lifetime_value
FROM bookings
WHERE Booking_Status = 'Completed'
GROUP BY Customer_ID
ORDER BY lifetime_value DESC
LIMIT 10;
-- Booking Completion Rate by Pickup Location
-- Which pickup locations have the best completion rates?
SELECT Pickup_Location,
       ROUND(
           100.0 * COUNT(CASE WHEN Booking_Status = 'Completed' THEN 1 END) 
           / COUNT(*), 2
       ) AS completion_rate
FROM bookings
GROUP BY Pickup_Location
ORDER BY completion_rate DESC;
-- Peak Booking Hours
-- Which hours have the highest booking volume?
SELECT EXTRACT(HOUR FROM Time) AS hour,
       COUNT(*) AS total_bookings
FROM bookings
GROUP BY hour
ORDER BY total_bookings DESC;
-- Cancellation Rate by Customers vs Drivers
-- Who cancels more rides—customers or drivers?
SELECT 
    SUM(Canceled_Rides_by_Customer) AS customer_cancellations,
    SUM(Canceled_Rides_by_Driver) AS driver_cancellations
FROM bookings;
-- Review all successful bookings
CREATE VIEW Successful_Bookings As
SELECT * FROM bookings WHERE Booking_Status = 'Success';

select * from Successful_Bookings;
-- Average ride distance for each Vehicle type
CREATE View ride_distance_each_Vehicle AS
select Vehicle_Type,AVG(Ride_distance) as avg_distance from bookings GROUP BY Vehicle_Type;
select * from ride_distance_each_Vehicle;
-- Get Total number of Cancelled rides by Customer
CREATE View Cancelled_ride AS
select count(*) from bookings where Booking_Status = 'Canceled by Customer';


-- List top 5 customers who booked the highest number of rides
select Customer_ID,COUNT(Booking_ID) as total_rides from bookings group by  Customer_ID order by total_rides desc limit 5;

-- Get number of rides Cancelled by drivers due to personal and car-related issues
select count(*) from bookings where Canceled_Rides_by_Driver = 'Personal & car-related issues';
-- Find maximum and minimum driver ratings for Prime Sedan bookings
select max(Driver_Ratings) as max_rating, min(Driver_Ratings) as min_rating from bookings where Vehicle_Type = 'PrimeSedan';
-- Retrieve all rides where payment was made using API
CREATE VIEW UPI_Payment AS
SELECT * FROM bookings where Payment_Method = 'UPI';


-- Find average customer rating per Vehicle type
create view Avg_cust_rating as
SELECT Vehicle_Type,AVG(Customer_Rating) AS avg_customer_rating FROM bookings GROUP BY  Vehicle_Type;

-- Estimate total booking value of rides Completed Successfully
create view  total_ridevaluesuccessful as
select sum(Booking_Value) as total_successful_ride_value from bookings where Booking_Status = 'Success';

-- List all incomplete rides along with the reason
create view IncompleteRideReason as
select  Booking_ID,Incomplete_rides_reason from bookings where Incomplete_Rides ='Yes';
