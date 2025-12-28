CREATE INDEX idx_booking_dates ON bookings(check_in, check_out);
CREATE INDEX idx_room_type ON rooms(room_type);
CREATE INDEX idx_guest_email ON guests(email);
