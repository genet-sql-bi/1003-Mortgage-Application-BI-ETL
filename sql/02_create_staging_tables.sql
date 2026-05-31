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



CREATE TABLE [staging].[Borrower_Stag](
	[SSN] [bigint] NULL,
	[BorrowerFirstName] [varchar](50) NULL,
	[BorrowerLastName] [varchar](50) NULL,
	[BorrowerEmail] [varchar](100) NULL,
	[HomePhone] [varchar](20) NULL,
	[CellPhone] [varchar](20) NULL,
	[MaritalStatus] [varchar](30) NULL,
	[DateOfBirth] [date] NULL,
	[CurrentStreetAddress] [varchar](100) NULL,
	[City] [varchar](50) NULL,
	[StateCode] [varchar](10) NULL,
	[ZipCode] [varchar](10) NULL,
	[YearsAtThisAddress] [int] NULL,
	[Sex] [varchar](20) NULL,
	[Ethnicity] [varchar](50) NULL,
	[Race] [varchar](50) NULL,
	[LoadDate] [datetime] NULL,
	[Co_Borrower_FirstName] [varchar](50) NULL,
	[Co_Borrower_LastName] [varchar](50) NULL,
	[Co_Borrower_Email] [varchar](100) NULL,
	[Co_Borrower_SSN] [bigint] NULL,
	[Co_Borrower_Address] [varchar](100) NULL,
	[Co_Borrower_City] [varchar](50) NULL,
	[Co_Borrower_State] [varchar](10) NULL,
	[Co_Borrower_Zip] [varchar](20) NULL
) ON [PRIMARY]
GO

ALTER TABLE [staging].[Borrower_Stag] ADD  DEFAULT (getdate()) FOR [LoadDate]
GO

USE MortgageBI_ETL;
GO

CREATE TABLE [staging].[Loan_Stag](
	[Loan_ID] [int] NULL,
	[SSN] [bigint] NULL,
	[Property_ID] [int] NULL,
	[PurposeOfLoan] [varchar](50) NULL,
	[LoanAmount] [decimal](18, 2) NULL,
	[PurchasePrice] [decimal](18, 2) NULL,
	[CreditCardAuthorization] [varchar](50) NULL,
	[NumberOfUnits] [int] NULL,
	[Referral] [varchar](50) NULL,
	[CoBorrowerSSN] [bigint] NULL,
	[LoadDate] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [staging].[Loan_Stag] ADD  DEFAULT (getdate()) FOR [LoadDate]
GO

CREATE TABLE [staging].[Property_Stag](
	[Property_ID] [int] NULL,
	[SSN] [bigint] NULL,
	[PropertyUsage] [varchar](50) NULL,
	[PropertyCity] [varchar](50) NULL,
	[PropertyState] [varchar](50) NULL,
	[PropertyZip] [varchar](10) NULL,
	[RealEstateAgentName] [varchar](50) NULL,
	[RealEstateAgentPhone] [varchar](50) NULL,
	[RealEstateAgentEmail] [varchar](100) NULL,
	[LoadDate] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [staging].[Property_Stag] ADD  DEFAULT (getdate()) FOR [LoadDate]
GO



CREATE TABLE [staging].[Financial_Stag](
	[SSN] [bigint] NULL,
	[MonthlyIncome] [decimal](18, 2) NULL,
	[Bonuses] [decimal](18, 2) NULL,
	[Commission] [decimal](18, 2) NULL,
	[OtherIncome] [decimal](18, 2) NULL,
	[RentOrOwn] [varchar](50) NULL,
	[Checking] [decimal](18, 2) NULL,
	[Savings] [decimal](18, 2) NULL,
	[RetirementFund] [decimal](18, 2) NULL,
	[MutualFund] [decimal](18, 2) NULL,
	[LoadDate] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [staging].[Financial_Stag] ADD  DEFAULT (getdate()) FOR [LoadDate]
GO


SELECT * FROM [staging].[Borrower_Stag]
SELECT * FROM [staging].[Financial_Stag]
SELECT * FROM [staging].[Loan_Stag]
SELECT * FROM [staging].[Property_Stag]