-- Q.1 What are the peak ride hours in a day?
SELECT Hour, COUNT(*) AS total_rides
FROM uber
GROUP BY Hour
ORDER BY Hour;

-- Q.2 What day of the week has the highest number of bookings?
SELECT Day, COUNT(*) AS total_rides
FROM uber
GROUP BY Day
ORDER BY total_rides DESC;

-- Q.3 What month of the year has the highest number of bookings?
SELECT Month, COUNT(*) AS Total_Rides
FROM uber
GROUP BY Month
ORDER BY total_rides DESC;

-- Q.4 Which payment method do customers prefer the most?
SELECT `Payment Method`, COUNT(*) AS Total_Rides
FROM uber
GROUP BY `Payment Method`;

-- Q.5 How many incomplete rides occurred each day, and which day has the highest number of incomplete rides?
SELECT Day, SUM(`Incomplete Rides`) AS Total_Incomplete_Rides
FROM uber
GROUP BY Day
ORDER BY Day;

-- Q.6 Which vehicle type is most used by customers, and what are the average driver and customer ratings for each vehicle type?
SELECT `Vehicle Type`,
       COUNT(*) AS Total_Rides,
       AVG(`Driver Ratings`) AS Avg_Driver_Rating,
       AVG(`Customer Rating`) AS Avg_Customer_Rating
FROM uber
GROUP BY `Vehicle Type`;

-- Q.7 How many rides were cancelled by customers and drivers each day, and which day faced the most cancellations?
SELECT Day,
       SUM(`Cancelled Rides by Customer`) AS Customer_Cancellations,
       SUM(`Cancelled Rides by Driver`) AS Driver_Cancellations
FROM uber
GROUP BY Day
ORDER BY Day;

-- Q.8 What is the distribution of booking statuses (Completed, Cancelled, Incomplete, etc.) across all rides?
SELECT `Booking Status`, COUNT(*) AS Total_Rides
FROM uber
GROUP BY `Booking Status`;

-- Q.9 Which pickup locations have the highest demand, and what are the top 5 most frequently used pickup points?
SELECT `Pickup Location`, COUNT(*) AS Total_Rides
FROM uber
GROUP BY `Pickup Location`
ORDER BY Total_Rides DESC
LIMIT 5;

-- Q.10 What is the overall business performance in terms of total rides, cancellations, incomplete rides, and average ratings?
SELECT 
    COUNT(*) AS Total_Rides,
    SUM(`Cancelled Rides by Customer`) AS Customer_Cancellations,
    SUM(`Cancelled Rides by Driver`) AS Driver_Cancellations,
    SUM(`Incomplete Rides`) AS Total_Incomplete_Rides,
    AVG(`Driver Ratings`) AS Avg_Driver_Rating,
    AVG(`Customer Rating`) AS Avg_Customer_Rating
FROM uber;