/*
County Fee Collections, a .NET application for managing fee payments
Copyright (C) 2015  Pottawattamie County, Iowa

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

USE [master]
GO
/****** Object:  Database [civilfeecollections]    Script Date: 03/02/2015 15:48:13 ******/
CREATE DATABASE [civilfeecollections] ON  PRIMARY 
( NAME = N'civilfeecollections', FILENAME = N'F:\Data\civilfeecollections.mdf' , SIZE = 3456KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'civilfeecollections_log', FILENAME = N'G:\Log\civilfeecollections.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 1%)
GO
ALTER DATABASE [civilfeecollections] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [civilfeecollections].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [civilfeecollections] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [civilfeecollections] SET ANSI_NULLS OFF
GO
ALTER DATABASE [civilfeecollections] SET ANSI_PADDING OFF
GO
ALTER DATABASE [civilfeecollections] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [civilfeecollections] SET ARITHABORT OFF
GO
ALTER DATABASE [civilfeecollections] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [civilfeecollections] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [civilfeecollections] SET AUTO_SHRINK ON
GO
ALTER DATABASE [civilfeecollections] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [civilfeecollections] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [civilfeecollections] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [civilfeecollections] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [civilfeecollections] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [civilfeecollections] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [civilfeecollections] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [civilfeecollections] SET  DISABLE_BROKER
GO
ALTER DATABASE [civilfeecollections] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [civilfeecollections] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [civilfeecollections] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [civilfeecollections] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [civilfeecollections] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [civilfeecollections] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [civilfeecollections] SET  READ_WRITE
GO
ALTER DATABASE [civilfeecollections] SET RECOVERY SIMPLE
GO
ALTER DATABASE [civilfeecollections] SET  MULTI_USER
GO
ALTER DATABASE [civilfeecollections] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [civilfeecollections] SET DB_CHAINING OFF
GO
USE [civilfeecollections]
GO
/****** Object:  Table [dbo].[RestrictedCasePrefixes]    Script Date: 03/02/2015 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RestrictedCasePrefixes](
	[prefixid] [int] IDENTITY(1,1) NOT NULL,
	[prefix] [varchar](10) NOT NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [RestrictedCasePrefixes_PK] PRIMARY KEY CLUSTERED 
(
	[prefixid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [prefix] UNIQUE NONCLUSTERED 
(
	[prefix] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RestrictedCasePrefixes] ON
INSERT [dbo].[RestrictedCasePrefixes] ([prefixid], [prefix], [updatedby], [updateddate]) VALUES (3, N'scsc', N'DOMAIN\user', CAST(0x00009C1500EE34D8 AS DateTime))
INSERT [dbo].[RestrictedCasePrefixes] ([prefixid], [prefix], [updatedby], [updateddate]) VALUES (7, N'cmmd', N'DOMAIN\user', CAST(0x00009C1500EE5CFF AS DateTime))
INSERT [dbo].[RestrictedCasePrefixes] ([prefixid], [prefix], [updatedby], [updateddate]) VALUES (8, N'LACV', N'DOMAIN\user', CAST(0x00009C65010C2B84 AS DateTime))
INSERT [dbo].[RestrictedCasePrefixes] ([prefixid], [prefix], [updatedby], [updateddate]) VALUES (10, N'EQCV', N'DOMAIN\user', CAST(0x00009C65010C7FED AS DateTime))
SET IDENTITY_INSERT [dbo].[RestrictedCasePrefixes] OFF
/****** Object:  Table [dbo].[PayPeriodTypes]    Script Date: 03/02/2015 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PayPeriodTypes](
	[payperiodtypeid] [int] IDENTITY(1,1) NOT NULL,
	[payperiodtype] [varchar](100) NOT NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [PayPeriodTypes_PK] PRIMARY KEY CLUSTERED 
(
	[payperiodtypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [payperiod] UNIQUE NONCLUSTERED 
(
	[payperiodtype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PayPeriodTypes] ON
INSERT [dbo].[PayPeriodTypes] ([payperiodtypeid], [payperiodtype], [updatedby], [updateddate]) VALUES (1, N'Bi-Weekly', N'DOMAIN\user', CAST(0x00009BF0015C13FD AS DateTime))
INSERT [dbo].[PayPeriodTypes] ([payperiodtypeid], [payperiodtype], [updatedby], [updateddate]) VALUES (2, N'Weekly', N'DOMAIN\user', CAST(0x00009BF0015C0E40 AS DateTime))
INSERT [dbo].[PayPeriodTypes] ([payperiodtypeid], [payperiodtype], [updatedby], [updateddate]) VALUES (3, N'Bi-Monthly', N'DOMAIN\user', CAST(0x00009BF0004248DF AS DateTime))
INSERT [dbo].[PayPeriodTypes] ([payperiodtypeid], [payperiodtype], [updatedby], [updateddate]) VALUES (5, N'Monthly', N'DOMAIN\user', CAST(0x00009BF000423E08 AS DateTime))
SET IDENTITY_INSERT [dbo].[PayPeriodTypes] OFF
/****** Object:  Table [dbo].[FeeTypes]    Script Date: 03/02/2015 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeeTypes](
	[feetypeid] [int] IDENTITY(1,1) NOT NULL,
	[feetype] [varchar](100) NOT NULL,
	[paymentorder] [int] NULL,
	[billable] [bit] NOT NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [FeeTypes_PK] PRIMARY KEY CLUSTERED 
(
	[feetypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [feetype] UNIQUE NONCLUSTERED 
(
	[feetype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FeeTypes] ON
INSERT [dbo].[FeeTypes] ([feetypeid], [feetype], [paymentorder], [billable], [updatedby], [updateddate]) VALUES (19, N'Court Fines', 30, 1, N'DOMAIN\user', CAST(0x00009BE000F7C07F AS DateTime))
INSERT [dbo].[FeeTypes] ([feetypeid], [feetype], [paymentorder], [billable], [updatedby], [updateddate]) VALUES (20, N'Restitution', 10, 1, N'DOMAIN\user', CAST(0x00009F5E00A744DD AS DateTime))
INSERT [dbo].[FeeTypes] ([feetypeid], [feetype], [paymentorder], [billable], [updatedby], [updateddate]) VALUES (21, N'Civil Penalties', 20, 1, N'DOMAIN\user', CAST(0x00009F5E00A75203 AS DateTime))
INSERT [dbo].[FeeTypes] ([feetypeid], [feetype], [paymentorder], [billable], [updatedby], [updateddate]) VALUES (22, N'Jail Room and Board', 40, 1, N'DOMAIN\user', CAST(0x00009BE000F7C4D9 AS DateTime))
INSERT [dbo].[FeeTypes] ([feetypeid], [feetype], [paymentorder], [billable], [updatedby], [updateddate]) VALUES (23, N'Non-Billable', 100, 0, N'DOMAIN\user', CAST(0x00009BE000F7CFBD AS DateTime))
INSERT [dbo].[FeeTypes] ([feetypeid], [feetype], [paymentorder], [billable], [updatedby], [updateddate]) VALUES (24, N'Surcharges and Costs', 50, 1, N'DOMAIN\user', CAST(0x00009BE001163649 AS DateTime))
INSERT [dbo].[FeeTypes] ([feetypeid], [feetype], [paymentorder], [billable], [updatedby], [updateddate]) VALUES (25, N'Jail Admin cost ', 60, 1, N'DOMAIN\user', CAST(0x00009DA0009F0712 AS DateTime))
INSERT [dbo].[FeeTypes] ([feetypeid], [feetype], [paymentorder], [billable], [updatedby], [updateddate]) VALUES (26, N'Jail Medical', 70, 1, N'DOMAIN\user', CAST(0x00009DA0009EA1DA AS DateTime))
SET IDENTITY_INSERT [dbo].[FeeTypes] OFF
/****** Object:  Table [dbo].[States]    Script Date: 03/02/2015 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[stateid] [int] NOT NULL,
	[abbreviation] [char](2) NULL,
	[statename] [varchar](255) NULL,
 CONSTRAINT [States_PK] PRIMARY KEY CLUSTERED 
(
	[stateid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (1, N'AK', N'Alaska')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (2, N'AL', N'Alabama')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (3, N'AR', N'Arkansas')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (4, N'AZ', N'Arizona')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (5, N'CA', N'California')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (6, N'CO', N'Colorado')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (7, N'CT', N'Connecticut')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (8, N'DE', N'Delaware')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (9, N'FL', N'Florida')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (10, N'GA', N'Georgia')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (11, N'HI', N'Hawaii')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (12, N'IA', N'Iowa')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (13, N'ID', N'Idaho')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (14, N'IL', N'Illinois')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (15, N'IN', N'Indiana')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (16, N'KS', N'Kansas')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (17, N'KY', N'Kentucky')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (18, N'LA', N'Louisiana')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (19, N'MA', N'Massachusetts')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (20, N'MD', N'Maryland')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (21, N'ME', N'Maine')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (22, N'MI', N'Michigan')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (23, N'MN', N'Minnesota')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (24, N'MO', N'Missouri')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (25, N'MS', N'Mississippi')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (26, N'MT', N'Montana')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (27, N'NC', N'North Carolina')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (28, N'ND', N'North Dakota')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (29, N'NE', N'Nebraska')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (30, N'NH', N'New Hampshire')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (31, N'NJ', N'New Jersey')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (32, N'NM', N'New Mexico')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (33, N'NV', N'Nevada')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (34, N'NY', N'New York')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (35, N'OH', N'Ohio')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (36, N'OK', N'Oklahoma')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (37, N'OR', N'Oregon')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (38, N'PA', N'Pennsylvania')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (39, N'RI', N'Rhode Island')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (40, N'SC', N'South Carolina')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (41, N'SD', N'South Dakota')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (42, N'TN', N'Tennessee')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (43, N'TX', N'Texas')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (44, N'UT', N'Utah')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (45, N'VA', N'Virginia')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (46, N'VT', N'Vermont')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (47, N'WA', N'Washington')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (48, N'WI', N'Wisconsin')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (49, N'WV', N'West Virginia')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (50, N'WY', N'Wyoming')
INSERT [dbo].[States] ([stateid], [abbreviation], [statename]) VALUES (51, N'DC', N'District of Columbia')
/****** Object:  Table [dbo].[PaymentArrangementTypes]    Script Date: 03/02/2015 15:48:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentArrangementTypes](
	[paymentarrangementtypeid] [int] IDENTITY(1,1) NOT NULL,
	[paymentarrangementtype] [varchar](100) NOT NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [PaymentArrangementTypes_PK] PRIMARY KEY CLUSTERED 
(
	[paymentarrangementtypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [arrangementtype] UNIQUE NONCLUSTERED 
(
	[paymentarrangementtype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentArrangementTypes] ON
INSERT [dbo].[PaymentArrangementTypes] ([paymentarrangementtypeid], [paymentarrangementtype], [updatedby], [updateddate]) VALUES (1, N'Direct Payments', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[PaymentArrangementTypes] ([paymentarrangementtypeid], [paymentarrangementtype], [updatedby], [updateddate]) VALUES (2, N'Voluntary Wage Assignment', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
SET IDENTITY_INSERT [dbo].[PaymentArrangementTypes] OFF
/****** Object:  View [dbo].[vw_activeconnections]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_activeconnections]
AS
SELECT     spid, status, program_name, RTRIM(loginame) AS LOGINAME, hostname, cmd, { fn NOW() } AS StampedTime
FROM         MASTER.DBO.SYSPROCESSES
WHERE     (DB_NAME(dbid) = 'civilfeecollections') AND (dbid <> 0)
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SYSPROCESSES (MASTER.DBO)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1440
         Table = 2805
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_activeconnections'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_activeconnections'
GO
/****** Object:  Table [dbo].[IowaCounty]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IowaCounty](
	[countyid] [int] IDENTITY(1,1) NOT NULL,
	[county] [varchar](50) NOT NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [IowaCounties_PK] PRIMARY KEY CLUSTERED 
(
	[countyid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[IowaCounty] ON
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (1, N'Lyon', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (2, N'Osceola', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (3, N'Dickinson', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (4, N'Emmet', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (5, N'Kossuth', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (6, N'Winnebago', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (7, N'Worth', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (8, N'Mitchell', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (9, N'Howard', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (10, N'Winneshiek', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (11, N'Allamakee', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (12, N'Sioux', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (13, N'O''Brien', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (14, N'Clay', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (15, N'Palo Alto', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (16, N'Hancock', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (17, N'Cerro Gordo', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (18, N'Floyd', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (19, N'Chickasaw', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (20, N'Fayette', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (21, N'Clayton', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (22, N'Plymouth', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (23, N'Cherokee', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (24, N'Buena Vista', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (25, N'Pocahontas', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (26, N'Humboldt', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (27, N'Wright', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (28, N'Franklin', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (29, N'Butler', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (30, N'Bremer', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (31, N'Woodbury', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (32, N'Ida', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (33, N'Sac', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (34, N'Calhoun', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (35, N'Webster', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (36, N'Hamilton', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (37, N'Hardin', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (38, N'Grundy', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (39, N'Black Hawk', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (40, N'Buchanan', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (41, N'Delaware', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (42, N'Dubuque', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (43, N'Monona', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (44, N'Crawford', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (45, N'Carroll', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (46, N'Greene', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (47, N'Boone', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (48, N'Story', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (49, N'Marshall', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (50, N'Tama', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (51, N'Benton', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (52, N'Linn', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (53, N'Jones', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (54, N'Jackson County', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (55, N'Harrison', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (56, N'Shelby', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (57, N'Audubon', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (58, N'Guthrie', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (59, N'Dallas', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (60, N'Polk', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (61, N'Jasper', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (62, N'Poweshiek', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (63, N'Iowa', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (64, N'Johnson', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (65, N'Cedar', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (66, N'Clinton', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (67, N'Pottawattamie', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (68, N'Cass', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (69, N'Adair', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (70, N'Madison', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (71, N'Warren', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (72, N'Marion', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (73, N'Mahaska', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (74, N'Keokuk', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (75, N'Washington', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (76, N'Louisa', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (77, N'Muscatine', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (78, N'Scott', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (79, N'Mills', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (80, N'Montgomery', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (81, N'Adams', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (82, N'Union', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (83, N'Clarke', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (84, N'Lucas', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (85, N'Monroe', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (86, N'Wapello', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (87, N'Jefferson', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (88, N'Henry', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (89, N'Des Moines', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (90, N'Fremont', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (91, N'Page', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (92, N'Taylor', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (93, N'Ringgold', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (94, N'Decatur', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (95, N'Wayne', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (96, N'Appanoose', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (97, N'Davis', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (98, N'Van Buren', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
INSERT [dbo].[IowaCounty] ([countyid], [county], [updatedby], [updateddate]) VALUES (99, N'Lee', N'original_import', CAST(0x00009BFE011BAB2C AS DateTime))
SET IDENTITY_INSERT [dbo].[IowaCounty] OFF
GO
print 'Processed 100 total records'
/****** Object:  Table [dbo].[FeePayment]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeePayment](
	[planid] [int] NOT NULL,
	[defendantid] [int] NOT NULL,
	[feetypeid] [int] NOT NULL,
	[receiveddate] [datetime] NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [FeePayment_PK] PRIMARY KEY CLUSTERED 
(
	[defendantid] ASC,
	[planid] ASC,
	[feetypeid] ASC,
	[receiveddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [defendantidplanidreceiveddate] ON [dbo].[FeePayment] 
(
	[defendantid] ASC,
	[planid] ASC,
	[receiveddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
INSERT [dbo].[FeePayment] ([planid], [defendantid], [feetypeid], [receiveddate], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(0x00009A5400000000 AS DateTime), CAST(60.00 AS Decimal(10, 2)), N'original_import', CAST(0x00009BFE011BAC19 AS DateTime))
INSERT [dbo].[FeePayment] ([planid], [defendantid], [feetypeid], [receiveddate], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(0x00009A7400000000 AS DateTime), CAST(120.00 AS Decimal(10, 2)), N'original_import', CAST(0x00009BFE011BAC19 AS DateTime))
INSERT [dbo].[FeePayment] ([planid], [defendantid], [feetypeid], [receiveddate], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(0x00009A8200000000 AS DateTime), CAST(50.00 AS Decimal(10, 2)), N'original_import', CAST(0x00009BFE011BAC19 AS DateTime))
INSERT [dbo].[FeePayment] ([planid], [defendantid], [feetypeid], [receiveddate], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(0x00009A9000000000 AS DateTime), CAST(180.00 AS Decimal(10, 2)), N'original_import', CAST(0x00009BFE011BAC19 AS DateTime))
INSERT [dbo].[FeePayment] ([planid], [defendantid], [feetypeid], [receiveddate], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(0x00009B0E00000000 AS DateTime), CAST(30.00 AS Decimal(10, 2)), N'original_import', CAST(0x00009BFE011BAC19 AS DateTime))
INSERT [dbo].[FeePayment] ([planid], [defendantid], [feetypeid], [receiveddate], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(0x00009B4600000000 AS DateTime), CAST(30.00 AS Decimal(10, 2)), N'original_import', CAST(0x00009BFE011BAC19 AS DateTime))
INSERT [dbo].[FeePayment] ([planid], [defendantid], [feetypeid], [receiveddate], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(0x00009BB500000000 AS DateTime), CAST(30.00 AS Decimal(10, 2)), N'original_import', CAST(0x00009BFE011BAC19 AS DateTime))
INSERT [dbo].[FeePayment] ([planid], [defendantid], [feetypeid], [receiveddate], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(0x00009BBA00000000 AS DateTime), CAST(21.99 AS Decimal(10, 2)), N'original_import', CAST(0x00009BFE011BAC19 AS DateTime))
/****** Object:  Table [dbo].[PlanPaymentArrangement]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanPaymentArrangement](
	[planid] [int] NOT NULL,
	[defendantid] [int] NOT NULL,
	[paymentarrangementid] [int] IDENTITY(1,1) NOT NULL,
	[payperiodtypeid] [int] NOT NULL,
	[paymentarrangementtypeid] [int] NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [PaymentArrangement_PK] PRIMARY KEY CLUSTERED 
(
	[defendantid] ASC,
	[planid] ASC,
	[paymentarrangementid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PlanPaymentArrangement] ON
INSERT [dbo].[PlanPaymentArrangement] ([planid], [defendantid], [paymentarrangementid], [payperiodtypeid], [paymentarrangementtypeid], [amount], [startdate], [enddate], [updatedby], [updateddate]) VALUES (9891, 235, 8725, 1, 2, CAST(60.00 AS Decimal(10, 2)), CAST(0x00009A8200000000 AS DateTime), CAST(0x0000A22A00000000 AS DateTime), N'original_import', CAST(0x00009BFE011BABFC AS DateTime))
SET IDENTITY_INSERT [dbo].[PlanPaymentArrangement] OFF
/****** Object:  Table [dbo].[PlanFee]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanFee](
	[planid] [int] NOT NULL,
	[defendantid] [int] NOT NULL,
	[feetypeid] [int] NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [Fee_PK] PRIMARY KEY CLUSTERED 
(
	[defendantid] ASC,
	[planid] ASC,
	[feetypeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PlanFee] ([planid], [defendantid], [feetypeid], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 19, CAST(6846.25 AS Decimal(10, 2)), N'DOMAIN\user', CAST(0x0000A44B00B59B70 AS DateTime))
INSERT [dbo].[PlanFee] ([planid], [defendantid], [feetypeid], [amount], [updatedby], [updateddate]) VALUES (9891, 235, 21, CAST(600.00 AS Decimal(10, 2)), N'DOMAIN\user', CAST(0x0000A44B00B59B70 AS DateTime))
/****** Object:  Table [dbo].[DefendantEmployers]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DefendantEmployers](
	[defendantid] [int] NOT NULL,
	[employerid] [int] NOT NULL,
	[separationdate] [datetime] NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [PK_DefendantEmployer] PRIMARY KEY CLUSTERED 
(
	[defendantid] ASC,
	[employerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DefendantEmployers] ([defendantid], [employerid], [separationdate], [updatedby], [updateddate]) VALUES (235, 139, CAST(0x0000A13900000000 AS DateTime), N'original_import', CAST(0x0000A13900000000 AS DateTime))
INSERT [dbo].[DefendantEmployers] ([defendantid], [employerid], [separationdate], [updatedby], [updateddate]) VALUES (235, 575, CAST(0x0000A2A600000000 AS DateTime), N'original_import', CAST(0x0000A2A600000000 AS DateTime))
/****** Object:  Table [dbo].[PlanCase]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlanCase](
	[planid] [int] NOT NULL,
	[defendantid] [int] NOT NULL,
	[casename] [varchar](100) NOT NULL,
	[countyid] [int] NULL,
	[committed] [bit] NOT NULL,
	[commitdate] [datetime] NULL,
	[CAPP] [bit] NOT NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
	[commitbasedate] [datetime] NULL,
	[commitdaystill] [decimal](10, 2) NULL,
 CONSTRAINT [PK_PlanCase] PRIMARY KEY CLUSTERED 
(
	[defendantid] ASC,
	[planid] ASC,
	[casename] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [defendantidplanidcapp] ON [dbo].[PlanCase] 
(
	[defendantid] ASC,
	[planid] ASC,
	[countyid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [defendantidplanidcountyidcapp] ON [dbo].[PlanCase] 
(
	[defendantid] ASC,
	[planid] ASC,
	[countyid] ASC,
	[CAPP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 AGCR000122', 67, 0, NULL, 0, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 FECR000123', 67, 0, NULL, 0, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STCB000124', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STCB000125', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STCB000126', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STCB000127', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STCB000128', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STCB000129', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STCB000130', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STCB000131', 67, 1, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STP000132', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STP000133', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STP000134', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STWG000135', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STWG000136', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781 STWG000137', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781AVSTAV000138', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781AVSTAV000139', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTCB000140', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTCB000141', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTCB000142', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTCB000143', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTCB000144', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTCB000145', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTCB000146', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTWG000147', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBNTWG000148', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBSMMG000149', 67, 0, NULL, 0, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBSTCB000150', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBSTCB000151', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBSTCB000152', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBSTCB000153', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CBSTCB000154', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781CLSTCL000155', 67, 0, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[PlanCase] ([planid], [defendantid], [casename], [countyid], [committed], [commitdate], [CAPP], [updatedby], [updateddate], [commitbasedate], [commitdaystill]) VALUES (9891, 235, N'04781STCB000156', 67, 1, NULL, 1, N'DOMAIN\user', CAST(0x0000A44B00B558BD AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)))
/****** Object:  Table [dbo].[Defendant]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Defendant](
	[defendantid] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](255) NULL,
	[middlename] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[aka] [varchar](255) NULL,
	[ssn] [char](11) NULL,
	[birthdate] [datetime] NULL,
	[driverslicense] [varchar](255) NULL,
	[street1] [varchar](255) NULL,
	[street2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[stateid] [int] NULL,
	[zip] [varchar](10) NULL,
	[phonehome] [varchar](30) NULL,
	[phonemobile] [varchar](30) NULL,
	[hasprobationofficer] [bit] NOT NULL,
	[probationofficer] [varchar](255) NULL,
	[barreduntil] [datetime] NULL,
	[notes] [varchar](max) NULL,
	[active] [bit] NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [PK_Defendant] PRIMARY KEY CLUSTERED 
(
	[defendantid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [activedefendantidlastfirst] ON [dbo].[Defendant] 
(
	[active] ASC,
	[lastname] ASC,
	[firstname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Defendant] ON
INSERT [dbo].[Defendant] ([defendantid], [firstname], [middlename], [lastname], [aka], [ssn], [birthdate], [driverslicense], [street1], [street2], [city], [stateid], [zip], [phonehome], [phonemobile], [hasprobationofficer], [probationofficer], [barreduntil], [notes], [active], [updatedby], [updateddate]) VALUES (235, N'John', N'Q.', N'Defendant', N'', N'000-00-0000', CAST(0x000063DF00000000 AS DateTime), N'000XX0000', N'123 FAKE ST', N'', N'Council Bluffs', 12, N'51500', N'7125551212', N'', 0, N'', NULL, N'Example defendant', 1, N'DOMAIN\user', CAST(0x0000A44B00AFE160 AS DateTime))
SET IDENTITY_INSERT [dbo].[Defendant] OFF
/****** Object:  Table [dbo].[Employer]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employer](
	[employerid] [int] IDENTITY(1,1) NOT NULL,
	[employername] [varchar](255) NULL,
	[street1] [varchar](255) NULL,
	[street2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[stateid] [int] NULL,
	[zip] [varchar](10) NULL,
	[phone] [varchar](30) NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
 CONSTRAINT [Employer_PK] PRIMARY KEY CLUSTERED 
(
	[employerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Employer] ON
INSERT [dbo].[Employer] ([employerid], [employername], [street1], [street2], [city], [stateid], [zip], [phone], [updatedby], [updateddate]) VALUES (139, N'Acme Bird Traps', N'125 FAKE ST', N'', N'Council Bluffs', 12, N'51501', N'(712) 555-1212', N'original_import', CAST(0x0000A44B00B32A59 AS DateTime))
INSERT [dbo].[Employer] ([employerid], [employername], [street1], [street2], [city], [stateid], [zip], [phone], [updatedby], [updateddate]) VALUES (575, N'Fudd Hunting Supplies', N'123 MAIN ST', N'', N'Council Bluffs', 12, N'51501', N'(712) 555-1212', N'original_import', CAST(0x0000A44B00B36DA5 AS DateTime))
SET IDENTITY_INSERT [dbo].[Employer] OFF
/****** Object:  Table [dbo].[DefendantPlans]    Script Date: 03/02/2015 15:48:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DefendantPlans](
	[planid] [int] IDENTITY(1,1) NOT NULL,
	[defendantid] [int] NOT NULL,
	[planname] [varchar](100) NOT NULL,
	[updatedby] [varchar](100) NOT NULL,
	[updateddate] [datetime] NOT NULL,
	[capp] [bit] NULL,
	[noncapp] [bit] NULL,
	[isfiled] [bit] NULL,
	[noncompliancenotice] [bit] NULL,
	[hasinsurance] [bit] NULL,
	[incontempt] [bit] NULL,
	[fileddate] [datetime] NULL,
 CONSTRAINT [Plan_PK] PRIMARY KEY CLUSTERED 
(
	[defendantid] ASC,
	[planid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [planname] UNIQUE NONCLUSTERED 
(
	[defendantid] ASC,
	[planname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DefendantPlans] ON
INSERT [dbo].[DefendantPlans] ([planid], [defendantid], [planname], [updatedby], [updateddate], [capp], [noncapp], [isfiled], [noncompliancenotice], [hasinsurance], [incontempt], [fileddate]) VALUES (9891, 235, N'import plan', N'DOMAIN\user', CAST(0x0000A44B00B0DAF4 AS DateTime), 1, 1, 1, 1, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[DefendantPlans] OFF
/****** Object:  StoredProcedure [dbo].[Print_DelinquentNotices]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Programmer (modified from original)
-- Create date: 9/22/2010
-- Description:	Procedure for finding list of delinquent defendants and automatically printing notices.
-- Updated:     Contractor (09/19/2011) removed 1st and 2nd deliquency references.  
--				Updated noncompliance reference from Defendant to DefendantPlans.
-- Updated:     Contractor (10/07/2012) renamed from sp_delinquent_notices to Print_DelinquentNotices.
-- =============================================
CREATE PROCEDURE [dbo].[Print_DelinquentNotices] 
(
	@input_DateTime DateTime
)
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;


  SELECT lastname, firstname, street1, street2, city, stateAbbr, zip, [#ofdaysbehind]
    FROM
         (
         SELECT DISTINCT b.defendantid, b.lastname, b.firstname, b.street1, b.street2, b.city, b.stateAbbr, b.zip, b.planid, b.planname, b.[Last Payment Date], b.[Last Payment Amount], b.[current payment arrangement start date],
                b.[numberofpaymentsmadesincestartdate], payperiodtype, PlanPaymentArrangement.amount, b.Noncompliance,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime )
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN DATEDIFF( WEEK, b.[current payment arrangement start date], @input_DateTime )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2
                    ELSE 0
				END AS #ofpayperiodssincestartdate,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime )
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_DateTime )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2
                    ELSE 0
				END AS [amountusershouldhavepaidbynow],
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_DateTime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
                    ELSE 0
				END AS #ofpaymentsuserowes,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN (DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount)
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN (DATEDIFF( WEEK, b.[current payment arrangement start date], @input_DateTime ) - ((PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_DateTime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN ((DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN ((DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_DateTime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
                    ELSE 0
				END AS #ofpayperiodsuserhasmade,
				DATEDIFF( DAY ,[Last Payment Date], @input_datetime) AS [#ofdaysbehind]
           FROM   
                (
                SELECT a.defendantid, a.lastname, a.firstname, a.planid, a.planname, a.[Last Payment Date], a.[Last Payment Amount], MAX(a.startdate) AS [current payment arrangement start date],
                       DATEDIFF( DAY, ISNULL( [Last Payment Date], MAX(a.startdate) ), @input_DateTime) AS [dayssincelastpayment], 
	                   (SELECT COUNT(receiveddate) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [numberofpaymentsmadesincestartdate],
					   (SELECT COUNT(receiveddate) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [numberofpayperiodsincepaymentarrangementstartdate] ,
					   (SELECT ISNULL(SUM(amount),0) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [totalamountuserhaspaidsincestartdate], a.street1, a.street2, a.city, a.stateAbbr, a.zip, a.Noncompliance
                  FROM
	                   (
                       SELECT Defendant.defendantid, lastname, firstname, DefendantPlans.planid, planname, LastPayment.receiveddate AS [Last Payment Date], SUM(FeePayment.amount) AS [Last Payment Amount],
                              PlanPaymentArrangement.startdate, street1, street2, city, States.abbreviation as stateAbbr, zip, DefendantPlans.noncompliancenotice AS Noncompliance
                         FROM Defendant
				   INNER JOIN States ON Defendant.stateid = States.stateid
              LEFT OUTER JOIN DefendantPlans ON Defendant.defendantid = DefendantPlans.defendantid
              LEFT OUTER JOIN (
	                          SELECT defendantid, planid, MAX(receiveddate) AS receiveddate
                                FROM FeePayment
	                        GROUP BY defendantid, planid
                              ) AS LastPayment ON DefendantPlans.defendantid = LastPayment.defendantid AND DefendantPlans.planid = LastPayment.planid  
              LEFT OUTER JOIN FeePayment ON LastPayment.defendantid = FeePayment.defendantid AND FeePayment.planid = LastPayment.planid AND FeePayment.receiveddate = LastPayment.receiveddate
                   INNER JOIN PlanPaymentArrangement ON DefendantPlans.defendantid = PlanPaymentArrangement.defendantid AND DefendantPlans.planid = PlanPaymentArrangement.planid
                        WHERE Defendant.active = 1 AND DefendantPlans.planid IS NOT NULL AND NOT( Defendant.street1 = '' AND Defendant.street2 = '')
				              AND NOT EXISTS (
					                         SELECT defendantid, planid
						                       FROM (
					                                SELECT defendantid, planid, SUM(amount) AS total
													  FROM PlanFee 
											      GROUP BY defendantid, planid
												     UNION
												    SELECT defendantid, planid, -SUM( amount  ) AS total
												      FROM FeePayment
												  GROUP BY defendantid, planid
											        ) AS Transactions
										   	  WHERE Transactions.defendantid = DefendantPlans.defendantid AND Transactions.planid = DefendantPlans.planid 
										   GROUP BY defendantid, planid
										     HAVING SUM(total) = 0
										     )
                     GROUP BY Defendant.defendantid, lastname, firstname, DefendantPlans.planid, planname, LastPayment.receiveddate, PlanPaymentArrangement.startdate, PlanPaymentArrangement.amount, street1, street2, city, States.abbreviation, zip, DefendantPlans.noncompliancenotice
				       ) AS a    
              GROUP BY a.defendantid, a.lastname, a.firstname, a.planid, a.planname, a.[Last Payment Date], a.[Last Payment Amount], a.street1, a.street2, a.city, a.stateAbbr, a.zip, Noncompliance
		        ) AS b
     INNER JOIN PlanPaymentArrangement ON b.defendantid = PlanPaymentArrangement.defendantid AND b.planid = PlanPaymentArrangement.planid AND b.[current payment arrangement start date] = PlanPaymentArrangement.startdate
     INNER JOIN PayPeriodTypes ON PlanPaymentArrangement.payperiodtypeid = PayPeriodTypes.payperiodtypeid )
         AS z  where [#ofdaysbehind] between 31 and 181 
ORDER BY lastname, firstname, planname
END
GO
/****** Object:  StoredProcedure [dbo].[Report_CollectionsBreakdown]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Contractor
-- Create date: 10/7/2012
-- =============================================
CREATE PROCEDURE [dbo].[Report_CollectionsBreakdown] 

	@fromdate DateTime,
	@todate DateTime

AS
BEGIN

	SET NOCOUNT ON;


		 SELECT d.lastname, d.firstname + ' ' + d.middlename AS firstname, plans.planname, feetype.feetype, payment.receiveddate, payment.amount 
           FROM Defendant d
	 INNER JOIN DefendantPlans AS plans ON d.defendantid = plans.defendantid 
	 INNER JOIN PlanFee as fee ON plans.planid = fee.planid AND plans.defendantid = fee.defendantid 
     INNER JOIN FeePayment as payment ON fee.planid = payment.planid AND fee.defendantid = payment.defendantid AND fee.feetypeid = payment.feetypeid 
     INNER JOIN FeeTypes as feetype ON fee.feetypeid = feetype.feetypeid 
          WHERE payment.receiveddate > @fromdate AND payment.receiveddate < @todate 
       ORDER BY d.lastname, d.firstname, plans.planname, feetype.paymentorder, payment.receiveddate
                

END
GO
/****** Object:  StoredProcedure [dbo].[Report_AccountStatusLenientBilling]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*******************************************************************************************************************
Author:  Contractor
Date:    10/07/2012
Name:    Report_AccountStatusLenientBilling
Version: 1.3.0.0

Module Purpose:
	This stored procedure will retreive the current payment arrangement status for a defendant.


Module Description:
	This stored procedure will retreive a defendan't payment arrangement start date, amount due each period, 
	the total amount the user has paid since the payment arrangement start date, and the number of pay periods 
    since the payment arrangement start date.

    The stored procedure first retreives all active defendant information which have account balances or a
    current payment plan (Exclusive OR).  It then calculates the amount the defendant should have paid by now:

		amount due each peiod * number of payperiods since the payment arrangement start date

	If the total amount the user has paid since the payment arrangement start date is greater than
    or equal to the amount the defendant should have paid by now, the user is in a 'Current' status.  Otherwise, 
    the user owes money and is late on making a payment.

    Next, the stored procedure determines how many payments each user is behind:
    
		( amount defendant should have paid by now - total amount user has paid since startdate ) 
			/
			amount due each period
 
    indiciates how many pay periods the defendant needs to pay in order to be current.  (If it's negative, the 
    defendant is ahead of planned payments by the number of pay periods.)  If it is positive, the stored
    procedure determines the number of payments the user has technically covered with the total amount paid 
    during the current payment arrangement period:

		number of pay periods since start date - number of pay periods the defendant needs in order to be current

    To determine the last payment date the user was considered current:

        payment arrangement start date + ( number of payperiods user has made * pay period length )

	Finally the stored procedure subtracts the last payment date the user was considered current from the date passed 
    in as a parameter into the stored procedure.  The result is the number of days the defendant is behind in 
    payments.

    The stored procedure also returns the last name, first name, plan name, last payment date, last payment amount, 
    the number of days the defendant is deliquent and the current status of the payment arrangement:
    
		> 90 days
        > 60 days    
        > 30 days
        Current


    The main issue that caused me problems was the ability for a defendant to make more than one payment between
    pay periods.  Plus, if the defendant paid more than their elected payment amount things were more complicated.
    The stored procedure gives the defendant the benefit of the doubt if they have made more payments
    than what is currently owed.  This keeps all of the reports and data items, such as the payment
    arrangement end date in synch.

    It is ugly and unfactored.  Good luck.    

	
Calling Arguments:

	Name            I/O Description
	--------------- --- ----------------------------------------------------------------------------------------------
	@input_DateTime	 I  The date to determine account deliquency from.

Change History:

	Author          Date       Description
	--------------- ---------- ---------------------------------------------------------------------------------------
	Contractor      04/25/2009 Original Code
    Contractor      06/02/2009 Bi-Weekly # pay periods was calculated incorrectly.  Fixed so that all computed 
                               columns calculate correctly.
	Programmer    06/22/2009 Copy created of the original to provide for lenient billing.  This was quicker and easier.
    Contractor      09/21/2011 removed 1st and 2nd deliquency references.  Updated noncompliance reference from
                               Defendant to DefendantPlans.
    Contractor      10/02/2012 added plan filed column and middle name
    Contractor      10/07/2012 renamed from sp_account_status_data2 to Report_AccountStatusLenientBilling
*******************************************************************************************************************/

CREATE PROCEDURE [dbo].[Report_AccountStatusLenientBilling] 
(
	@input_DateTime DateTime
)
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;


  SELECT lastname, firstname + ' ' + middlename as firstname, planname, isfiled, [Last Payment Date], [Last Payment Amount],  [#ofdaysbehind],
	     CASE
			WHEN [Last Payment Date] IS NULL THEN
				CASE 
					WHEN [#ofdayssincestart] > 90 THEN '90 days'
					WHEN [#ofdayssincestart] > 60 THEN '60 days'
					WHEN [#ofdayssincestart] > 30 THEN '30 days'
					ELSE 'Current'
				END
			WHEN [#ofdaysbehind] > 0 THEN
				CASE 
					WHEN [#ofdaysbehind] > 90 THEN '90 days'
					WHEN [#ofdaysbehind] > 60 THEN '60 days'
					WHEN [#ofdaysbehind] > 30 THEN '30 days'
					ELSE 'Current' 
				END
		 END as deliquentstatus, Noncompliance
    FROM
         (
         SELECT DISTINCT b.defendantid, b.lastname, b.firstname, b.middlename, b.planid, b.planname, b.isfiled, b.[Last Payment Date], b.[Last Payment Amount], b.[current payment arrangement start date],
                b.[numberofpaymentsmadesincestartdate], payperiodtype, PlanPaymentArrangement.amount, b.Noncompliance,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2
                    ELSE 0
				END AS #ofpayperiodssincestartdate,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2
                    ELSE 0
				END AS [amountusershouldhavepaidbynow],
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
                    ELSE 0
				END AS #ofpaymentsuserowes,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN (DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount)
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN (DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime ) - ((PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN ((DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN ((DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
                    ELSE 0
				END AS #ofpayperiodsuserhasmade,
				DATEDIFF( DAY ,[Last Payment Date], @input_datetime) AS [#ofdaysbehind],
				DATEDIFF( DAY ,b.[current payment arrangement start date], @input_datetime) AS [#ofdayssincestart]
           FROM   
                (
                SELECT a.defendantid, a.lastname, a.firstname, a.middlename, a.planid, a.planname, a.isfiled, a.[Last Payment Date], a.[Last Payment Amount], MAX(a.startdate) AS [current payment arrangement start date],
                       DATEDIFF( DAY, ISNULL( [Last Payment Date], MAX(a.startdate) ), @input_datetime) AS [dayssincelastpayment], 
	                   (SELECT COUNT(receiveddate) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [numberofpaymentsmadesincestartdate],
					   (SELECT COUNT(receiveddate) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [numberofpayperiodsincepaymentarrangementstartdate] ,
					   (SELECT ISNULL(SUM(amount),0) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [totalamountuserhaspaidsincestartdate], a.street1, a.street2, a.Noncompliance
                  FROM
	                   (
                       SELECT Defendant.defendantid, lastname, firstname, middlename, DefendantPlans.planid, planname, isfiled, LastPayment.receiveddate AS [Last Payment Date], SUM(FeePayment.amount) AS [Last Payment Amount],
                              PlanPaymentArrangement.startdate, street1, street2, DefendantPlans.noncompliancenotice AS Noncompliance
                         FROM Defendant
              LEFT OUTER JOIN DefendantPlans ON Defendant.defendantid = DefendantPlans.defendantid
              LEFT OUTER JOIN (
	                          SELECT defendantid, planid, MAX(receiveddate) AS receiveddate
                                FROM FeePayment
	                        GROUP BY defendantid, planid
                              ) AS LastPayment ON DefendantPlans.defendantid = LastPayment.defendantid AND DefendantPlans.planid = LastPayment.planid  
              LEFT OUTER JOIN FeePayment ON LastPayment.defendantid = FeePayment.defendantid AND FeePayment.planid = LastPayment.planid AND FeePayment.receiveddate = LastPayment.receiveddate
                   INNER JOIN PlanPaymentArrangement ON DefendantPlans.defendantid = PlanPaymentArrangement.defendantid AND DefendantPlans.planid = PlanPaymentArrangement.planid
                        WHERE Defendant.active = 1 AND DefendantPlans.planid IS NOT NULL AND NOT( Defendant.street1 = '' AND Defendant.street2 = '')
				              AND NOT EXISTS (
					                         SELECT defendantid, planid
						                       FROM (
					                                SELECT defendantid, planid, SUM(amount) AS total
													  FROM PlanFee 
											      GROUP BY defendantid, planid
												     UNION
												    SELECT defendantid, planid, -SUM( amount  ) AS total
												      FROM FeePayment
												  GROUP BY defendantid, planid
											        ) AS Transactions
										   	  WHERE Transactions.defendantid = DefendantPlans.defendantid AND Transactions.planid = DefendantPlans.planid 
										   GROUP BY defendantid, planid
										     HAVING SUM(total) = 0
										     ) 
                     GROUP BY Defendant.defendantid, lastname, firstname, middlename, DefendantPlans.planid, planname, isfiled, LastPayment.receiveddate, PlanPaymentArrangement.startdate, PlanPaymentArrangement.amount, street1, street2, DefendantPlans.noncompliancenotice
				       ) AS a 
              GROUP BY a.defendantid, a.lastname, a.firstname, a.middlename, a.planid, a.planname, a.isfiled, a.[Last Payment Date], a.[Last Payment Amount], a.street1, a.street2, Noncompliance
		        ) AS b 
     INNER JOIN PlanPaymentArrangement ON b.defendantid = PlanPaymentArrangement.defendantid AND b.planid = PlanPaymentArrangement.planid AND b.[current payment arrangement start date] = PlanPaymentArrangement.startdate
     INNER JOIN PayPeriodTypes ON PlanPaymentArrangement.payperiodtypeid = PayPeriodTypes.payperiodtypeid )
         AS z --where [Last Payment Amount] is not null
ORDER BY lastname, firstname, planname

END






SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[Report_BalanceLess100]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Contractor
-- Create date: 10/7/2012
-- =============================================
CREATE PROCEDURE [dbo].[Report_BalanceLess100] 
AS
BEGIN

	SET NOCOUNT ON;


             SELECT d.defendantid, d.firstname + ' ' + d.middlename AS firstmiddle, d.lastname, SUM(pf.amount) - ISNULL( paid, 0 ) AS balance
			   FROM Defendant d
	LEFT OUTER JOIN PlanFee pf ON d.defendantid = pf.defendantid
	LEFT OUTER JOIN ( 
							 SELECT d.defendantid, SUM( pf.amount ) AS paid
							   FROM Defendant d
					LEFT OUTER JOIN FeePayment pf ON d.defendantid = pf.defendantid
						   GROUP BY d.defendantid
					) 
					AS e ON e.defendantid = d.defendantid
              WHERE active = 1
		   GROUP BY d.defendantid, d.firstname + ' ' + d.middlename, d.lastname, paid
			 HAVING SUM(pf.amount) - ISNULL( paid, 0 ) < 100
		   ORDER BY lastname, firstmiddle  


END
GO
/****** Object:  StoredProcedure [dbo].[Report_AccountStatus]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*******************************************************************************************************************
Author:  Contractor
Date:    10/07/2012
Name:    Report_AccountStatus
Version: 1.3.0.0

Module Purpose:
	This stored procedure will retreive the current payment arrangement status for a defendant.


Module Description:
	This stored procedure will retreive a defendan't payment arrangement start date, amount due each period, 
	the total amount the user has paid since the payment arrangement start date, and the number of pay periods 
    since the payment arrangement start date.

    The stored procedure first retreives all active defendant information which have account balances or a
    current payment plan (Exclusive OR).  It then calculates the amount the defendant should have paid by now:

		amount due each peiod * number of payperiods since the payment arrangement start date

	If the total amount the user has paid since the payment arrangement start date is greater than
    or equal to the amount the defendant should have paid by now, the user is in a 'Current' status.  Otherwise, 
    the user owes money and is late on making a payment.

    Next, the stored procedure determines how many payments each user is behind:
    
		( amount defendant should have paid by now - total amount user has paid since startdate ) 
			/
			amount due each period
 
    indiciates how many pay periods the defendant needs to pay in order to be current.  (If it's negative, the 
    defendant is ahead of planned payments by the number of pay periods.)  If it is positive, the stored
    procedure determines the number of payments the user has technically covered with the total amount paid 
    during the current payment arrangement period:

		number of pay periods since start date - number of pay periods the defendant needs in order to be current

    To determine the last payment date the user was considered current:

        payment arrangement start date + ( number of payperiods user has made * pay period length )

	Finally the stored procedure subtracts the last payment date the user was considered current from the date passed 
    in as a parameter into the stored procedure.  The result is the number of days the defendant is behind in 
    payments.

    The stored procedure also returns the last name, first name, plan name, last payment date, last payment amount, 
    the number of days the defendant is deliquent and the current status of the payment arrangement:
    
		> 90 days
        > 60 days    
        > 30 days
        Current


    The main issue that caused me problems was the ability for a defendant to make more than one payment between
    pay periods.  Plus, if the defendant paid more than their elected payment amount things were more complicated.
    The stored procedure gives the defendant the benefit of the doubt if they have made more payments
    than what is currently owed.  This keeps all of the reports and data items, such as the payment
    arrangement end date in synch.

    It is ugly and unfactored.  Good luck.    

	
Calling Arguments:

	Name            I/O Description
	--------------- --- ----------------------------------------------------------------------------------------------
	@input_DateTime	 I  The date to determine account deliquency from.

Change History:

	Author          Date       Description
	--------------- ---------- ---------------------------------------------------------------------------------------
	Contractor      04/25/2009 Original Code
    Contractor      06/02/2009 Bi-Weekly # pay periods was calculated incorrectly.  Fixed so that all computed 
                               columns calculate correctly.
    Contractor      09/19/2011 removed 1st and 2nd deliquency references.  Updated noncompliance reference from
                               Defendant to DefendantPlans.
    Contractor      10/02/2012 added plan filed column and middle name
    Contractor      10/07/2012 renamed from sp_account_status_data2 to Report_AccountStatus
*******************************************************************************************************************/

CREATE PROCEDURE [dbo].[Report_AccountStatus] 
(
	@input_DateTime DateTime
)
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;


  SELECT lastname, firstname + ' ' + middlename as firstname, planname, isfiled,  [Last Payment Date], [Last Payment Amount],  [#ofdaysbehind],
	     CASE 
			WHEN [#ofdaysbehind] > 90 THEN '90 days'
			WHEN [#ofdaysbehind] > 60 THEN '60 days'
			WHEN [#ofdaysbehind] > 30 THEN '30 days'
			ELSE 'Current' 
		 END as deliquentstatus, Noncompliance
    FROM
         (
         SELECT DISTINCT b.defendantid, b.lastname, b.firstname, b.middlename, b.planid, b.planname, b.isfiled, b.[Last Payment Date], b.[Last Payment Amount], b.[current payment arrangement start date],
                b.[numberofpaymentsmadesincestartdate], payperiodtype, PlanPaymentArrangement.amount, b.Noncompliance,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2
                    ELSE 0
				END AS #ofpayperiodssincestartdate,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2
                    ELSE 0
				END AS [amountusershouldhavepaidbynow],
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount
                    ELSE 0
				END AS #ofpaymentsuserowes,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN (DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount)
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN (DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime ) - ((PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN ((DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN ((DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount )
                    ELSE 0
				END AS #ofpayperiodsuserhasmade,
				CASE 
					WHEN UPPER(payperiodtype) = 'MONTHLY' THEN DATEDIFF( DAY ,DATEADD( MONTH, (DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount), b.[current payment arrangement start date] ), @input_datetime)
					WHEN UPPER(payperiodtype) = 'WEEKLY' THEN DATEDIFF( DAY ,DATEADD( WEEK, (DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime ) - ((PlanPaymentArrangement.amount * DATEDIFF( WEEK, b.[current payment arrangement start date], @input_datetime )) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount ), b.[current payment arrangement start date] ), @input_datetime)
					WHEN UPPER(payperiodtype) = 'BI-MONTHLY' THEN DATEDIFF( DAY ,DATEADD( MONTH, ((DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount ) * 2, b.[current payment arrangement start date] ), @input_datetime)
					WHEN UPPER(payperiodtype) = 'BI-WEEKLY' THEN DATEDIFF( DAY ,DATEADD( WEEK, ((DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - ((PlanPaymentArrangement.amount * DATEDIFF( MONTH, b.[current payment arrangement start date], @input_datetime ) * 2) - b.[totalamountuserhaspaidsincestartdate] )/PlanPaymentArrangement.amount ) * 2, b.[current payment arrangement start date] ), @input_datetime)
                    ELSE 0
				END AS [#ofdaysbehind]
           FROM   
                (
                SELECT a.defendantid, a.lastname, a.firstname, a.middlename, a.planid, a.planname, a.isfiled, a.[Last Payment Date], a.[Last Payment Amount], MAX(a.startdate) AS [current payment arrangement start date],
                       DATEDIFF( DAY, ISNULL( [Last Payment Date], MAX(a.startdate) ), @input_datetime) AS [dayssincelastpayment], 
	                   (SELECT COUNT(receiveddate) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [numberofpaymentsmadesincestartdate],
					   (SELECT COUNT(receiveddate) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [numberofpayperiodsincepaymentarrangementstartdate] ,
					   (SELECT ISNULL(SUM(amount),0) FROM FeePayment WHERE a.defendantid = FeePayment.defendantid AND a.planid = FeePayment.planid AND receiveddate > MAX(a.startdate)
					   ) AS [totalamountuserhaspaidsincestartdate], a.street1, a.street2, a.Noncompliance
                  FROM
	                   (
                       SELECT Defendant.defendantid, lastname, firstname, middlename, DefendantPlans.planid, planname, isfiled, LastPayment.receiveddate AS [Last Payment Date], SUM(FeePayment.amount) AS [Last Payment Amount],
                              PlanPaymentArrangement.startdate, street1, street2, DefendantPlans.noncompliancenotice AS Noncompliance
                         FROM Defendant
              LEFT OUTER JOIN DefendantPlans ON Defendant.defendantid = DefendantPlans.defendantid
              LEFT OUTER JOIN (
	                          SELECT defendantid, planid, MAX(receiveddate) AS receiveddate
                                FROM FeePayment
	                        GROUP BY defendantid, planid
                              ) AS LastPayment ON DefendantPlans.defendantid = LastPayment.defendantid AND DefendantPlans.planid = LastPayment.planid  
              LEFT OUTER JOIN FeePayment ON LastPayment.defendantid = FeePayment.defendantid AND FeePayment.planid = LastPayment.planid AND FeePayment.receiveddate = LastPayment.receiveddate
                   INNER JOIN PlanPaymentArrangement ON DefendantPlans.defendantid = PlanPaymentArrangement.defendantid AND DefendantPlans.planid = PlanPaymentArrangement.planid
                        WHERE Defendant.active = 1 AND DefendantPlans.planid IS NOT NULL AND NOT( Defendant.street1 = '' AND Defendant.street2 = '')
				              AND NOT EXISTS (
					                         SELECT defendantid, planid
						                       FROM (
					                                SELECT defendantid, planid, SUM(amount) AS total
													  FROM PlanFee 
											      GROUP BY defendantid, planid
												     UNION
												    SELECT defendantid, planid, -SUM( amount  ) AS total
												      FROM FeePayment
												  GROUP BY defendantid, planid
											        ) AS Transactions
										   	  WHERE Transactions.defendantid = DefendantPlans.defendantid AND Transactions.planid = DefendantPlans.planid 
										   GROUP BY defendantid, planid
										     HAVING SUM(total) = 0
										     )
                     GROUP BY Defendant.defendantid, lastname, firstname, middlename, DefendantPlans.planid, planname, isfiled, LastPayment.receiveddate, PlanPaymentArrangement.startdate, PlanPaymentArrangement.amount, street1, street2, DefendantPlans.noncompliancenotice
				       ) AS a    
              GROUP BY a.defendantid, a.lastname, a.firstname, a.middlename, a.planid, a.planname, a.isfiled, a.[Last Payment Date], a.[Last Payment Amount], a.street1, a.street2, Noncompliance
		        ) AS b
     INNER JOIN PlanPaymentArrangement ON b.defendantid = PlanPaymentArrangement.defendantid AND b.planid = PlanPaymentArrangement.planid AND b.[current payment arrangement start date] = PlanPaymentArrangement.startdate
     INNER JOIN PayPeriodTypes ON PlanPaymentArrangement.payperiodtypeid = PayPeriodTypes.payperiodtypeid )
         AS z -- where [Last Payment Amount] is not null --and DateDiff(Day, [Last Payment Date], getDate()) > 30
ORDER BY lastname, firstname, planname


END
GO
/****** Object:  StoredProcedure [dbo].[Report_Restitution]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Contractor
-- Create date: 10/7/2012
-- =============================================
CREATE PROCEDURE [dbo].[Report_Restitution] 
AS
BEGIN

	SET NOCOUNT ON;


             SELECT d.defendantid, d.firstname + ' ' + d.middlename AS firstmiddle, d.lastname, 
                    SUM(pf.amount) as owed, ISNULL(paid,0) AS paid, SUM(pf.amount)- ISNULL( paid, 0 ) AS balance, z.receiveddate AS lastreceiveddate, z.amount AS lastpayment
			   FROM Defendant d
	     INNER JOIN PlanFee pf ON d.defendantid = pf.defendantid
	LEFT OUTER JOIN ( 
							 SELECT d.defendantid, SUM( pf.amount ) AS paid
							   FROM Defendant d
					LEFT OUTER JOIN FeePayment pf ON d.defendantid = pf.defendantid
					          WHERE pf.feetypeid = 20
						   GROUP BY d.defendantid
					) 
					AS e ON e.defendantid = d.defendantid
   LEFT OUTER JOIN (select defendantid, MAX(receiveddate) as receiveddate from FeePayment where feetypeid = 20 group by defendantid) as b on d.defendantid = b.defendantid
   LEFT OUTER JOIN (select defendantid, amount, receiveddate from FeePayment where feetypeid = 20) as z on d.defendantid = z.defendantid AND b.receiveddate = z.receiveddate
             WHERE active = 1 AND pf.feetypeid = 20
		  GROUP BY d.defendantid, d.firstname + ' ' + d.middlename, d.lastname, paid, z.receiveddate, z.amount
		    HAVING SUM(pf.amount)- ISNULL( paid, 0 ) > 0
		  ORDER BY lastname, firstmiddle  


END
GO
/****** Object:  StoredProcedure [dbo].[Report_NonCompliance]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Contractor
-- Create date: 10/9/2012
-- =============================================
CREATE PROCEDURE [dbo].[Report_NonCompliance] 
AS
BEGIN

	SET NOCOUNT ON;


             SELECT d.defendantid, d.firstname + ' ' + d.middlename AS firstmiddle, d.lastname, dp.planname, dp.fileddate,
                    SUM(ISNULL(pf.amount,0)) as owed, ISNULL(paid,0) AS paid, SUM(ISNULL(pf.amount,0))- ISNULL( paid, 0 ) AS balance
			   FROM Defendant d
		 INNER JOIN DefendantPlans dp ON d.defendantid = dp.defendantid			   
    LEFT OUTER JOIN PlanFee pf ON d.defendantid = pf.defendantid AND dp.planid = pf.planid
	LEFT OUTER JOIN ( 
							 SELECT d.defendantid, dp.planid, SUM( pf.amount ) AS paid
							   FROM Defendant d
					     INNER JOIN DefendantPlans dp ON d.defendantid = dp.defendantid							   
					LEFT OUTER JOIN FeePayment pf ON d.defendantid = pf.defendantid AND dp.planid = pf.planid
					          WHERE active = 1 AND dp.noncompliancenotice = 1
						   GROUP BY d.defendantid, dp.planid
					) 
					AS e ON e.defendantid = d.defendantid AND e.planid = dp.planid
             WHERE active = 1 AND dp.noncompliancenotice = 1
		  GROUP BY d.defendantid, d.firstname + ' ' + d.middlename, d.lastname, dp.planname, dp.fileddate, paid
		  ORDER BY lastname, firstmiddle  


END
GO
/****** Object:  StoredProcedure [dbo].[Report_JailRoomBoard]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*******************************************************************************************************************
Author:  Programmer
Date:    04/15/2010
Name:    Report_JailRoomBoard
Version: 1.0.0.0

Calling Arguments:

	Name            I/O Description
	--------------- --- ----------------------------------------------------------------------------------------------
	@input_DateTime	 I  The date to determine account deliquency from.

Updated:     Contractor (10/07/2012) renamed from sp_prison_room_and_board to Print_DelinquentNotices.
*******************************************************************************************************************/

CREATE PROCEDURE [dbo].[Report_JailRoomBoard] 
(
	@input_DateTime DateTime
)
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;


  select lastname, firstname, planname, Payment, LastPaymentDate, PeriodType, TotalOwed - TotalPaid AS AmountLeft, TotalOwed,
	CASE 
		WHEN UPPER(PeriodType) = 'MONTHLY' THEN PaymentAmount * DATEDIFF( MONTH, PaymentStartDate, @input_DateTime )
		WHEN UPPER(PeriodType) = 'WEEKLY' THEN  PaymentAmount * DATEDIFF( MONTH, PaymentStartDate, @input_DateTime )
		WHEN UPPER(PeriodType) = 'BI-MONTHLY' THEN PaymentAmount * DATEDIFF( MONTH, PaymentStartDate, @input_DateTime )
		WHEN UPPER(PeriodType) = 'BI-WEEKLY' THEN PaymentAmount * DATEDIFF( MONTH, PaymentStartDate, @input_DateTime )
		ELSE 0
	END AS ShouldHavePaid, TotalPaid,
	CASE 
		WHEN UPPER(PeriodType) = 'MONTHLY' THEN DATEDIFF( DAY ,DATEADD( MONTH, (DATEDIFF( MONTH, PaymentStartDate, @input_DateTime ) - ((PaymentAmount * DATEDIFF( MONTH, PaymentStartDate, @input_DateTime )) - TotalPaid )/PaymentAmount), PaymentStartDate ), @input_DateTime)
		WHEN UPPER(PeriodType) = 'WEEKLY' THEN DATEDIFF( DAY ,DATEADD( WEEK, (DATEDIFF( WEEK, PaymentStartDate, @input_DateTime ) - ((PaymentAmount * DATEDIFF( WEEK, PaymentStartDate, @input_DateTime )) - TotalPaid )/PaymentAmount ), PaymentStartDate ), @input_DateTime)
		WHEN UPPER(PeriodType) = 'BI-MONTHLY' THEN DATEDIFF( DAY ,DATEADD( MONTH, ((DATEDIFF( MONTH, PaymentStartDate, @input_DateTime ) * 2) - ((PaymentAmount * DATEDIFF( MONTH, PaymentStartDate, @input_DateTime ) * 2) - TotalPaid )/PaymentAmount ) * 2, PaymentStartDate ), @input_DateTime)
		WHEN UPPER(PeriodType) = 'BI-WEEKLY' THEN DATEDIFF( DAY ,DATEADD( WEEK, ((DATEDIFF( MONTH, PaymentStartDate, @input_DateTime ) * 2) - ((PaymentAmount * DATEDIFF( MONTH, PaymentStartDate, @input_DateTime ) * 2) - TotalPaid )/PaymentAmount ) * 2, PaymentStartDate ), @input_DateTime)
        ELSE 0
	END AS DaysBehind
from 
	(select distinct b.lastname, b.firstname + ' ' + b.middlename as firstname, a.planname,
	(select top 1 amount from FeePayment where planid = a.planid and feetypeid = 22 order by receiveddate) as Payment,
	(select ISNULL(sum(amount), 0) from FeePayment where planid = a.planid and feetypeid = 22) as TotalPaid,
	(select amount from PlanFee where planid = a.planid and feetypeid = 22) as TotalOwed,
	(select top 1 receiveddate from FeePayment where planid = a.planid and feetypeid = 22 order by receiveddate) as LastPaymentDate,
	d.payperiodtype as PeriodType, c.startdate as PaymentStartDate, c.amount as PaymentAmount
	from DefendantPlans as a
		inner join Defendant as b on a.defendantid = b.defendantid
		left outer join PlanPaymentArrangement as c on a.planid = c.planid
		left outer join PayPeriodTypes as d on c.payperiodtypeid = d.payperiodtypeid
	where a.planid in (select planid from PlanFee where feetypeid = 22)) as results
--where TotalPaid != TotalOwed or TotalPaid is null
order by lastname, firstname


END
GO
/****** Object:  StoredProcedure [dbo].[Report_CommitDateStatus]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Contractor
-- Create date: 10/7/2012
-- =============================================
CREATE PROCEDURE [dbo].[Report_CommitDateStatus] 
AS
BEGIN

	SET NOCOUNT ON;


				SELECT firstname + ' ' + middlename AS firstname, lastname, DefendantPlans.planname, PlanCase.casename, PlanCase.commitdate, 
                       CASE WHEN PlanCase.commitdate >= GETDATE() THEN 'Current' ELSE 'Overdue' END AS [status] 
				  FROM defendant 
		    INNER JOIN DefendantPlans ON Defendant.defendantid = DefendantPlans.defendantid 
            INNER JOIN PlanCase ON DefendantPlans.defendantid = PlanCase.defendantid AND DefendantPlans.planid = PlanCase.planid 
                 WHERE [committed] = 0 AND commitdate IS NOT NULL AND active = 1
              ORDER BY commitdate ASC, lastname, firstname


END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCaseNames]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Programmer
-- Create date: 03/15/2012
-- Description:	Creates a list of casenames based on defendantid
-- =============================================
CREATE FUNCTION [dbo].[GetCaseNames]
(
	@defendantid INT
)
RETURNS VARCHAR(500)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @casenames varchar(500)

	SELECT @casenames = Coalesce(@casenames + ', ', '') 
		+ RTRIM(LTRIM(replace(replace(replace(casename, char(10), ''), char(13), ''), char(9), '')))
	FROM PlanCase 
	WHERE defendantid = @defendantid

	RETURN @casenames

END
GO
/****** Object:  UserDefinedFunction [dbo].[GetCountyNames]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Programmer
-- Create date: 03/15/2012
-- Description:	Creates a list of county names based on defendantid
-- =============================================
CREATE FUNCTION [dbo].[GetCountyNames]
(
	@defendantid INT
)
RETURNS VARCHAR(500)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @countyNames VARCHAR(500)

	SELECT @countyNames = Coalesce(@countyNames + ', ', ' ') + county 
	FROM 
		(SELECT DISTINCT b.county FROM PlanCase AS a
			inner join IowaCounty AS b ON a.countyid = b.countyid
		where defendantid = @defendantid) AS temp

	RETURN @countyNames

END
GO
/****** Object:  View [dbo].[vw_ClerkReport]    Script Date: 03/02/2015 15:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ClerkReport]
AS
SELECT     TOP (100) PERCENT lastname AS [Last Name], firstname AS [First Name], middlename AS [Middle Name], dbo.GetCaseNames(defendantid) AS [Case Names], 
                      dbo.GetCountyNames(defendantid) AS [County Names]
FROM         dbo.Defendant
WHERE     (active <> 0) AND (firstname <> '') AND (lastname <> '')
ORDER BY [Last Name], [First Name]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Defendant"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClerkReport'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ClerkReport'
GO
/****** Object:  Default [DF__FeeTypes__billab__0F2D40CE]    Script Date: 03/02/2015 15:48:14 ******/
ALTER TABLE [dbo].[FeeTypes] ADD  DEFAULT ((1)) FOR [billable]
GO
/****** Object:  Default [DF__IowaCount__updat__0169315C]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[IowaCounty] ADD  DEFAULT ('1') FOR [updatedby]
GO
/****** Object:  Default [DF__IowaCount__updat__025D5595]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[IowaCounty] ADD  DEFAULT (getdate()) FOR [updateddate]
GO
/****** Object:  Default [DF__PlanCase__commit__4C0144E4]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanCase] ADD  DEFAULT ((1)) FOR [committed]
GO
/****** Object:  Default [DF__PlanCase__CAPP__4CF5691D]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanCase] ADD  DEFAULT ((0)) FOR [CAPP]
GO
/****** Object:  Default [DF__Defendant__defen__18B6AB08]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[DefendantPlans] ADD  DEFAULT ((1)) FOR [defendantid]
GO
/****** Object:  ForeignKey [FeeTypes_FeePayment_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[FeePayment]  WITH CHECK ADD  CONSTRAINT [FeeTypes_FeePayment_FK1] FOREIGN KEY([feetypeid])
REFERENCES [dbo].[FeeTypes] ([feetypeid])
GO
ALTER TABLE [dbo].[FeePayment] CHECK CONSTRAINT [FeeTypes_FeePayment_FK1]
GO
/****** Object:  ForeignKey [PlanFee_FeePayment_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[FeePayment]  WITH CHECK ADD  CONSTRAINT [PlanFee_FeePayment_FK1] FOREIGN KEY([defendantid], [planid], [feetypeid])
REFERENCES [dbo].[PlanFee] ([defendantid], [planid], [feetypeid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeePayment] CHECK CONSTRAINT [PlanFee_FeePayment_FK1]
GO
/****** Object:  ForeignKey [DefendantPlans_PlanPaymentArrangement_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanPaymentArrangement]  WITH CHECK ADD  CONSTRAINT [DefendantPlans_PlanPaymentArrangement_FK1] FOREIGN KEY([defendantid], [planid])
REFERENCES [dbo].[DefendantPlans] ([defendantid], [planid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanPaymentArrangement] CHECK CONSTRAINT [DefendantPlans_PlanPaymentArrangement_FK1]
GO
/****** Object:  ForeignKey [PaymentArrangementTypes_PlanPaymentArrangement_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanPaymentArrangement]  WITH CHECK ADD  CONSTRAINT [PaymentArrangementTypes_PlanPaymentArrangement_FK1] FOREIGN KEY([paymentarrangementtypeid])
REFERENCES [dbo].[PaymentArrangementTypes] ([paymentarrangementtypeid])
GO
ALTER TABLE [dbo].[PlanPaymentArrangement] CHECK CONSTRAINT [PaymentArrangementTypes_PlanPaymentArrangement_FK1]
GO
/****** Object:  ForeignKey [PayPeriodTypes_PaymentArrangement_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanPaymentArrangement]  WITH CHECK ADD  CONSTRAINT [PayPeriodTypes_PaymentArrangement_FK1] FOREIGN KEY([payperiodtypeid])
REFERENCES [dbo].[PayPeriodTypes] ([payperiodtypeid])
GO
ALTER TABLE [dbo].[PlanPaymentArrangement] CHECK CONSTRAINT [PayPeriodTypes_PaymentArrangement_FK1]
GO
/****** Object:  ForeignKey [FeeTypes_PlanFee_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanFee]  WITH CHECK ADD  CONSTRAINT [FeeTypes_PlanFee_FK1] FOREIGN KEY([feetypeid])
REFERENCES [dbo].[FeeTypes] ([feetypeid])
GO
ALTER TABLE [dbo].[PlanFee] CHECK CONSTRAINT [FeeTypes_PlanFee_FK1]
GO
/****** Object:  ForeignKey [Plan_Fee_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanFee]  WITH CHECK ADD  CONSTRAINT [Plan_Fee_FK1] FOREIGN KEY([defendantid], [planid])
REFERENCES [dbo].[DefendantPlans] ([defendantid], [planid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanFee] CHECK CONSTRAINT [Plan_Fee_FK1]
GO
/****** Object:  ForeignKey [Defendant_DefendantEmployer_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[DefendantEmployers]  WITH CHECK ADD  CONSTRAINT [Defendant_DefendantEmployer_FK1] FOREIGN KEY([defendantid])
REFERENCES [dbo].[Defendant] ([defendantid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DefendantEmployers] CHECK CONSTRAINT [Defendant_DefendantEmployer_FK1]
GO
/****** Object:  ForeignKey [Employer_DefendantEmployer_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[DefendantEmployers]  WITH CHECK ADD  CONSTRAINT [Employer_DefendantEmployer_FK1] FOREIGN KEY([employerid])
REFERENCES [dbo].[Employer] ([employerid])
GO
ALTER TABLE [dbo].[DefendantEmployers] CHECK CONSTRAINT [Employer_DefendantEmployer_FK1]
GO
/****** Object:  ForeignKey [DefendantPlans_PlanCase_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanCase]  WITH CHECK ADD  CONSTRAINT [DefendantPlans_PlanCase_FK1] FOREIGN KEY([defendantid], [planid])
REFERENCES [dbo].[DefendantPlans] ([defendantid], [planid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlanCase] CHECK CONSTRAINT [DefendantPlans_PlanCase_FK1]
GO
/****** Object:  ForeignKey [IowaCounty_PlanCase_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[PlanCase]  WITH CHECK ADD  CONSTRAINT [IowaCounty_PlanCase_FK1] FOREIGN KEY([countyid])
REFERENCES [dbo].[IowaCounty] ([countyid])
GO
ALTER TABLE [dbo].[PlanCase] CHECK CONSTRAINT [IowaCounty_PlanCase_FK1]
GO
/****** Object:  ForeignKey [States_Defendant_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[Defendant]  WITH CHECK ADD  CONSTRAINT [States_Defendant_FK1] FOREIGN KEY([stateid])
REFERENCES [dbo].[States] ([stateid])
GO
ALTER TABLE [dbo].[Defendant] CHECK CONSTRAINT [States_Defendant_FK1]
GO
/****** Object:  ForeignKey [States_Employer_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[Employer]  WITH CHECK ADD  CONSTRAINT [States_Employer_FK1] FOREIGN KEY([stateid])
REFERENCES [dbo].[States] ([stateid])
GO
ALTER TABLE [dbo].[Employer] CHECK CONSTRAINT [States_Employer_FK1]
GO
/****** Object:  ForeignKey [Defendant_Plan_FK1]    Script Date: 03/02/2015 15:48:15 ******/
ALTER TABLE [dbo].[DefendantPlans]  WITH CHECK ADD  CONSTRAINT [Defendant_Plan_FK1] FOREIGN KEY([defendantid])
REFERENCES [dbo].[Defendant] ([defendantid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DefendantPlans] CHECK CONSTRAINT [Defendant_Plan_FK1]
GO
