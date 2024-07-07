SELECT COUNT(booking_status)
FROM HotelReservationDataset;

SELECT type_of_meal_plan 
FROM HotelReservationDataset
GROUP BY type_of_meal_plan
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT avg_price_per_room
from HotelReservationDataset
WHERE no_of_children>0;

SELECT strftime('%Y', (substr(arrival_date,7,4) || '-' || substr(arrival_date,4,2) || '-' || substr(arrival_date,1,2)) ), COUNT(booking_status)
FROM HotelReservationDataset
GROUP BY strftime('%Y', (substr(arrival_date,7,4) || '-' || substr(arrival_date,4,2) || '-' || substr(arrival_date,1,2)) );

SELECT room_type_reserved
FROM HotelReservationDataset
GROUP BY room_type_reserved
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT COUNT(booking_status)
FROM HotelReservationDataset
WHERE no_of_weekend_nights>0;

SELECT MAX(lead_time), MIN(lead_time)
FROM HotelReservationDataset;

SELECT market_segment_type
FROM HotelReservationDataset
GROUP BY market_segment_type
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT COUNT(booking_status)
FROM HotelReservationDataset
WHERE booking_status = 'Not_Canceled';

SELECT SUM(no_of_adults), SUM(no_of_children)
FROM HotelReservationDataset;

SELECT AVG(no_of_weekend_nights)
FROM HotelReservationDataset
WHERE no_of_children>0;

SELECT strftime('%m', (substr(arrival_date,7,4) || '-' || substr(arrival_date,4,2) || '-' || substr(arrival_date,1,2)) ), strftime('%Y', (substr(arrival_date,7,4) || '-' || substr(arrival_date,4,2) || '-' || substr(arrival_date,1,2)) ), COUNT(booking_status)
FROM HotelReservationDataset
GROUP BY strftime('%m', (substr(arrival_date,7,4) || '-' || substr(arrival_date,4,2) || '-' || substr(arrival_date,1,2)) )
ORDER BY strftime('%Y', (substr(arrival_date,7,4) || '-' || substr(arrival_date,4,2) || '-' || substr(arrival_date,1,2)) ) ASC;

SELECT room_type_reserved, AVG(no_of_weekend_nights), AVG(no_of_week_nights)
FROM HotelReservationDataset
GROUP BY room_type_reserved;

SELECT room_type_reserved, avg_price_per_room
FROM HotelReservationDataset
WHERE no_of_children>0
GROUP BY room_type_reserved
ORDER BY COUNT(room_type_reserved) DESC
LIMIT 1;

SELECT market_segment_type, MAX(avg_price_per_room)
FROM HotelReservationDataset;