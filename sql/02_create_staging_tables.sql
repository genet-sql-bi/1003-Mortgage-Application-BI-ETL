USE [MortgageBI_ETL]
GO

USE MortgageBI_ETL;
GO

CREATE SCHEMA staging;
GO

CREATE SCHEMA clean;
GO

CREATE SCHEMA dw;
GO


CREATE TABLE staging.Borrower_Source
(
    SSN BIGINT,
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
    Race VARCHAR(50),
    LoadDate DATETIME DEFAULT GETDATE()
);

GO

USE MortgageBI_ETL;
GO

CREATE TABLE staging.Loan_Source (
    Loan_ID INT,
    SSN BIGINT,
    Property_ID INT,
    PurposeOfLoan VARCHAR(50),
    LoanAmount DECIMAL(18,2),
    PurchasePrice DECIMAL(18,2),
    CreditCardAuthorization VARCHAR(50),
    NumberOfUnits INT,
    Referral VARCHAR(50),
    CoBorrowerSSN BIGINT,
    LoadDate DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE staging.Property_Source (
    Property_ID INT,
    SSN BIGINT,
    PropertyUsage VARCHAR(50),
    PropertyCity VARCHAR(50),
    PropertyState VARCHAR(50),
    PropertyZip VARCHAR(10),
    RealEstateAgentName VARCHAR(50),
    RealEstateAgentPhone VARCHAR(50),
    RealEstateAgentEmail VARCHAR(100),
    LoadDate DATETIME DEFAULT GETDATE()
);
GO


CREATE TABLE staging.Financial_Source (
    SSN BIGINT,
    MonthlyIncome DECIMAL(18,2),
    Bonuses DECIMAL(18,2),
    Commission DECIMAL(18,2),
    OtherIncome DECIMAL(18,2),
    RentOrOwn VARCHAR(50),
    Checking DECIMAL(18,2),
    Savings DECIMAL(18,2),
    RetirementFund DECIMAL(18,2),
    MutualFund DECIMAL(18,2),
    LoadDate DATETIME DEFAULT GETDATE()
);
GO