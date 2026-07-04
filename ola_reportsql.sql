#----------------------------------OLA SALES REPORT MINI PROJECT---------------------------------------------#

-- Create database ola;
-- use ola;
  -- select * from bookings;

#1. retrieve all succesful bookings-----------------------------------------------------------------------
  -- create view successful_bookings as 
--   select * from Bookings
--   where Booking_Status = 'Success';
    select *  from successful_bookings;
    
# 2 average ride distance from each vechicle type--------------------------------------------------------
   -- create view Avg_vechicle_distance as
--    select Vehicle_Type , avg(Ride_Distance) as Avg_Distance from Bookings
--    group by Vehicle_Type;
     select * from Avg_vechicle_distance;
     
#3  total number of cancelled ride by customer-------------------------------------------------------------
       -- create view canceled_ride as 
--      select count(*) from bookings
--      where Booking_Status = 'Canceled by Customer';
       select * from  canceled_ride ;
       
#4  top 5 customer who booked highest number of rides-------------------------------------------------------
     -- create view top5_customer_booking as 
--      select Customer_ID, count(Booking_ID) as Total_rides from bookings 
--      group by Customer_ID 
--      Order by Total_rides desc limit 5;
     select * from top5_customer_booking;
     
#5 rides cancelled by drivers due personel reason and car related issue-------------------------------------
	-- create view canceled_by_drivers as 
--     select count(*) from bookings
--     where Canceled_Rides_by_Driver = 'Personal & Car related issue';
      select * from canceled_by_drivers ;
      
#6 Max and Min of driver rating for prime sedan vehicle----------------------------------------------------
       -- create view driver_rating_primesedan as
-- 	   select max(Driver_Ratings) as max_rating ,
-- 	   min(Driver_ratings) as min_rating from bookings
--        where Vehicle_Type = 'Prime Sedan';
	 SELECT * FROM driver_rating_primesedan ;
     
 #7 Retrieve all rides where payment done using upi--------------------------------------------------------
--       create view payment_method as 
--       select * from bookings 
--       where Payment_Method = 'UPI';
      select * from payment_method;
      
  #8. avg customer rating per vehicle type------------------------------------------------------------------
      --  create view Avg_customer_rating as
--        select Vehicle_Type , avg(Customer_Rating) as AVG_CUSTOMER_RATING from bookings
--        group by Vehicle_Type;
       select * from Avg_customer_rating;
       
 #9 calculate total booking values of rides completed successfully------------------------------------------
     --  create view successful_values_of_booked_rides as
        -- select sum( Booking_Value) as total_successful_value 
--       from bookings
--       where Booking_Status = 'Success';
      select * from successful_values_of_booked_rides;
      
 #10  list all incomplete rides with the reason-------------------------------------------------------------
      -- create view incomplete_rides_reason as
--       select Booking_ID, Incomplete_Rides_Reason as Reason 
--       from bookings
--       where Incomplete_Rides = 'Yes';
      select *  from incomplete_rides_reason;

#11   Find top vehicle types by bookings---------------------------------------------------------------------
     --  create view top_vehicle_type_by_booking as 
-- 		SELECT Vehicle_Type,
-- 	    COUNT(Vehicle_Type) AS total_bookings
-- 		FROM bookings
--        GROUP BY Vehicle_Type
--         ORDER BY total_bookings DESC
--        LIMIT 5;
         select*from top_vehicle_type_by_booking;
         
#12   Find revenue contribution by vehicle type---------------------------------------------------------------
--       create view revenue_by_vehicle_type as
--       select Vehicle_Type, sum(Booking_Value) as revenue
--       from bookings 
--       group by Vehicle_Type
--       order by revenue desc;
      select * from revenue_by_vehicle_type ;
      
#13   Find rides canceled by customers and drivers-----------------------------------------------------------
-- 	    create view canceled_ride_analysis as
--       SELECT
--       SUM(CASE WHEN Booking_Status='Canceled by Customer' THEN 1 ELSE 0 END) AS canceled_by_customer,
--       SUM(CASE WHEN Booking_Status='Canceled by Driver' THEN 1 ELSE 0 END) AS canceled_by_driver
--       FROM bookings;
      select * from canceled_ride_analysis; 
#14   Find busiest booking hours.
--       create view busiest_booking_hours as
--       SELECT HOUR(Time) AS booking_hour,
--       COUNT(*) AS total_bookings
--       FROM bookings
--       GROUP BY booking_hour
--       ORDER BY total_bookings DESC;
      select * from busiest_booking_hours ;


     