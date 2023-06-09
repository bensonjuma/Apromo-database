USE [WMSApromoTrading]
GO
/****** Object:  Table [dbo].[Certification]    Script Date: 16/05/2023 09:59:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certification](
	[CertificationID] [int] NOT NULL,
	[CertificationName] [nvarchar](50) NULL,
	[ExpirationDate] [date] NULL,
	[ComplianceStatus] [nvarchar](max) NULL,
 CONSTRAINT [PK_Certification] PRIMARY KEY CLUSTERED 
(
	[CertificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyID] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[ContactDetails] [nvarchar](100) NULL,
	[WareHouseID] [int] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerType] [nvarchar](50) NULL,
	[CustomerContact] [nvarchar](50) NULL,
	[CustomerStatus] [nchar](10) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deliverly]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deliverly](
	[DeliverlyID] [int] NOT NULL,
	[DeliverlyDate] [date] NULL,
	[DeliverlyStatus] [nchar](10) NULL,
	[DeliverlyVehicle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Deliverly] PRIMARY KEY CLUSTERED 
(
	[DeliverlyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderDate] [nvarchar](50) NULL,
	[OrderStatus] [nchar](10) NULL,
	[DeliverlyID] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[TemparatureRequirements] [nvarchar](50) NULL,
	[WareHouseID] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [int] NOT NULL,
	[WareHouseID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
	[ContactDetails] [nvarchar](50) NULL,
	[StaffType] [nvarchar](50) NULL,
	[WSID] [int] NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WareHouse]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WareHouse](
	[WareHouseID] [int] NOT NULL,
	[Location] [nvarchar](50) NULL,
	[StorageCapacity] [int] NULL,
	[TemparatureRequirements] [nvarchar](50) NULL,
	[CertificationID] [int] NULL,
	[WMSID] [int] NULL,
 CONSTRAINT [PK_WareHouse] PRIMARY KEY CLUSTERED 
(
	[WareHouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WMS]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WMS](
	[WMSID] [int] NOT NULL,
	[SystemName] [nvarchar](50) NULL,
	[Vendor] [nvarchar](50) NULL,
	[Version] [nvarchar](50) NULL,
 CONSTRAINT [PK_WMS] PRIMARY KEY CLUSTERED 
(
	[WMSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSchedules]    Script Date: 16/05/2023 09:59:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSchedules](
	[WSID] [int] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[WareHouseID] [int] NOT NULL,
 CONSTRAINT [PK_WorkSchedules] PRIMARY KEY CLUSTERED 
(
	[WSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Certification] ([CertificationID], [CertificationName], [ExpirationDate], [ComplianceStatus]) VALUES (1, N'Microsoft Certified Solutions Developer', CAST(N'2025-05-31' AS Date), N'Compliant')
GO
INSERT [dbo].[Certification] ([CertificationID], [CertificationName], [ExpirationDate], [ComplianceStatus]) VALUES (2, N'Cisco Certified Network Associate', CAST(N'2024-12-31' AS Date), N'Non-compliant')
GO
INSERT [dbo].[Certification] ([CertificationID], [CertificationName], [ExpirationDate], [ComplianceStatus]) VALUES (3, N'Amazon Web Services Certified Solutions Architect', CAST(N'2023-06-30' AS Date), N'Compliant')
GO
INSERT [dbo].[Certification] ([CertificationID], [CertificationName], [ExpirationDate], [ComplianceStatus]) VALUES (4, N'Project Management Professional', CAST(N'2026-03-31' AS Date), N'Compliant')
GO
INSERT [dbo].[Certification] ([CertificationID], [CertificationName], [ExpirationDate], [ComplianceStatus]) VALUES (5, N'Certified ScrumMaster', CAST(N'2023-11-30' AS Date), N'Non-compliant')
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [Location], [ContactDetails], [WareHouseID]) VALUES (3, N'Apple Inc.', N'1 Apple Park Way, Cupertino, CA 95014', N'408-996-1010', 3)
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [Location], [ContactDetails], [WareHouseID]) VALUES (4, N'Amazon.com, Inc.', N'410 Terry Avenue North, Seattle, WA 98109', N'206-266-1000', 4)
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [Location], [ContactDetails], [WareHouseID]) VALUES (5, N'Facebook, Inc.', N'1 Hacker Way, Menlo Park, CA 94025', N'650-308-7300', 5)
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [Location], [ContactDetails], [WareHouseID]) VALUES (6, N'Alphabet Inc.', N'1600 Amphitheatre Parkway, Mountain View, CA 94043', N'650-253-0000', 6)
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [Location], [ContactDetails], [WareHouseID]) VALUES (8, N'Oracle Corporation', N'500 Oracle Parkway, Redwood City, CA 94065', N'650-506-7000', 8)
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [Location], [ContactDetails], [WareHouseID]) VALUES (9, N'IBM Corporation', N'1 New Orchard Road, Armonk, NY 10504', N'914-499-1900', 9)
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName], [Location], [ContactDetails], [WareHouseID]) VALUES (10, N'Netflix, Inc.', N'100 Winchester Circle, Los Gatos, CA 95032', N'408-540-3700', 10)
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (1, N'John Smith', N'Individual', N'john.smith@example.com', N'Active    ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (2, N'Acme Corporation', N'Business', N'acme@example.com', N'Active    ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (3, N'Jane Doe', N'Individual', N'jane.doe@example.com', N'Inactive  ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (4, N'XYZ Inc.', N'Business', N'xyz@example.com', N'Active    ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (5, N'Bob Johnson', N'Individual', N'bob.johnson@example.com', N'Active    ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (6, N'ABC Corp.', N'Business', N'abc@example.com', N'Inactive  ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (7, N'Sarah Brown', N'Individual', N'sarah.brown@example.com', N'Active    ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (8, N'DEF Co.', N'Business', N'def@example.com', N'Inactive  ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (9, N'Mike Davis', N'Individual', N'mike.davis@example.com', N'Active    ')
GO
INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [CustomerType], [CustomerContact], [CustomerStatus]) VALUES (10, N'GHI LLC', N'Business', N'ghi@example.com', N'Active    ')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (1, CAST(N'2023-05-16' AS Date), N'Pending   ', N'Truck 1')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (2, CAST(N'2023-05-17' AS Date), N'Scheduled ', N'Truck 2')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (3, CAST(N'2023-05-18' AS Date), N'In Transit', N'Truck 3')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (4, CAST(N'2023-05-19' AS Date), N'Delivered ', N'Truck 4')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (5, CAST(N'2023-05-20' AS Date), N'Cancelled ', N'Truck 5')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (6, CAST(N'2023-05-21' AS Date), N'Pending   ', N'Truck 6')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (7, CAST(N'2023-05-22' AS Date), N'Scheduled ', N'Truck 7')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (8, CAST(N'2023-05-23' AS Date), N'In Transit', N'Truck 8')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (9, CAST(N'2023-05-24' AS Date), N'Delivered ', N'Truck 9')
GO
INSERT [dbo].[Deliverly] ([DeliverlyID], [DeliverlyDate], [DeliverlyStatus], [DeliverlyVehicle]) VALUES (10, CAST(N'2023-05-25' AS Date), N'Cancelled ', N'Truck 10')
GO
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [OrderDate], [OrderStatus], [DeliverlyID]) VALUES (1, 2, 3, N'2023-05-16', N'Pending   ', 4)
GO
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [OrderDate], [OrderStatus], [DeliverlyID]) VALUES (2, 3, 5, N'2023-05-17', N'Shipped   ', 5)
GO
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [OrderDate], [OrderStatus], [DeliverlyID]) VALUES (3, 4, 6, N'2023-05-18', N'Delivered ', 6)
GO
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [OrderDate], [OrderStatus], [DeliverlyID]) VALUES (4, 2, 4, N'2023-05-19', N'Pending   ', 7)
GO
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [OrderDate], [OrderStatus], [DeliverlyID]) VALUES (5, 5, 3, N'2023-05-20', N'Shipped   ', 8)
GO
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [OrderDate], [OrderStatus], [DeliverlyID]) VALUES (6, 1, 5, N'2023-05-21', N'Delivered ', 9)
GO
INSERT [dbo].[Order] ([OrderID], [CustomerID], [ProductID], [OrderDate], [OrderStatus], [DeliverlyID]) VALUES (7, 3, 4, N'2023-05-22', N'Pending   ', 10)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (1, N'Product 1', N'Description for Product 1', 10.5, N'Cold', 1, 50)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (2, N'Product 2', N'Description for Product 2', 15.25, N'Ambient', 2, 75)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (3, N'Product 3', N'Description for Product 3', 5.99, N'Frozen', 3, 25)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (4, N'Product 4', N'Description for Product 4', 25, N'Cold', 1, 100)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (5, N'Product 5', N'Description for Product 5', 8.75, N'Ambient', 2, 125)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (6, N'Product 6', N'Description for Product 6', 3.5, N'Frozen', 3, 50)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (7, N'Product 7', N'Description for Product 7', 20, N'Cold', 1, 75)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (8, N'Product 8', N'Description for Product 8', 12.99, N'Ambient', 2, 100)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (9, N'Product 9', N'Description for Product 9', 6.25, N'Frozen', 3, 150)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [TemparatureRequirements], [WareHouseID], [Quantity]) VALUES (10, N'Product 10', N'Description for Product 10', 18.5, N'Cold', 1, 125)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (1, 1, N'John Doe', N'Manager', N'555-1234', N'Full Time', 1)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (2, 1, N'Jane Smith', N'Associate', N'555-5678', N'Full Time', 2)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (3, 1, N'Bob Johnson', N'Associate', N'555-9012', N'Part Time', 1)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (4, 2, N'Sarah Lee', N'Manager', N'555-3456', N'Full Time', 2)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (5, 2, N'Tom Brown', N'Associate', N'555-7890', N'Full Time', 1)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (6, 2, N'Sara Wilson', N'Associate', N'555-1234', N'Part Time', 2)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (7, 3, N'Mike Smith', N'Manager', N'555-5678', N'Full Time', 1)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (8, 3, N'Emily Johnson', N'Associate', N'555-9012', N'Full Time', 2)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (9, 3, N'Bob Brown', N'Associate', N'555-3456', N'Part Time', 1)
GO
INSERT [dbo].[Staff] ([StaffID], [WareHouseID], [Name], [Role], [ContactDetails], [StaffType], [WSID]) VALUES (10, 3, N'Sarah Wilson', N'Associate', N'555-7890', N'Part Time', 2)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (1, N'Seattle, WA', 500, N'Dry', 1, 1)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (2, N'San Francisco, CA', 1000, N'Cool', 2, 2)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (3, N'New York, NY', 750, N'Freezer', 3, 3)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (4, N'Los Angeles, CA', 800, N'Dry', 4, 1)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (5, N'Dallas, TX', 900, N'Cool', 5, 2)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (6, N'Chicago, IL', 1200, N'Dry', 4, 3)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (7, N'Houston, TX', 700, N'Freezer', 2, 1)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (8, N'Atlanta, GA', 600, N'Cool', 5, 2)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (9, N'Washington, D.C.', 1100, N'Dry', 1, 3)
GO
INSERT [dbo].[WareHouse] ([WareHouseID], [Location], [StorageCapacity], [TemparatureRequirements], [CertificationID], [WMSID]) VALUES (10, N'Miami, FL', 850, N'Freezer', 5, 1)
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (1, N'SAP Warehouse Management', N'SAP SE', N'9.5')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (2, N'Oracle Warehouse Management', N'Oracle Corporation', N'R12')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (3, N'JDA Warehouse Management', N'JDA Software Group, Inc.', N'2018')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (4, N'Manhattan Warehouse Management', N'Manhattan Associates, Inc.', N'2021')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (5, N'IBM Sterling Warehouse Management', N'IBM Corporation', N'9.5')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (6, N'Infor Warehouse Management', N'Infor Global Solutions, Inc.', N'10.2')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (7, N'HighJump Warehouse Management', N'Körber AG', N'2020')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (8, N'TECSYS Warehouse Management', N'TECSYS Inc.', N'2021')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (9, N'Logiwa Warehouse Management', N'Logiwa Corporation', N'2021')
GO
INSERT [dbo].[WMS] ([WMSID], [SystemName], [Vendor], [Version]) VALUES (10, N'Blue Yonder Warehouse Management', N'Blue Yonder Group, Inc.', N'2021')
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (1, CAST(N'08:00:00' AS Time), CAST(N'16:00:00' AS Time), 1)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (2, CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (3, CAST(N'07:00:00' AS Time), CAST(N'15:00:00' AS Time), 2)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (4, CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time), 2)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (5, CAST(N'08:30:00' AS Time), CAST(N'16:30:00' AS Time), 3)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (6, CAST(N'09:30:00' AS Time), CAST(N'17:30:00' AS Time), 3)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (7, CAST(N'07:30:00' AS Time), CAST(N'15:30:00' AS Time), 4)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (8, CAST(N'10:30:00' AS Time), CAST(N'18:30:00' AS Time), 4)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (9, CAST(N'08:00:00' AS Time), CAST(N'16:00:00' AS Time), 5)
GO
INSERT [dbo].[WorkSchedules] ([WSID], [StartTime], [EndTime], [WareHouseID]) VALUES (10, CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), 5)
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_WareHouse] FOREIGN KEY([WareHouseID])
REFERENCES [dbo].[WareHouse] ([WareHouseID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_WareHouse]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Deliverly] FOREIGN KEY([DeliverlyID])
REFERENCES [dbo].[Deliverly] ([DeliverlyID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Deliverly]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_WareHouse] FOREIGN KEY([WareHouseID])
REFERENCES [dbo].[WareHouse] ([WareHouseID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_WareHouse]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_WareHouse] FOREIGN KEY([WareHouseID])
REFERENCES [dbo].[WareHouse] ([WareHouseID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_WareHouse]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_WMS] FOREIGN KEY([WSID])
REFERENCES [dbo].[WMS] ([WMSID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_WMS]
GO
ALTER TABLE [dbo].[WareHouse]  WITH CHECK ADD  CONSTRAINT [FK_WareHouse_Certification] FOREIGN KEY([CertificationID])
REFERENCES [dbo].[Certification] ([CertificationID])
GO
ALTER TABLE [dbo].[WareHouse] CHECK CONSTRAINT [FK_WareHouse_Certification]
GO
ALTER TABLE [dbo].[WareHouse]  WITH CHECK ADD  CONSTRAINT [FK_WareHouse_WMS] FOREIGN KEY([WMSID])
REFERENCES [dbo].[WMS] ([WMSID])
GO
ALTER TABLE [dbo].[WareHouse] CHECK CONSTRAINT [FK_WareHouse_WMS]
GO
ALTER TABLE [dbo].[WorkSchedules]  WITH CHECK ADD  CONSTRAINT [FK_WorkSchedules_WareHouse] FOREIGN KEY([WareHouseID])
REFERENCES [dbo].[WareHouse] ([WareHouseID])
GO
ALTER TABLE [dbo].[WorkSchedules] CHECK CONSTRAINT [FK_WorkSchedules_WareHouse]
GO

-- ============================================= 
/* 1.Average warehouse capacity used: The number of inventory storage locations with an on-hand quantity greater than zero, is divided by the total number of inventory storage locations */
SELECT AVG(CAST(UsedLocations AS FLOAT) / TotalLocations) AS AverageCapacityUsed
FROM (
    SELECT COUNT(*) AS UsedLocations
    FROM [Product] p
    INNER JOIN [WareHouse] w ON p.WareHouseID = w.WareHouseID
    WHERE p.Quantity > 0
    GROUP BY p.WareHouseID
) AS UsedLocationsByWarehouse
CROSS JOIN (
    SELECT COUNT(*) AS TotalLocations
    FROM [WareHouse]
) AS TotalLocations
/* 
2.	Inventory count accuracy by location: Are the inventory counts accurate in each location? This is another stealth issue that is more important than it looks. If there are fewer items in a bin than the system says there should be, that might indicate theft or unreported damage. The results of miscounted inventory include unforeseen stock-outs and fulfilment problems that negatively customer attitudes. */
SELECT
    w.Location,
    CASE WHEN SUM(CASE WHEN p.Quantity IS NULL OR p.Quantity = 0 THEN 1 ELSE 0 END) > 0
         THEN 'Inaccurate'
         ELSE 'Accurate'
    END AS InventoryAccuracy
FROM [WareHouse] w
LEFT JOIN [Product] p ON w.WareHouseID = p.WareHouseID
GROUP BY w.Location

/* 3.	Order picking accuracy: This metric shows how accurately warehouse employees pick products for orders.
 */
 SELECT
    o.OrderID,
    c.CustomerName,
    CASE WHEN COUNT(*) = SUM(CASE WHEN p.WareHouseID IS NOT NULL THEN 1 ELSE 0 END)
         THEN 'Accurate'
         ELSE 'Inaccurate'
    END AS PickingAccuracy
FROM [Order] o
JOIN [Customer] c ON o.CustomerID = c.CustomerID
LEFT JOIN [Product] p ON o.ProductID = p.ProductID
GROUP BY o.OrderID, c.CustomerName

/* 4.	On-time Shipments: Shipments reaching customers on time is a critical success metric for warehouses. It’s important on its own because it reflects if the warehouse doing its job right. However, late shipments also create hidden costs and difficulties elsewhere in the business. They cause customer service calls and complaints. They cause package tracking and other wastes of time. Ultimately, late shipments can damage your brand and cause customers to defect. */
	SELECT
  o.OrderID,
  c.CustomerName,
  o.OrderDate,
  d.DeliverlyDate
FROM
  [dbo].[Order] o
  INNER JOIN [dbo].[Customer] c ON o.CustomerID = c.CustomerID
  INNER JOIN [dbo].[Deliverly] d ON o.DeliverlyID = d.DeliverlyID
WHERE
  o.OrderStatus = 'Delivered'
  AND o.OrderDate <= d.DeliverlyDate

