CREATE DEFINER=`root`@`localhost` PROCEDURE `recordReservation`(
ResrNo INTEGER,
    IN ResrDate DATETIME,
    IN BookingFee NUMERIC(10 , 2 ),
    IN TotalFare NUMERIC(10 , 2 ),
    IN RepSSN INTEGER,
    IN AccountNo INTEGER
)
BEGIN
    INSERT IGNORE INTO Reservation(ResrDate,BookingFee,TotalFare,RepSSN,AccountNo)
    VALUES(ResrDate,BookingFee,TotalFare,RepSSN,AccountNo);
    
	INSERT INTO Employee(Id,SSN,IsManager,StartDate,HourlyRate)
	values(Id,SSN,IsManager,StartDate,HourlyRate);
END