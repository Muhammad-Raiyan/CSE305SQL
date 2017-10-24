CREATE DEFINER=`root`@`localhost` PROCEDURE `addEmployee`(
	IN Id INTEGER,
    IN SSN INTEGER,
	IN FirstName VARCHAR(50),
	IN LastName VARCHAR(50),
	IN Addess VARCHAR(100),
	IN City VARCHAR(50),
	IN State VARCHAR(50),
	IN ZipCode INTEGER,
    
	IN IsManager BOOLEAN,
	IN StartDate DATE,
	IN HourlyRate NUMERIC(10 , 2 )
)
BEGIN
    INSERT IGNORE INTO Person(Id,FirstName,LastName,Address,City,State,ZipCode)
    values(Id, FirstName,LastName,Address,City,State,ZipCode);
    
	INSERT INTO Employee(Id,SSN,IsManager,StartDate,HourlyRate)
	values(Id,SSN,IsManager,StartDate,HourlyRate);
END