DELIMITER $$

CREATE TRIGGER calculate_total_amount
BEFORE INSERT ON bookings
FOR EACH ROW
BEGIN
    SET NEW.total_amount =
        DATEDIFF(NEW.check_out, NEW.check_in) *
        (SELECT price_per_night FROM rooms WHERE room_id = NEW.room_id);
END$$

DELIMITER ;
