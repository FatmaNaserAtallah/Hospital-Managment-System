USE [DW_hospital]
GO
/****** Object:  Table [dbo].[Dim_Billing]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Billing](
	[BillingID] [int] NOT NULL,
	[PatientID] [int] NULL,
	[TotalAmount] [float] NULL,
	[BillingDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_BloodBank]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_BloodBank](
	[BloodID] [int] NOT NULL,
	[BloodType] [varchar](5) NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_department]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_department](
	[department_id] [int] NOT NULL,
	[department_name] [nvarchar](50) NOT NULL,
	[location] [nvarchar](50) NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_department] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_disease]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_disease](
	[disease_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[symptoms] [nvarchar](50) NULL,
	[treatments] [nvarchar](50) NULL,
	[contagious] [nvarchar](50) NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_disease] PRIMARY KEY CLUSTERED 
(
	[disease_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Doctors]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Doctors](
	[doctor_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[specialization] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_Doctors] PRIMARY KEY CLUSTERED 
(
	[doctor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_donor]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_donor](
	[donor_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[date_of_birth] [date] NULL,
	[gender] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[blood_type] [nvarchar](50) NULL,
	[last_donation_date] [nvarchar](50) NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_donor] PRIMARY KEY CLUSTERED 
(
	[donor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Food_Billing]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Food_Billing](
	[BillID] [int] NOT NULL,
	[patient] [int] NULL,
	[TotalAmount] [float] NULL,
	[BillDate] [datetime] NULL,
	[PaidStatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Insurance_Providers]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Insurance_Providers](
	[ProviderID] [int] NOT NULL,
	[ProviderName] [nvarchar](100) NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [text] NULL,
 CONSTRAINT [PK_Dim_Insurance_Providers] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Inventory]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Inventory](
	[InventoryID] [int] NOT NULL,
	[ItemName] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[DepartmentID] [int] NULL,
	[LastUpdated] [datetime] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_Inventory] PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Man_Security]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Man_Security](
	[SecurityID] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[JobTitle] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Shift] [nvarchar](20) NULL,
	[DepartmentID] [int] NULL,
	[HireDate] [datetime] NULL,
	[Status] [nvarchar](20) NULL,
	[company_name] [nvarchar](50) NULL,
	[address_for_company] [nvarchar](50) NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_Man_Security] PRIMARY KEY CLUSTERED 
(
	[SecurityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_medicine]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_medicine](
	[medicine_id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[Dosage] [int] NULL,
	[expiration_date] [date] NULL,
	[quantity] [int] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_medicine] PRIMARY KEY CLUSTERED 
(
	[medicine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_patients]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_patients](
	[patient_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[gender] [nvarchar](50) NULL,
	[contact_info] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[medical_history] [nvarchar](50) NULL,
	[blood_type] [nvarchar](50) NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_patients] PRIMARY KEY CLUSTERED 
(
	[patient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Pharmacy]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Pharmacy](
	[PharmacyID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Location] [text] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_PurchaseInvoices]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_PurchaseInvoices](
	[InvoiceID] [int] NOT NULL,
	[SupplierID] [int] NULL,
	[PharmacyID] [int] NULL,
	[InvoiceDate] [datetime] NULL,
	[TotalAmount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_room]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_room](
	[room_id] [int] NOT NULL,
	[room_type] [nvarchar](50) NULL,
	[capacity] [int] NULL,
	[description] [nvarchar](50) NULL,
	[cost_per_day] [float] NULL,
	[department] [nvarchar](50) NULL,
	[room_number] [int] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_room] PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Supplier]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Supplier](
	[SupplierID] [int] NOT NULL,
	[Name] [nvarchar](70) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Trainees]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Trainees](
	[TraineeID] [int] NOT NULL,
	[TraineeName] [nvarchar](100) NULL,
	[UniversityName] [nvarchar](100) NULL,
	[DepartmentName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Dim_Trainees] PRIMARY KEY CLUSTERED 
(
	[TraineeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_TrainingPrograms]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_TrainingPrograms](
	[ProgramID] [int] NOT NULL,
	[ProgramName] [nvarchar](100) NULL,
	[DepartmentID] [int] NULL,
	[DurationWeeks] [int] NULL,
	[SupervisorID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dim_treatments]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dim_treatments](
	[treatments_id] [int] NOT NULL,
	[treatment_Name] [nvarchar](50) NULL,
	[cost] [float] NULL,
	[duration] [date] NULL,
	[id] [nchar](10) NULL,
 CONSTRAINT [PK_dim_treatments] PRIMARY KEY CLUSTERED 
(
	[treatments_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDate] [char](10) NULL,
	[DayOfMonth] [varchar](2) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeek] [char](1) NULL,
	[DayOfWeekInMonth] [varchar](2) NULL,
	[DayOfWeekInYear] [varchar](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [varchar](1) NULL,
	[WeekOfQuarter] [varchar](2) NULL,
	[WeekOfYear] [varchar](2) NULL,
	[Month] [varchar](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [varchar](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[MMYYYY] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_appointment]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_appointment](
	[appointment_id] [int] NOT NULL,
	[patient_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
	[department_id] [int] NOT NULL,
	[appointment_count] [int] NULL,
	[appointment_date] [date] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Fact_appointment] PRIMARY KEY CLUSTERED 
(
	[appointment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_bill]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_bill](
	[Billing_id] [int] NOT NULL,
	[patient_id] [int] NOT NULL,
	[total_billing_amount] [float] NOT NULL,
	[insurance_cove_rage] [float] NOT NULL,
	[patient_payment] [float] NOT NULL,
	[bill_date] [date] NULL,
	[medicine_id] [int] NOT NULL,
	[key_id] [int] NOT NULL,
 CONSTRAINT [PK_Fact_bill] PRIMARY KEY CLUSTERED 
(
	[Billing_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_BloodBags]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_BloodBags](
	[BagID] [int] NOT NULL,
	[BloodID] [int] NULL,
	[BagNumber] [nvarchar](50) NULL,
	[ExpirationDate] [nvarchar](50) NULL,
	[Donor_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fact_Drug_Requests]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_Drug_Requests](
	[RequestID] [int] NOT NULL,
	[DoctorID] [int] NULL,
	[PharmacyID] [int] NULL,
	[MedicineID] [int] NULL,
	[RequestDate] [datetime] NULL,
	[QuantityRequested] [int] NULL,
	[Status] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Insurance]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Insurance](
	[InsuranceID] [int] NOT NULL,
	[ProviderID] [int] NULL,
	[PolicyNumber] [nvarchar](50) NULL,
	[CoverageDetails] [text] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Inventory_Billing]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Inventory_Billing](
	[BillID] [int] NOT NULL,
	[InventoryID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[TotalAmount] [float] NULL,
	[Discount] [float] NULL,
	[FinalAmount] [float] NULL,
	[BillDate] [datetime] NULL,
	[PaidStatus] [bit] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Fact_Inventory_Billing] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fact_Invoice_patients]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_Invoice_patients](
	[InvoiceID] [int] NOT NULL,
	[BillingID] [int] NOT NULL,
	[FoodServiceBillID] [int] NOT NULL,
	[Medicine_id] [int] NOT NULL,
	[InvoiceDate] [date] NULL,
	[HospitalCost] [float] NULL,
	[FoodCost] [float] NULL,
	[MedicineCost] [float] NULL,
	[TotalAmount] [float] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_fact_Invoice_patients] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_operations]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_operations](
	[operation_id] [int] NOT NULL,
	[patient_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
	[department_id] [int] NOT NULL,
	[operation_date] [date] NULL,
	[operation_cost] [float] NULL,
	[number_of_operations] [int] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Fact_operations] PRIMARY KEY CLUSTERED 
(
	[operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fact_patient_cases]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_patient_cases](
	[case_id] [int] NOT NULL,
	[patient_id] [int] NOT NULL,
	[doctor_id] [int] NOT NULL,
	[disease_id] [int] NOT NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_fact_patient_cases] PRIMARY KEY CLUSTERED 
(
	[case_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fact_Patient_Records]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_Patient_Records](
	[RecordID] [int] NOT NULL,
	[PatientID] [int] NOT NULL,
	[BedID] [int] NULL,
	[DoctorID] [int] NULL,
	[RecordDetails] [text] NULL,
	[RecordDate] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[Symptoms] [text] NULL,
	[Diagnosis] [text] NULL,
	[Treatment] [text] NULL,
	[Prescription] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_patient_visit]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_patient_visit](
	[visit_id] [int] NOT NULL,
	[patient_1d] [int] NOT NULL,
	[department_id] [int] NOT NULL,
	[room_id] [int] NOT NULL,
	[date] [date] NULL,
	[total_charges] [float] NULL,
	[length_of_stay] [int] NULL,
	[VisitTime] [date] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_Fact_patient_visit] PRIMARY KEY CLUSTERED 
(
	[visit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fact_SecurityComplaints]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_SecurityComplaints](
	[ComplaintID] [int] NOT NULL,
	[ManSecurityID] [int] NULL,
	[PatientID] [int] NULL,
	[DonorID] [int] NULL,
	[ComplaintDate] [datetime] NULL,
	[ComplaintDescription] [nvarchar](300) NULL,
	[ActionTaken] [nvarchar](200) NULL,
	[Status] [nvarchar](50) NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_fact_SecurityComplaints] PRIMARY KEY CLUSTERED 
(
	[ComplaintID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fact_TraineeEvaluations]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fact_TraineeEvaluations](
	[trainee_evaluation_id] [int] NOT NULL,
	[TraineeID] [int] NOT NULL,
	[ProgramID] [int] NOT NULL,
	[EvaluationDate] [datetime] NOT NULL,
	[PerformanceScore] [float] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_fact_TraineeEvaluations] PRIMARY KEY CLUSTERED 
(
	[trainee_evaluation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicine]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicine](
	[MedicineID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Dosage] [nvarchar](50) NULL,
	[QuantityInStock] [int] NULL,
	[category] [nvarchar](50) NULL,
	[manufacturer] [nvarchar](50) NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED 
(
	[MedicineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingPrograms]    Script Date: 13/10/2024 10:39:25 ? ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingPrograms](
	[ProgramID] [int] NOT NULL,
	[ProgramName] [nvarchar](100) NULL,
	[DurationWeeks] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_TrainingPrograms] PRIMARY KEY CLUSTERED 
(
	[ProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fact_bill]  WITH CHECK ADD  CONSTRAINT [FK_Fact_bill_Dim_medicine] FOREIGN KEY([Billing_id])
REFERENCES [dbo].[Dim_medicine] ([medicine_id])
GO
ALTER TABLE [dbo].[Fact_bill] CHECK CONSTRAINT [FK_Fact_bill_Dim_medicine]
GO
ALTER TABLE [dbo].[Fact_bill]  WITH CHECK ADD  CONSTRAINT [FK_Fact_bill_Dim_patients] FOREIGN KEY([Billing_id])
REFERENCES [dbo].[Dim_patients] ([patient_id])
GO
ALTER TABLE [dbo].[Fact_bill] CHECK CONSTRAINT [FK_Fact_bill_Dim_patients]
GO
ALTER TABLE [dbo].[fact_patient_cases]  WITH CHECK ADD  CONSTRAINT [FK_fact_patient_cases_Dim_disease] FOREIGN KEY([disease_id])
REFERENCES [dbo].[Dim_disease] ([disease_id])
GO
ALTER TABLE [dbo].[fact_patient_cases] CHECK CONSTRAINT [FK_fact_patient_cases_Dim_disease]
GO
ALTER TABLE [dbo].[fact_patient_cases]  WITH CHECK ADD  CONSTRAINT [FK_fact_patient_cases_Dim_Doctors] FOREIGN KEY([doctor_id])
REFERENCES [dbo].[Dim_Doctors] ([doctor_id])
GO
ALTER TABLE [dbo].[fact_patient_cases] CHECK CONSTRAINT [FK_fact_patient_cases_Dim_Doctors]
GO
ALTER TABLE [dbo].[fact_patient_cases]  WITH CHECK ADD  CONSTRAINT [FK_fact_patient_cases_Dim_patients] FOREIGN KEY([patient_id])
REFERENCES [dbo].[Dim_patients] ([patient_id])
GO
ALTER TABLE [dbo].[fact_patient_cases] CHECK CONSTRAINT [FK_fact_patient_cases_Dim_patients]
GO
ALTER TABLE [dbo].[fact_patient_cases]  WITH CHECK ADD  CONSTRAINT [FK_fact_patient_cases_DimDate] FOREIGN KEY([id])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[fact_patient_cases] CHECK CONSTRAINT [FK_fact_patient_cases_DimDate]
GO
ALTER TABLE [dbo].[Fact_patient_visit]  WITH CHECK ADD  CONSTRAINT [FK_Fact_patient_visit_Dim_department] FOREIGN KEY([department_id])
REFERENCES [dbo].[Dim_department] ([department_id])
GO
ALTER TABLE [dbo].[Fact_patient_visit] CHECK CONSTRAINT [FK_Fact_patient_visit_Dim_department]
GO
ALTER TABLE [dbo].[Fact_patient_visit]  WITH CHECK ADD  CONSTRAINT [FK_Fact_patient_visit_Dim_patients] FOREIGN KEY([patient_1d])
REFERENCES [dbo].[Dim_patients] ([patient_id])
GO
ALTER TABLE [dbo].[Fact_patient_visit] CHECK CONSTRAINT [FK_Fact_patient_visit_Dim_patients]
GO
ALTER TABLE [dbo].[fact_SecurityComplaints]  WITH CHECK ADD  CONSTRAINT [FK_fact_SecurityComplaints_Dim_Man_Security] FOREIGN KEY([ManSecurityID])
REFERENCES [dbo].[Dim_Man_Security] ([SecurityID])
GO
ALTER TABLE [dbo].[fact_SecurityComplaints] CHECK CONSTRAINT [FK_fact_SecurityComplaints_Dim_Man_Security]
GO
ALTER TABLE [dbo].[fact_SecurityComplaints]  WITH CHECK ADD  CONSTRAINT [FK_fact_SecurityComplaints_Dim_patients] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Dim_patients] ([patient_id])
GO
ALTER TABLE [dbo].[fact_SecurityComplaints] CHECK CONSTRAINT [FK_fact_SecurityComplaints_Dim_patients]
GO
ALTER TABLE [dbo].[fact_SecurityComplaints]  WITH CHECK ADD  CONSTRAINT [FK_fact_SecurityComplaints_DimDate] FOREIGN KEY([DonorID])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[fact_SecurityComplaints] CHECK CONSTRAINT [FK_fact_SecurityComplaints_DimDate]
GO
