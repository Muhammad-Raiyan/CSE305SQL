USE reservation_schema;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM Reservation;
DELETE FROM Passenger;
DELETE FROM Employee;
DELETE FROM Customer;
DELETE FROM Person;
DELETE FROM Leg;
DELETE FROM Flight;
DELETE FROM Airport;
DELETE FROM Airline;

INSERT INTO Airline(Id,Name)
VALUES
('AB','Air Berlin'),
('AJ', 'Air Japan'),
('AM', 'Air Madagascar'),
('AA', 'American Airlines'),
('BA', 'British Airways'),
('DA', 'Delta Airlines'),
('JA', 'JetBlue Airways'),
('L ', 'Lufthansa'),
('SA', 'Southwest Airlines'),
('UA', 'United Airlines');

INSERT INTO Airport(Id, Name, City, Country)
VALUES
('TXL','Berlin Tegel', 'Berlin', 'Germany'),
('ORD','Chicago O\'Hare International', 'Chicago', 'Illinois'),
('ATL','Hartsfield-Jackson Atlanta Int', 'Atlanta', 'United States of America'),
('TNR','Ivato International', 'Antananarivo', 'Madagascar'),
('JFK','John F. Kennedy International', 'New York', 'United States of America'),
('LGA','LaGuardia', 'New York', 'United States of America'),
('BOS','Logan International', 'Boston', 'United States of America'),
('LHR','London Heathrow', 'London', 'United Kingdom'),
('LAX','Los Angeles International', 'Los Angeles', 'United States of America'),
('SFO','San Francisco International', 'San Francisco', 'United States of America'),
('HND','Tokyo International', 'Tokyo', 'Japan');

INSERT INTO Flight(FlightNo, DaysOperating, NoOfSeats, AirlineID, MinLengthOfStay, MaxLengthOfStay)
VALUES
(111, 1010100, 100, 'AA',0,365),
(111, 1111111, 150, 'JA',10,420),
(1337, 0000011, 33, 'AM',5,30);


INSERT INTO Leg(AirlineID,FlightNo,LegNo,DepAirportID,ArrAirportID,DepTime,ArrTime)
VALUES
('AA',111, 1,'LGA','LAX','2011-01-05 11:00:00','2011-01-05 17:00:00'),
('AA',111, 2,'LAX','HND','2011-01-05 19:00:00','2011-01-06 07:30:00'),
('JA',111, 1,'SFO','BOS','2011-01-10 14:00:00','2011-01-10 19:30:00'),
('JA',111, 2,'BOS','LHR','2011-01-10 22:30:00','2011-01-11 05:00:00'),
('AM',1337,1,'JFK','TNR','2011-01-13 07:00:00','2011-01-13 23:00:00');


INSERT INTO Person (Id, FirstName, LastName, Address, City, State, ZipCode)
VALUES
(1, 'Jane', 'Smith', '100 Nicolls Rd', 'Stony Brook', 'New York', 17790),
(2, 'John', 'Doe', '123 N Fake Street', 'New York', 'New York', 10001),
(3, 'Rick', 'Astley', '1337 Internet Lane', 'Los Angeles', 'California', 90001),
(4, 'Raiyan', 'Islam', '123 Main St', 'Stony Brook', 'New York', 11790);

INSERT INTO Customer (Id, AccountNo, CreditCardNo, PhoneNo, Email, CreationDate)
VALUES
(1, 1, '12345678', '555-555-5555','awesomejane@ftw.com','2013-12-31 23:59:00'),
(2, 2, '23456789', '123-123-1234','jdoe@woot.com','2014-03-24 23:59:00'),
(3, 3, '32165478', '314-159-2653','rickroller@rolld.com','2015-07-11 23:59:00');

INSERT INTO Employee (Id, SSN, IsManager, StartDate, HourlyRate)
VALUES
(4, 321654987, TRUE, '2011-01-01', 10.2);

INSERT INTO Passenger (Id, AccountNo)
VALUES
(1,1),
(2,2),
(3,3);

INSERT INTO Reservation(ResrNo, ResrDate, BookingFee, TotalFare, RepSSN, AccountNo)
VALUES
(1, '2011-02-05', 120, 1200, 321654987, 1),
(2, '2011-03-07', 50, 500, 321654987, 2),
(3, '2011-04-10', 333, 3333.33, 321654987, 3);


