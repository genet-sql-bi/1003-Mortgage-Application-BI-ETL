USE Mortgage_OLTP_Source;
GO

CREATE TABLE dbo.Borrower_Details (
    SSN BIGINT PRIMARY KEY,
    BorrowerFirstName VARCHAR(50),
    BorrowerLastName VARCHAR(50),
    BorrowerEmail VARCHAR(100),
    HomePhone VARCHAR(20),
    CellPhone VARCHAR(20),
    MaritalStatus VARCHAR(30),
    DateOfBirth DATE,
    CurrentStreetAddress VARCHAR(100),
    City VARCHAR(50),
    StateCode VARCHAR(10),
    ZipCode VARCHAR(10),
    YearsAtThisAddress INT,
    Sex VARCHAR(20),
    Ethnicity VARCHAR(50),
    Race VARCHAR(50)
);
GO

CREATE TABLE dbo.Financial_Details (
    SSN BIGINT PRIMARY KEY,
    MonthlyIncome DECIMAL(12,2),
    Bonuses DECIMAL(12,2),
    Commission DECIMAL(12,2),
    OtherIncome DECIMAL(12,2),
    RentOrOwn VARCHAR(20),
    Checking DECIMAL(12,2),
    Savings DECIMAL(12,2),
    RetirementFund DECIMAL(12,2),
    MutualFund DECIMAL(12,2)
);
GO

CREATE TABLE dbo.Property_Details (
    Property_ID INT PRIMARY KEY,
    SSN BIGINT,
    PropertyUsage VARCHAR(50),
    PropertyCity VARCHAR(50),
    PropertyState VARCHAR(10),
    PropertyZip VARCHAR(10),
    RealEstateAgentName VARCHAR(100),
    RealEstateAgentPhone VARCHAR(20),
    RealEstateAgentEmail VARCHAR(100)
);
GO

CREATE TABLE dbo.Loan_Details (
    Loan_ID INT PRIMARY KEY,
    SSN BIGINT,
    Property_ID INT,
    PurposeOfLoan VARCHAR(50),
    LoanAmount DECIMAL(12,2),
    PurchasePrice DECIMAL(12,2),
    CreditCardAuthorization VARCHAR(20),
    NumberOfUnits INT,
    Referral VARCHAR(100),
    CoBorrowerSSN BIGINT
);
GO