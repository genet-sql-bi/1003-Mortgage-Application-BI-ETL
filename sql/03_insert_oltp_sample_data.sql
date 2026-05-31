USE Mortgage_OLTP_Source;
GO

INSERT INTO dbo.BorrowerDetails
(
    SSN,
    BorrowerFirstName,
    BorrowerLastName,
    BorrowerEmail,
    HomePhone,
    CellPhone,
    MaritalStatus,
    DateOfBirth,
    CurrentStreetAddress,
    City,
    StateCode,
    ZipCode,
    YearsAtThisAddress,
    Sex,
    Ethnicity,
    Race
)
VALUES
(100000001,'John','Smith','john.smith@email.com', 6175551001,6175552001,'Married','1985-04-12', '10 Main St','Boston','MA','02108',5,'Male', 'Not Hispanic','White', 'Anna','Smith','anna.smith@email.com', 900000001,'10 Main St','Boston','MA','02108'), 
(100000002,'Mary','Johnson','mary.johnson@email.com', 6175551002,6175552002,'Single','1990-07-22', '22 Oak Ave','Cambridge','MA','02139',3,'Female', 'Not Hispanic','Black', 'Mark','Johnson','mark.johnson@email.com', 900000002,'22 Oak Ave','Cambridge','MA','02139'), 
(100000003,'David','Lee','david.lee@email.com', 6175551003,6175552003,'Married','1978-11-05', '33 Pine Rd','Quincy','MA','02169',8,'Male', 'Asian','Asian', 'Mary','Lee','mary.lee@email.com', 900000003,'33 Pine Rd','Quincy','MA','02169'), 
(100000004,'Sara','Brown','sara.brown@email.com', 6175551004,6175552004,'Single','1992-03-18', '44 Maple St','Boston','MA','02110',2,'Female', 'Hispanic','White', 'Alem','Brown','alem.brown@email.com', 900000004,'44 Maple St','Boston','MA','02110'), 
(100000005,'Michael','Davis','michael.davis@email.com', 6175551005,6175552005,'Married','1980-09-09', '55 Cedar Ln','Newton','MA','02458',6,'Male', 'Not Hispanic','White', 'Geni','Davis','geni.davis@email.com', 900000005,'55 Cedar Ln','Newton','MA','02458'), 
(100000006,'Linda','Wilson','linda.wilson@email.com', 6175551006,6175552006,'Divorced','1987-12-30', '66 Elm St','Somerville','MA','02143',4,'Female', 'Not Hispanic','Black', 'Robel','Wilson','robel.wilson@email.com', 900000006,'66 Elm St','Somerville','MA','02143'),
(100000007,'Robert','Miller','robert.miller@email.com', 6175551007,6175552007,'Married','1975-06-15', '77 River Rd','Worcester','MA','01608',10,'Male', 'Not Hispanic','White', 'Derbe','Miller','derbe.miller@email.com', 900000007,'77 River Rd','Worcester','MA','01608'), 
(100000008,'Karen','Thomas','karen.thomas@email.com', 6175551008,6175552008,'Single','1995-02-20', '88 Cedar St','Malden','MA','02148',1,'Female', 'Asian','Asian', 'Rob','Thomas','rob.thomas@email.com', 900000008,'88 Cedar St','Malden','MA','02148'); GO


----

INSERT INTO dbo.FinancialDetails
(
    SSN,
    MonthlyIncome,
    Bonuses,
    Commission,
    OtherIncome,
    RentOrOwn,
    Checking,
    Savings,
    RetirementFund,
    MutualFund
)
VALUES
(100000001,7500,500,300,200,'Own',12000,25000,60000,15000),
(100000002,6200,300,200,100,'Rent',8000,15000,30000,7000),
(100000003,9000,1000,500,300,'Own',20000,40000,90000,25000),
(100000004,5800,200,150,100,'Rent',6000,12000,25000,5000),
(100000005,11000,1200,800,400,'Own',25000,50000,120000,35000),
(100000006,7000,400,250,150,'Rent',9000,18000,45000,10000),
(100000007,13000,1500,1000,500,'Own',30000,65000,150000,45000),
(100000008,6800,350,200,100,'Rent',8500,17000,40000,9000);
GO;

----

INSERT INTO dbo.LoanDetails
(
    Loan_ID,
    SSN,
    Property_ID,
    PurposeOfLoan,
    LoanAmount,
    PurchasePrice,
    CreditCardAuthorization,
    NumberOfUnits,
    Referral,
    LoanDate
)
VALUES
(9001,100000001,501,'Purchase',350000,400000,'Yes',1,'Referral A','2026-05-01'),
(9002,100000002,502,'Refinance',300000,360000,'Yes',1,'Referral B','2026-05-02'),
(9003,100000003,503,'Purchase',450000,520000,'No',2,'Referral C','2026-05-03'),
(9004,100000004,504,'Purchase',280000,330000,'Yes',1,'Referral D','2026-05-04'),
(9005,100000005,505,'Investment',600000,700000,'Yes',3,'Referral E','2026-05-05'),
(9006,100000006,506,'Refinance',320000,390000,'No',1,'Referral F','2026-05-06'),
(9007,100000007,507,'Purchase',500000,575000,'Yes',2,'Referral G','2026-05-07'),
(9008,100000008,508,'Purchase',310000,360000,'Yes',1,'Referral H','2026-05-08');
GO

INSERT INTO dbo.PropertyDetails
(
    Property_ID,
    SSN,
    PropertyUsage,
    PropertyCity,
    PropertyState,
    PropertyZip,
    RealEstateAgentName,
    RealEstateAgentPhone,
    RealEstateAgentEmail
)
VALUES
(501,100000001,'Primary Residence','Boston','MA','02108',
'Sarah Agent','6175553001','sarah.agent@email.com'),

(502,100000002,'Primary Residence','Cambridge','MA','02139',
'Mike Agent','6175553002','mike.agent@email.com'),

(503,100000003,'Investment','Quincy','MA','02169',
'Linda Agent','6175553003','linda.agent@email.com'),

(504,100000004,'Primary Residence','Boston','MA','02110',
'James Agent','6175553004','james.agent@email.com'),

(505,100000005,'Investment','Newton','MA','02458',
'Anna Agent','6175553005','anna.agent@email.com'),

(506,100000006,'Primary Residence','Somerville','MA','02143',
'Kevin Agent','6175553006','kevin.agent@email.com'),

(507,100000007,'Second Home','Worcester','MA','01608',
'Emily Agent','6175553007','emily.agent@email.com'),

(508,100000008,'Primary Residence','Malden','MA','02148',
'Peter Agent','6175553008','peter.agent@email.com');
GO