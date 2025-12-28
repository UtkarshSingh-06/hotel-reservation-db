-- Total revenue in date range
SELECT SUM(total_amount) AS total_revenue
FROM bookings
WHERE booking_status = 'CONFIRMED'
  AND check_in >= '2025-01-01'
  AND check_out <= '2025-01-31';

-- Revenue by room type
SELECT r.room_type, SUM(b.total_amount) AS revenue
FROM bookings b
JOIN rooms r ON b.room_id = r.room_id
GROUP BY r.room_type;
