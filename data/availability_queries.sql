-- Available rooms between dates
SELECT *
FROM rooms
WHERE room_id NOT IN (
    SELECT room_id
    FROM bookings
    WHERE booking_status = 'CONFIRMED'
      AND ('2025-01-11' < check_out AND '2025-01-13' > check_in)
);
