USE [master]
GO
/****** Object:  Database [InventoryMS_DB]    Script Date: 5/2/2021 5:57:44 PM ******/
CREATE DATABASE [InventoryMS_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InventoryMS_DB', FILENAME = N'C:\Users\SoNiC\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\InventoryMS_DB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'InventoryMS_DB_log', FILENAME = N'C:\Users\SoNiC\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\InventoryMS_DB.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [InventoryMS_DB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InventoryMS_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InventoryMS_DB] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [InventoryMS_DB] SET ANSI_NULLS ON 
GO
ALTER DATABASE [InventoryMS_DB] SET ANSI_PADDING ON 
GO
ALTER DATABASE [InventoryMS_DB] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [InventoryMS_DB] SET ARITHABORT ON 
GO
ALTER DATABASE [InventoryMS_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InventoryMS_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [InventoryMS_DB] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [InventoryMS_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [InventoryMS_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InventoryMS_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InventoryMS_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [InventoryMS_DB] SET  MULTI_USER 
GO
ALTER DATABASE [InventoryMS_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InventoryMS_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InventoryMS_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InventoryMS_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [InventoryMS_DB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InventoryMS_DB]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[account_Id] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Total_Paid_Amount] [varchar](255) NULL,
	[Pending_Amount] [varchar](255) NULL,
	[Phone_Personal] [varchar](255) NULL,
	[Phone_Other] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[categoryId] [int] NULL,
	[Opening_Balance] [float] NULL,
	[Current_Balance] [float] NULL,
	[Comments] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[Country] [varchar](200) NULL,
 CONSTRAINT [PK_ACCOUNTS] PRIMARY KEY CLUSTERED 
(
	[account_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts_category]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts_category](
	[categoryId] [int] NOT NULL,
	[Title] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_ACCOUNTS_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[area]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[area](
	[areaId] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[Province] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_AREA] PRIMARY KEY CLUSTERED 
(
	[areaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bank_accounts]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bank_accounts](
	[Account_Number] [varchar](100) NOT NULL,
	[Bank_Account_Holder_Name] [varchar](100) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Account_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[batch-details]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[batch-details](
	[Id] [int] NOT NULL,
	[batchId] [int] NULL,
	[Payment_Amount] [float] NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[batchs]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[batchs](
	[batchId] [int] NOT NULL,
	[Title] [varchar](50) NULL,
	[Number_of_Accounts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[batchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cash_payments]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cash_payments](
	[paymentId] [int] NOT NULL,
	[Payment_Date] [date] NULL,
	[Payment_Time] [time](7) NULL,
	[categoryId] [int] NULL,
	[invoiceId] [int] NULL,
	[Amount_Payed] [nchar](10) NULL,
	[paymentMethodId] [int] NULL,
	[Bank_Account_Number] [varchar](100) NULL,
	[batchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[paymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerTown]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTown](
	[customerTownId] [int] NOT NULL,
	[accountId] [int] NULL,
	[townId] [int] NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[customerTownId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoice]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice](
	[invoiceId] [int] NOT NULL,
	[Seller_Name] [varchar](50) NULL,
	[Seller_Address] [varchar](200) NULL,
	[Buyer_Name] [varchar](50) NULL,
	[Buyer_Address] [varchar](200) NULL,
	[Total_Items] [int] NULL,
	[Net_Amount] [float] NULL,
	[Discount_Amount] [float] NULL,
	[Country_of_Issuence] [varchar](100) NULL,
	[Mode_of_Transport] [varchar](50) NULL,
	[Transport_Charges] [float] NULL,
	[Dispatch_Date] [date] NULL,
	[Other_Information] [varchar](200) NULL,
	[categoryId] [int] NULL,
	[accountId] [int] NULL,
	[GST] [float] NULL,
	[Payable_Amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[invoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoice_category]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice_category](
	[categoryId] [int] NOT NULL,
	[Title] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_INVOICE_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoice_items]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice_items](
	[id] [int] NOT NULL,
	[productId] [int] NULL,
	[invoiceId] [int] NULL,
	[Quantity] [float] NULL,
	[Sum_Amount] [float] NULL,
 CONSTRAINT [PK_INVOICE_ITEMS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_category]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_category](
	[categoryId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_methods]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_methods](
	[paymentMethodId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[paymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[prodcutId] [int] NOT NULL,
	[Product_Name] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[MFG] [date] NULL,
	[EXP] [date] NULL,
	[Price] [float] NULL,
	[Shipping_Date] [date] NULL,
	[Availability_Status] [bit] NULL,
	[Weight] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Quality] [varchar](50) NULL,
	[categoryId] [int] NULL,
	[Available_Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[prodcutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[categoryId] [int] NOT NULL,
	[Title] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_PRODUCT_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purchase]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purchase](
	[purchaseId] [int] NOT NULL,
	[supplierId] [int] NULL,
	[invoiceId] [int] NULL,
	[Payment_Method] [varchar](255) NULL,
 CONSTRAINT [PK_PURCHASE] PRIMARY KEY CLUSTERED 
(
	[purchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[return]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[return](
	[returnId] [int] NOT NULL,
	[accountId] [int] NULL,
	[categoryId] [int] NULL,
	[Total_Claimed_Amount] [float] NULL,
	[Validity_Status] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_RETURN] PRIMARY KEY CLUSTERED 
(
	[returnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[return_category]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[return_category](
	[categoryId] [int] NOT NULL,
	[Title] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
 CONSTRAINT [PK_RETURN_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[return_details]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[return_details](
	[Id] [int] NOT NULL,
	[returnId] [int] NULL,
	[productId] [int] NULL,
	[Quantity_Returned] [int] NULL,
	[Reason_of_Return] [varchar](200) NULL,
	[Amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[route]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[route](
	[routeId] [int] NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[routeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[routeDetail]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[routeDetail](
	[id] [int] NOT NULL,
	[routeId] [int] NULL,
	[townId] [int] NULL,
	[Street] [varchar](100) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salesman]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salesman](
	[salesmanId] [int] NOT NULL,
	[accountId] [int] NULL,
	[routeId] [int] NULL,
	[shiftId] [int] NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[salesmanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shift]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shift](
	[shiftId] [int] NOT NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[shiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[town]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[town](
	[townId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[areaId] [int] NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[townId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[userId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[Phone] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Description] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[cashInvoiceView]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cashInvoiceView]
	AS SELECT cp.*,inv.accountId as accountId FROM [cash_payments] as cp 
	join
	[invoice] as inv
	on cp.invoiceId=inv.invoiceId
GO
/****** Object:  View [dbo].[cashInvoiceAccountsView]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[cashInvoiceAccountsView]
	AS SELECT civ.*,acc.Name as Name FROM [cashInvoiceView] as civ
	join
	[accounts] as acc
	on civ.accountId=acc.account_Id
GO
/****** Object:  View [dbo].[AccountCategory]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AccountCategory]
	AS SELECT categoryId as Id,Title as Account_Category_Title,Description FROM [accounts_category]
GO
/****** Object:  View [dbo].[AccountSetup]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AccountSetup]
	AS SELECT account_Id,Name,City,Country,Phone_Personal,Phone_Other,Address,Opening_Balance,categoryId,Comments,Email FROM [accounts]
GO
/****** Object:  View [dbo].[AccountsHistory]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AccountsHistory]
	AS SELECT account_Id as Id,Name as Account_Holder_Name,Current_Balance,categoryId as Category_Number,Pending_Amount,Phone_Personal,Address,City,Country,Email,Opening_Balance,Total_Paid_Amount,Phone_Other,Comments FROM [accounts]
GO
/****** Object:  View [dbo].[AccountsShow]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AccountsShow]
	AS SELECT account_Id as Id,Name as Owner_Name,categoryId as Category_Number,Address,City,Country,Phone_Personal,Phone_Other,Opening_Balance,Current_Balance,Total_Paid_Amount,Pending_Amount,Email,Comments FROM [accounts]
GO
/****** Object:  View [dbo].[AddressList]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AddressList]
	AS SELECT acc.account_Id as Id,acc.Name as Account_Holder,t.Name as Town_Name, a.Name as Area_Name, a.City as City,a.Province as Province, acc.Country as Country FROM [CustomerTown] as ct 
	join
	[accounts] as acc
	on
	ct.accountId=acc.account_Id
	join
	[town] as t
	on ct.townId=t.townId
	join
	[area] as a
	on t.areaId=a.areaId
GO
/****** Object:  View [dbo].[availableAreas]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[availableAreas]
	AS SELECT areaId as Id,Name as Area_Name,City,Province,Description FROM [area]
GO
/****** Object:  View [dbo].[AvailableTowns]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AvailableTowns]
	AS SELECT townId as Id,Name as Town_Name, Description FROM [town]
GO
/****** Object:  View [dbo].[ClaimsReturnHistory]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ClaimsReturnHistory]
	AS SELECT Name,Total_Claimed_Amount,Validity_Status,Description FROM [accounts] as ac JOIN [return] as re ON ac.account_Id=re.accountId
	WHERE re.categoryId=2
GO
/****** Object:  View [dbo].[CustomersTown]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CustomersTown]
	AS SELECT acc.account_Id as Id,acc.Name as Account_Owner,t.Name as Town_Name FROM [accounts] as acc
	join
	[CustomerTown] as ct
	on acc.account_Id=ct.accountId
	join
	[town]as t
	on ct.townId=t.townId
GO
/****** Object:  View [dbo].[DeadStock]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DeadStock]
	AS SELECT Product_Name,EXP,Available_Quantity FROM [product] where EXP<=CURRENT_TIMESTAMP
GO
/****** Object:  View [dbo].[OpeningBalance]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OpeningBalance]
	AS SELECT account_Id as Id,Opening_Balance,Name as Owner_Name,categoryId as Category_Number FROM [accounts]
GO
/****** Object:  View [dbo].[ProductList]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ProductList]
	AS SELECT Pr.Product_Name as Product_Name,pr.Available_Quantity as Available_Quantity,pr.Price as Price,cat.Title as Product_Category,pr.MFG as MFG_Date,pr.EXP as Exp_Date,pr.Manufacturer as Manufacturer,pr.Shipping_Date as Shipping_Date,pr.Size as Size, pr.Weight as Weight,pr.Quality as Quality FROM [product] as pr join [product_category] as cat on pr.categoryId=cat.categoryId
GO
/****** Object:  View [dbo].[SalesHistory]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SalesHistory]
	AS SELECT Seller_Name,Buyer_Name,Net_Amount,Discount_Amount,
	Total_Items,Transport_Charges,Dispatch_Date,Mode_of_Transport,
	Seller_Address,Buyer_Address,Country_of_Issuence,Other_Information FROM [invoice]
GO
/****** Object:  View [dbo].[SalesReturnHistory]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SalesReturnHistory]
	AS SELECT Name,Total_Claimed_Amount,Validity_Status,Description FROM [accounts] as ac JOIN [return] as re ON ac.account_Id=re.accountId
	WHERE re.categoryId=1
GO
/****** Object:  View [dbo].[StockExpiry]    Script Date: 5/2/2021 5:57:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StockExpiry]
	AS SELECT Product_Name,EXP,MFG,Available_Quantity,Shipping_Date FROM [product]
GO
ALTER TABLE [dbo].[accounts]  WITH CHECK ADD  CONSTRAINT [FK_accounts_accounts_category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[accounts_category] ([categoryId])
GO
ALTER TABLE [dbo].[accounts] CHECK CONSTRAINT [FK_accounts_accounts_category]
GO
ALTER TABLE [dbo].[batch-details]  WITH CHECK ADD  CONSTRAINT [FK_batch-details_batchs] FOREIGN KEY([batchId])
REFERENCES [dbo].[batchs] ([batchId])
GO
ALTER TABLE [dbo].[batch-details] CHECK CONSTRAINT [FK_batch-details_batchs]
GO
ALTER TABLE [dbo].[cash_payments]  WITH CHECK ADD  CONSTRAINT [FK_cash_payments_bank_accounts] FOREIGN KEY([Bank_Account_Number])
REFERENCES [dbo].[bank_accounts] ([Account_Number])
GO
ALTER TABLE [dbo].[cash_payments] CHECK CONSTRAINT [FK_cash_payments_bank_accounts]
GO
ALTER TABLE [dbo].[cash_payments]  WITH CHECK ADD  CONSTRAINT [FK_cash_payments_batchs] FOREIGN KEY([batchId])
REFERENCES [dbo].[batchs] ([batchId])
GO
ALTER TABLE [dbo].[cash_payments] CHECK CONSTRAINT [FK_cash_payments_batchs]
GO
ALTER TABLE [dbo].[cash_payments]  WITH CHECK ADD  CONSTRAINT [FK_cash_payments_invoice] FOREIGN KEY([invoiceId])
REFERENCES [dbo].[invoice] ([invoiceId])
GO
ALTER TABLE [dbo].[cash_payments] CHECK CONSTRAINT [FK_cash_payments_invoice]
GO
ALTER TABLE [dbo].[cash_payments]  WITH CHECK ADD  CONSTRAINT [FK_cash_payments_payment_catedory] FOREIGN KEY([categoryId])
REFERENCES [dbo].[payment_category] ([categoryId])
GO
ALTER TABLE [dbo].[cash_payments] CHECK CONSTRAINT [FK_cash_payments_payment_catedory]
GO
ALTER TABLE [dbo].[cash_payments]  WITH CHECK ADD  CONSTRAINT [FK_cash_payments_payment-methods] FOREIGN KEY([paymentMethodId])
REFERENCES [dbo].[payment_methods] ([paymentMethodId])
GO
ALTER TABLE [dbo].[cash_payments] CHECK CONSTRAINT [FK_cash_payments_payment-methods]
GO
ALTER TABLE [dbo].[CustomerTown]  WITH CHECK ADD  CONSTRAINT [FK_Table_accounts] FOREIGN KEY([accountId])
REFERENCES [dbo].[accounts] ([account_Id])
GO
ALTER TABLE [dbo].[CustomerTown] CHECK CONSTRAINT [FK_Table_accounts]
GO
ALTER TABLE [dbo].[CustomerTown]  WITH CHECK ADD  CONSTRAINT [FK_Table_town] FOREIGN KEY([townId])
REFERENCES [dbo].[town] ([townId])
GO
ALTER TABLE [dbo].[CustomerTown] CHECK CONSTRAINT [FK_Table_town]
GO
ALTER TABLE [dbo].[invoice]  WITH CHECK ADD  CONSTRAINT [FK_invoice_accounts] FOREIGN KEY([accountId])
REFERENCES [dbo].[accounts] ([account_Id])
GO
ALTER TABLE [dbo].[invoice] CHECK CONSTRAINT [FK_invoice_accounts]
GO
ALTER TABLE [dbo].[invoice]  WITH CHECK ADD  CONSTRAINT [FK_invoice_invoice_category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[invoice_category] ([categoryId])
GO
ALTER TABLE [dbo].[invoice] CHECK CONSTRAINT [FK_invoice_invoice_category]
GO
ALTER TABLE [dbo].[invoice_items]  WITH CHECK ADD  CONSTRAINT [FK_invoice_items_invoice] FOREIGN KEY([invoiceId])
REFERENCES [dbo].[invoice] ([invoiceId])
GO
ALTER TABLE [dbo].[invoice_items] CHECK CONSTRAINT [FK_invoice_items_invoice]
GO
ALTER TABLE [dbo].[invoice_items]  WITH CHECK ADD  CONSTRAINT [FK_invoice_items_ToTable] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([prodcutId])
GO
ALTER TABLE [dbo].[invoice_items] CHECK CONSTRAINT [FK_invoice_items_ToTable]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[product_category] ([categoryId])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[purchase]  WITH CHECK ADD  CONSTRAINT [purchase_fk0] FOREIGN KEY([supplierId])
REFERENCES [dbo].[accounts] ([account_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[purchase] CHECK CONSTRAINT [purchase_fk0]
GO
ALTER TABLE [dbo].[return]  WITH CHECK ADD  CONSTRAINT [return_fk0] FOREIGN KEY([accountId])
REFERENCES [dbo].[accounts] ([account_Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[return] CHECK CONSTRAINT [return_fk0]
GO
ALTER TABLE [dbo].[return]  WITH CHECK ADD  CONSTRAINT [return_fk1] FOREIGN KEY([categoryId])
REFERENCES [dbo].[return_category] ([categoryId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[return] CHECK CONSTRAINT [return_fk1]
GO
ALTER TABLE [dbo].[return_details]  WITH CHECK ADD  CONSTRAINT [FK_return_details_product] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([prodcutId])
GO
ALTER TABLE [dbo].[return_details] CHECK CONSTRAINT [FK_return_details_product]
GO
ALTER TABLE [dbo].[return_details]  WITH CHECK ADD  CONSTRAINT [FK_return_details_return] FOREIGN KEY([returnId])
REFERENCES [dbo].[return] ([returnId])
GO
ALTER TABLE [dbo].[return_details] CHECK CONSTRAINT [FK_return_details_return]
GO
ALTER TABLE [dbo].[routeDetail]  WITH CHECK ADD  CONSTRAINT [FK_routeDetail_route] FOREIGN KEY([routeId])
REFERENCES [dbo].[route] ([routeId])
GO
ALTER TABLE [dbo].[routeDetail] CHECK CONSTRAINT [FK_routeDetail_route]
GO
ALTER TABLE [dbo].[routeDetail]  WITH CHECK ADD  CONSTRAINT [FK_routeDetail_town] FOREIGN KEY([townId])
REFERENCES [dbo].[town] ([townId])
GO
ALTER TABLE [dbo].[routeDetail] CHECK CONSTRAINT [FK_routeDetail_town]
GO
ALTER TABLE [dbo].[salesman]  WITH CHECK ADD  CONSTRAINT [FK_salesman_accounts] FOREIGN KEY([accountId])
REFERENCES [dbo].[accounts] ([account_Id])
GO
ALTER TABLE [dbo].[salesman] CHECK CONSTRAINT [FK_salesman_accounts]
GO
ALTER TABLE [dbo].[salesman]  WITH CHECK ADD  CONSTRAINT [FK_salesman_route] FOREIGN KEY([routeId])
REFERENCES [dbo].[route] ([routeId])
GO
ALTER TABLE [dbo].[salesman] CHECK CONSTRAINT [FK_salesman_route]
GO
ALTER TABLE [dbo].[salesman]  WITH CHECK ADD  CONSTRAINT [FK_salesman_shift] FOREIGN KEY([shiftId])
REFERENCES [dbo].[shift] ([shiftId])
GO
ALTER TABLE [dbo].[salesman] CHECK CONSTRAINT [FK_salesman_shift]
GO
ALTER TABLE [dbo].[town]  WITH CHECK ADD  CONSTRAINT [FK_town_area] FOREIGN KEY([areaId])
REFERENCES [dbo].[area] ([areaId])
GO
ALTER TABLE [dbo].[town] CHECK CONSTRAINT [FK_town_area]
GO
USE [master]
GO
ALTER DATABASE [InventoryMS_DB] SET  READ_WRITE 
GO
