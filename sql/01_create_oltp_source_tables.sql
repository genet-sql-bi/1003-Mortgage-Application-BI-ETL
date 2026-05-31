USE Mortgage_OLTP_Source;
GO
 

CREATE TABLE [dbo].[BorrowerDetails](
	[SSN] [bigint] NOT NULL,
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
	[Co_Borrower_FirstName] [varchar](50) NULL,
	[Co_Borrower_LastName] [varchar](50) NULL,
	[Co_Borrower_Email] [varchar](100) NULL,
	[Co_Borrower_SSN] [bigint] NULL,
	[Co_Borrower_Address] [varchar](100) NULL,
	[Co_Borrower_City] [varchar](50) NULL,
	[Co_Borrower_State] [varchar](10) NULL,
	[Co_Borrower_Zip] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FinancialDetails](
	[SSN] [bigint] NOT NULL,
	[MonthlyIncome] [decimal](12, 2) NULL,
	[Bonuses] [decimal](12, 2) NULL,
	[Commission] [decimal](12, 2) NULL,
	[OtherIncome] [decimal](12, 2) NULL,
	[RentOrOwn] [varchar](20) NULL,
	[Checking] [decimal](12, 2) NULL,
	[Savings] [decimal](12, 2) NULL,
	[RetirementFund] [decimal](12, 2) NULL,
	[MutualFund] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FinancialDetails]  WITH CHECK ADD  CONSTRAINT [FK_FinancialBorrower] FOREIGN KEY([SSN])
REFERENCES [dbo].[BorrowerDetails] ([SSN])
GO

ALTER TABLE [dbo].[FinancialDetails] CHECK CONSTRAINT [FK_Financial_Borrower]
GO

CREATE TABLE [dbo].[PropertyDetails](
	[Property_ID] [int] NOT NULL,
	[SSN] [bigint] NULL,
	[PropertyUsage] [varchar](50) NULL,
	[PropertyCity] [varchar](50) NULL,
	[PropertyState] [varchar](10) NULL,
	[PropertyZip] [varchar](10) NULL,
	[RealEstateAgentName] [varchar](100) NULL,
	[RealEstateAgentPhone] [varchar](20) NULL,
	[RealEstateAgentEmail] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Property_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PropertyDetails]  WITH CHECK ADD  CONSTRAINT [FK_Property_Borrower] FOREIGN KEY([SSN])
REFERENCES [dbo].[BorrowerDetails] ([SSN])
GO

CREATE TABLE [dbo].[LoanDetails](
	[Loan_ID] [int] NOT NULL,
	[SSN] [bigint] NULL,
	[Property_ID] [int] NULL,
	[PurposeOfLoan] [varchar](50) NULL,
	[LoanAmount] [decimal](12, 2) NULL,
	[PurchasePrice] [decimal](12, 2) NULL,
	[CreditCardAuthorization] [varchar](20) NULL,
	[NumberOfUnits] [int] NULL,
	[Referral] [varchar](100) NULL,
	[CoBorrowerSSN] [bigint] NULL,
	[LoanDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Loan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[LoanDetails]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Borrower] FOREIGN KEY([SSN])
REFERENCES [dbo].[BorrowerDetails] ([SSN])
GO

ALTER TABLE [dbo].[LoanDetails] CHECK CONSTRAINT [FK_Loan_Borrower]
GO

ALTER TABLE [dbo].[Loan_Details]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Property] FOREIGN KEY([Property_ID])
REFERENCES [dbo].[PropertyDetails] ([Property_ID])
GO


SELECT * FROM [dbo].[BorrowerDetails]
SELECT * FROM [dbo].[FinancialDetails]
SELECT * FROM [dbo].[LoanDetails]
SELECT * FROM [dbo].[PropertyDetails]





