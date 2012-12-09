USE [master]
GO
/****** Object:  Database [NlsLinks]    Script Date: 08/12/2011 21:38:15 ******/
CREATE DATABASE [NlsLinks] ON  PRIMARY 
( NAME = N'NlsLinks', FILENAME = N'D:\NlsLinks\NlsLinks.mdf' , SIZE = 352256KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NlsLinks_log', FILENAME = N'E:\NlsLinks\NlsLinks_log.ldf' , SIZE = 3828544KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NlsLinks] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NlsLinks].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NlsLinks] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [NlsLinks] SET ANSI_NULLS OFF
GO
ALTER DATABASE [NlsLinks] SET ANSI_PADDING OFF
GO
ALTER DATABASE [NlsLinks] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [NlsLinks] SET ARITHABORT OFF
GO
ALTER DATABASE [NlsLinks] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [NlsLinks] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [NlsLinks] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [NlsLinks] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [NlsLinks] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [NlsLinks] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [NlsLinks] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [NlsLinks] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [NlsLinks] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [NlsLinks] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [NlsLinks] SET  DISABLE_BROKER
GO
ALTER DATABASE [NlsLinks] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [NlsLinks] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [NlsLinks] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [NlsLinks] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [NlsLinks] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [NlsLinks] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [NlsLinks] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [NlsLinks] SET  READ_WRITE
GO
ALTER DATABASE [NlsLinks] SET RECOVERY SIMPLE
GO
ALTER DATABASE [NlsLinks] SET  MULTI_USER
GO
ALTER DATABASE [NlsLinks] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [NlsLinks] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'NlsLinks', N'ON'
GO
USE [NlsLinks]
GO
/****** Object:  User [Simulation]    Script Date: 08/12/2011 21:38:15 ******/
CREATE USER [Simulation] FOR LOGIN [Simulation] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [Process]    Script Date: 08/12/2011 21:38:15 ******/
CREATE SCHEMA [Process] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [Extract]    Script Date: 08/12/2011 21:38:15 ******/
CREATE SCHEMA [Extract] AUTHORIZATION [dbo]
GO
/****** Object:  Table [Process].[tblLUSurveySource]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUSurveySource](
	[ID] [tinyint] NOT NULL,
	[Label] [char](12) NOT NULL,
 CONSTRAINT [PK_tblLUSurvey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblLURelationshipPath]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLURelationshipPath](
	[ID] [tinyint] NOT NULL,
	[Label] [char](20) NOT NULL,
 CONSTRAINT [PK_tblLURelationshipPath] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblLUMultipleBirth]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUMultipleBirth](
	[ID] [tinyint] NOT NULL,
	[Label] [char](10) NOT NULL,
 CONSTRAINT [PK_tblLUMultipleBirth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblLUMarkerType]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUMarkerType](
	[ID] [tinyint] NOT NULL,
	[Label] [char](20) NOT NULL,
	[Explicit] [bit] NOT NULL,
 CONSTRAINT [PK_tblLUMarkerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblLUMarkerEvidence]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUMarkerEvidence](
	[ID] [tinyint] NOT NULL,
	[Label] [char](20) NOT NULL,
 CONSTRAINT [PK_tblLUMarkerEvidence] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblLUIsMZ]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUIsMZ](
	[ID] [tinyint] NOT NULL,
	[Label] [char](10) NOT NULL,
 CONSTRAINT [PK_tblLUIsMZ] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblLUGender]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUGender](
	[ID] [tinyint] NOT NULL,
	[Label] [char](15) NOT NULL,
 CONSTRAINT [PK_tblLUGender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblLUExtractSource]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUExtractSource](
	[ID] [tinyint] NOT NULL,
	[Label] [char](20) NOT NULL,
 CONSTRAINT [PK_tblLUExtractSource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vewVariable]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vewVariable]
AS
SELECT     Process.tblVariableRaw.VariableCode, Process.tblVariableRaw.ItemRaw, Process.tblVariableRaw.Generation, Process.tblVariableRaw.SurveyYear, 
                      Process.tblItemRaw.Label
FROM         Process.tblItemRaw INNER JOIN
                      Process.tblVariableRaw ON Process.tblItemRaw.ID = Process.tblVariableRaw.ItemRaw
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
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1[56] 3) )"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3) )"
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
      ActivePaneConfig = 4
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblItemRaw (Process)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblVariableRaw (Process)"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 114
               Right = 378
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
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
         Width = 3915
         Width = 3285
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 4290
         Alias = 900
         Table = 2385
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vewVariable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vewVariable'
GO
/****** Object:  Table [Process].[tblItem]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblItem](
	[ID] [tinyint] NOT NULL,
	[Label] [char](50) NOT NULL,
	[MinValue] [int] NOT NULL,
	[MinNonnegative] [int] NULL,
	[MaxValue] [int] NOT NULL,
 CONSTRAINT [PK_tblLUItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Extract].[tblGen2Links]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Extract].[tblGen2Links](
	[C0000100] [int] NOT NULL,
	[C0000200] [int] NULL,
	[C0005300] [int] NULL,
	[C0005400] [int] NULL,
	[C0005500] [int] NULL,
	[C0005700] [int] NULL,
	[C0005800] [int] NULL,
	[C0006500] [int] NULL,
	[C0006800] [int] NULL,
	[C0007010] [int] NULL,
	[C0007030] [int] NULL,
	[C0007041] [int] NULL,
	[C0007043] [int] NULL,
	[C0007045] [int] NULL,
	[C0007047] [int] NULL,
	[C0007049] [int] NULL,
	[C0007052] [int] NULL,
	[C0007055] [int] NULL,
	[C0402400] [int] NULL,
	[C0402500] [int] NULL,
	[C0402600] [int] NULL,
	[C0737000] [int] NULL,
	[C0737100] [int] NULL,
	[C0737200] [int] NULL,
	[C0948700] [int] NULL,
	[C0948800] [int] NULL,
	[C0948900] [int] NULL,
	[C1146600] [int] NULL,
	[C1146700] [int] NULL,
	[C1146800] [int] NULL,
	[C1230100] [int] NULL,
	[C1230200] [int] NULL,
	[C1230300] [int] NULL,
	[C1548100] [int] NULL,
	[C1548101] [int] NULL,
	[C1548102] [int] NULL,
	[C1989400] [int] NULL,
	[C1989401] [int] NULL,
	[C1989402] [int] NULL,
	[C2305100] [int] NULL,
	[C2305101] [int] NULL,
	[C2305102] [int] NULL,
	[C2544700] [int] NULL,
	[C2544701] [int] NULL,
	[C2544702] [int] NULL,
	[C2814500] [int] NULL,
	[C2814501] [int] NULL,
	[C2814502] [int] NULL,
	[C3123500] [int] NULL,
	[C3123501] [int] NULL,
	[C3123502] [int] NULL,
	[C3601100] [int] NULL,
	[C3627700] [int] NULL,
	[C3627701] [int] NULL,
	[C3627702] [int] NULL,
	[Y0000200] [int] NULL,
	[Y0000201] [int] NULL,
	[Y0000202] [int] NULL,
	[Y0002100] [int] NULL,
	[Y0390100] [int] NULL,
	[Y0390101] [int] NULL,
	[Y0390102] [int] NULL,
	[Y0677600] [int] NULL,
	[Y0933700] [int] NULL,
	[Y0933701] [int] NULL,
	[Y0933702] [int] NULL,
	[Y0974800] [int] NULL,
	[Y1180500] [int] NULL,
	[Y1180501] [int] NULL,
	[Y1180502] [int] NULL,
	[Y1192400] [int] NULL,
	[Y1421100] [int] NULL,
	[Y1421101] [int] NULL,
	[Y1421102] [int] NULL,
	[Y1434300] [int] NULL,
	[Y1450200] [int] NULL,
	[Y1450201] [int] NULL,
	[Y1450202] [int] NULL,
	[Y1672700] [int] NULL,
	[Y1695600] [int] NULL,
	[Y1695601] [int] NULL,
	[Y1695602] [int] NULL,
	[Y1707300] [int] NULL,
	[Y1707400] [int] NULL,
	[Y1707500] [int] NULL,
	[Y1707600] [int] NULL,
	[Y1707700] [int] NULL,
	[Y1707800] [int] NULL,
	[Y1707900] [int] NULL,
	[Y1708000] [int] NULL,
	[Y1708100] [int] NULL,
	[Y1708200] [int] NULL,
	[Y1708300] [int] NULL,
	[Y1708400] [int] NULL,
	[Y1708500] [int] NULL,
	[Y1708600] [int] NULL,
	[Y1708700] [int] NULL,
	[Y1708800] [int] NULL,
	[Y1708900] [int] NULL,
	[Y1709000] [int] NULL,
	[Y1709100] [int] NULL,
	[Y1709200] [int] NULL,
	[Y1709300] [int] NULL,
	[Y1948500] [int] NULL,
	[Y1981600] [int] NULL,
	[Y1981601] [int] NULL,
	[Y1981602] [int] NULL,
	[Y1992900] [int] NULL,
	[Y1993000] [int] NULL,
	[Y1993100] [int] NULL,
	[Y1993200] [int] NULL,
	[Y1993300] [int] NULL,
	[Y1993400] [int] NULL,
	[Y1993500] [int] NULL,
	[Y1993600] [int] NULL,
	[Y1993700] [int] NULL,
	[Y1993800] [int] NULL,
	[Y1993900] [int] NULL,
	[Y1994000] [int] NULL,
	[Y1994100] [int] NULL,
	[Y1994200] [int] NULL,
	[Y1994300] [int] NULL,
	[Y1994400] [int] NULL,
	[Y1994500] [int] NULL,
	[Y1994600] [int] NULL,
	[Y1994700] [int] NULL,
	[Y1994800] [int] NULL,
	[Y1994900] [int] NULL,
	[Y2267100] [int] NULL,
 CONSTRAINT [PK_tblImportGen2] PRIMARY KEY CLUSTERED 
(
	[C0000100] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Extract].[tblGen2ImplicitFather]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Extract].[tblGen2ImplicitFather](
	[C0000100] [int] NOT NULL,
	[C0000200] [int] NULL,
	[C0005300] [int] NULL,
	[C0005400] [int] NULL,
	[C0005700] [int] NULL,
	[C0008100] [int] NULL,
	[C0008200] [int] NULL,
	[C0008300] [int] NULL,
	[C0008600] [int] NULL,
	[C0008700] [int] NULL,
	[C0008800] [int] NULL,
	[C0009100] [int] NULL,
	[C0009200] [int] NULL,
	[C0009300] [int] NULL,
	[C0009600] [int] NULL,
	[C0009700] [int] NULL,
	[C0009800] [int] NULL,
	[C0009900] [int] NULL,
	[C0010110] [int] NULL,
	[C0010200] [int] NULL,
	[C0010300] [int] NULL,
	[C0010400] [int] NULL,
	[C0010700] [int] NULL,
	[C0010800] [int] NULL,
	[C0010900] [int] NULL,
	[C0011110] [int] NULL,
	[C0011111] [int] NULL,
	[C0011112] [int] NULL,
	[C0011113] [int] NULL,
	[C0011114] [int] NULL,
	[C0011117] [int] NULL,
	[C0011118] [int] NULL,
	[C0011119] [int] NULL,
	[C0011122] [int] NULL,
	[C0011123] [int] NULL,
	[C0011124] [int] NULL,
	[C0011127] [int] NULL,
	[C0011128] [int] NULL,
	[C0011129] [int] NULL,
	[C0011132] [int] NULL,
	[C0011133] [int] NULL,
	[C0011134] [int] NULL,
	[C0011137] [int] NULL,
	[C0011138] [int] NULL,
	[C0011139] [int] NULL,
	[C0011142] [int] NULL,
	[C0011143] [int] NULL,
	[C0011144] [int] NULL,
	[C3070500] [int] NULL,
	[C3423600] [int] NULL,
	[C3601100] [int] NULL,
	[C3601700] [int] NULL,
	[C3601800] [int] NULL,
	[C3601900] [int] NULL,
	[C3605900] [int] NULL,
	[Y0003100] [int] NULL,
	[Y0003200] [int] NULL,
	[Y0007400] [int] NULL,
	[Y0007600] [int] NULL,
	[Y0007601] [int] NULL,
	[Y0008000] [int] NULL,
	[Y0392800] [int] NULL,
	[Y0394100] [int] NULL,
	[Y0394300] [int] NULL,
	[Y0394500] [int] NULL,
	[Y0394501] [int] NULL,
	[Y0394900] [int] NULL,
	[Y0651000] [int] NULL,
	[Y0682400] [int] NULL,
	[Y0682500] [int] NULL,
	[Y0683800] [int] NULL,
	[Y0683900] [int] NULL,
	[Y0684100] [int] NULL,
	[Y0684101] [int] NULL,
	[Y0684500] [int] NULL,
	[Y0947100] [int] NULL,
	[Y0986200] [int] NULL,
	[Y0986600] [int] NULL,
	[Y0986700] [int] NULL,
	[Y0988800] [int] NULL,
	[Y0988900] [int] NULL,
	[Y0989400] [int] NULL,
	[Y0989401] [int] NULL,
	[Y0989900] [int] NULL,
	[Y1226800] [int] NULL,
	[Y1229100] [int] NULL,
	[Y1229200] [int] NULL,
	[Y1229700] [int] NULL,
	[Y1229701] [int] NULL,
	[Y1456500] [int] NULL,
	[Y1629500] [int] NULL,
	[Y1701600] [int] NULL,
	[Y1707300] [int] NULL,
	[Y1883300] [int] NULL,
	[Y1987100] [int] NULL,
	[Y1992900] [int] NULL,
	[Y2197500] [int] NULL,
 CONSTRAINT [PK_tblGen2ImplicitFather] PRIMARY KEY CLUSTERED 
(
	[C0000100] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Extract].[tblGen1Links]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Extract].[tblGen1Links](
	[R0000100] [int] NOT NULL,
	[R0000149] [int] NULL,
	[R0000150] [int] NULL,
	[R0000151] [int] NULL,
	[R0000152] [int] NULL,
	[R0000153] [int] NULL,
	[R0000154] [int] NULL,
	[R0000155] [int] NULL,
	[R0000156] [int] NULL,
	[R0000157] [int] NULL,
	[R0000158] [int] NULL,
	[R0000159] [int] NULL,
	[R0000162] [int] NULL,
	[R0000163] [int] NULL,
	[R0000164] [int] NULL,
	[R0000165] [int] NULL,
	[R0000166] [int] NULL,
	[R0000300] [int] NULL,
	[R0000500] [int] NULL,
	[R0009100] [int] NULL,
	[R0172500] [int] NULL,
	[R0172600] [int] NULL,
	[R0214700] [int] NULL,
	[R0214800] [int] NULL,
	[R0216500] [int] NULL,
	[R0329200] [int] NULL,
	[R0329210] [int] NULL,
	[R0406510] [int] NULL,
	[R0410100] [int] NULL,
	[R0410300] [int] NULL,
	[R0530700] [int] NULL,
	[R0530800] [int] NULL,
	[R0619010] [int] NULL,
	[R0809900] [int] NULL,
	[R0810000] [int] NULL,
	[R0898310] [int] NULL,
	[R1045700] [int] NULL,
	[R1045800] [int] NULL,
	[R1145110] [int] NULL,
	[R1427500] [int] NULL,
	[R1427600] [int] NULL,
	[R1520310] [int] NULL,
	[R1794600] [int] NULL,
	[R1794700] [int] NULL,
	[R1891010] [int] NULL,
	[R2156200] [int] NULL,
	[R2156300] [int] NULL,
	[R2258110] [int] NULL,
	[R2365700] [int] NULL,
	[R2365800] [int] NULL,
	[R2445510] [int] NULL,
	[R2742500] [int] NULL,
	[R2742600] [int] NULL,
	[R2871300] [int] NULL,
	[R2986100] [int] NULL,
	[R2986200] [int] NULL,
	[R3075000] [int] NULL,
	[R3302500] [int] NULL,
	[R3302600] [int] NULL,
	[R3401700] [int] NULL,
	[R3573400] [int] NULL,
	[R3573500] [int] NULL,
	[R3657100] [int] NULL,
	[R3917600] [int] NULL,
	[R3917700] [int] NULL,
	[R4007600] [int] NULL,
	[R4100200] [int] NULL,
	[R4100201] [int] NULL,
	[R4100202] [int] NULL,
	[R4125101] [int] NULL,
	[R4125801] [int] NULL,
	[R4126501] [int] NULL,
	[R4127201] [int] NULL,
	[R4127901] [int] NULL,
	[R4128601] [int] NULL,
	[R4129301] [int] NULL,
	[R4130001] [int] NULL,
	[R4130701] [int] NULL,
	[R4131401] [int] NULL,
	[R4132101] [int] NULL,
	[R4132801] [int] NULL,
	[R4133701] [int] NULL,
	[R4418700] [int] NULL,
	[R4500200] [int] NULL,
	[R4500201] [int] NULL,
	[R4500202] [int] NULL,
	[R4521500] [int] NULL,
	[R4521700] [int] NULL,
	[R4521800] [int] NULL,
	[R4521900] [int] NULL,
	[R4522000] [int] NULL,
	[R4522100] [int] NULL,
	[R4826000] [int] NULL,
	[R4826300] [int] NULL,
	[R4826800] [int] NULL,
	[R5081700] [int] NULL,
	[R5167000] [int] NULL,
	[R5200200] [int] NULL,
	[R5200201] [int] NULL,
	[R5200202] [int] NULL,
	[R5496200] [int] NULL,
	[R5496500] [int] NULL,
	[R5497000] [int] NULL,
	[R5497200] [int] NULL,
	[R6211500] [int] NULL,
	[R6211600] [int] NULL,
	[R6211700] [int] NULL,
	[R6212200] [int] NULL,
	[R6212300] [int] NULL,
	[R6435300] [int] NULL,
	[R6435301] [int] NULL,
	[R6435302] [int] NULL,
	[R6479800] [int] NULL,
	[R6764900] [int] NULL,
	[R6765000] [int] NULL,
	[R6765100] [int] NULL,
	[R6765600] [int] NULL,
	[R6765700] [int] NULL,
	[R6765800] [int] NULL,
	[R6963300] [int] NULL,
	[R6963301] [int] NULL,
	[R6963302] [int] NULL,
	[R7007500] [int] NULL,
	[R7409200] [int] NULL,
	[R7409300] [int] NULL,
	[R7409400] [int] NULL,
	[R7409900] [int] NULL,
	[R7410000] [int] NULL,
	[R7410100] [int] NULL,
	[R7656300] [int] NULL,
	[R7656301] [int] NULL,
	[R7656302] [int] NULL,
	[R7704800] [int] NULL,
	[R8106700] [int] NULL,
	[R8106800] [int] NULL,
	[R8106900] [int] NULL,
	[R8107200] [int] NULL,
	[R8423200] [int] NULL,
	[R8423201] [int] NULL,
	[R8423202] [int] NULL,
	[R8497200] [int] NULL,
	[R9900400] [int] NULL,
	[R9901200] [int] NULL,
	[R9902000] [int] NULL,
	[R9902800] [int] NULL,
	[R9903600] [int] NULL,
	[R9904400] [int] NULL,
	[R9905200] [int] NULL,
	[R9906000] [int] NULL,
	[R9906600] [int] NULL,
	[R9907200] [int] NULL,
	[R9907800] [int] NULL,
	[R9908000] [int] NULL,
	[T0002000] [int] NULL,
	[T0002100] [int] NULL,
	[T0002200] [int] NULL,
	[T0002300] [int] NULL,
	[T0002400] [int] NULL,
	[T0002500] [int] NULL,
	[T0002600] [int] NULL,
	[T0002700] [int] NULL,
	[T0002800] [int] NULL,
	[T0002900] [int] NULL,
	[T0003000] [int] NULL,
	[T0003100] [int] NULL,
	[T0003200] [int] NULL,
	[T0003300] [int] NULL,
	[T0003400] [int] NULL,
	[T0003500] [int] NULL,
	[T0003600] [int] NULL,
	[T0003700] [int] NULL,
	[T0003800] [int] NULL,
	[T0003900] [int] NULL,
	[T0004000] [int] NULL,
	[T0004100] [int] NULL,
	[T0004200] [int] NULL,
	[T0004300] [int] NULL,
	[T0004400] [int] NULL,
	[T0004500] [int] NULL,
	[T0337600] [int] NULL,
	[T0337700] [int] NULL,
	[T0337800] [int] NULL,
	[T0338200] [int] NULL,
	[T0338300] [int] NULL,
	[T0338400] [int] NULL,
	[T0967300] [int] NULL,
	[T0967301] [int] NULL,
	[T0967302] [int] NULL,
	[T0989000] [int] NULL,
	[T1487200] [int] NULL,
	[T1487300] [int] NULL,
	[T1487400] [int] NULL,
	[T1487600] [int] NULL,
	[T1487700] [int] NULL,
	[T1487800] [int] NULL,
	[T2190500] [int] NULL,
	[T2190501] [int] NULL,
	[T2190502] [int] NULL,
	[T2210800] [int] NULL,
 CONSTRAINT [PK_tblGen1Links] PRIMARY KEY CLUSTERED 
(
	[R0000100] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblSubjectBare]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblSubjectBare](
	[SubjectTag] [int] NOT NULL,
	[ExtendedID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Generation] [tinyint] NOT NULL,
	[Gender] [tinyint] NOT NULL,
 CONSTRAINT [PK_Process.tblSubjectBare] PRIMARY KEY CLUSTERED 
(
	[SubjectTag] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblSubjectBare_Unique] ON [Process].[tblSubjectBare] 
(
	[SubjectID] ASC,
	[Generation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblVariable]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblVariable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VariableCode] [char](8) NOT NULL,
	[Item] [tinyint] NOT NULL,
	[Generation] [tinyint] NOT NULL,
	[ExtractSource] [tinyint] NOT NULL,
	[SurveySource] [tinyint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[LoopIndex] [tinyint] NOT NULL,
	[Translate] [bit] NOT NULL,
	[Notes] [text] NULL,
 CONSTRAINT [PK_tblVariable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblVariable_CodeUnique] ON [Process].[tblVariable] 
(
	[VariableCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblVariable_UniqueValues] ON [Process].[tblVariable] 
(
	[Item] ASC,
	[SurveySource] ASC,
	[SurveyYear] ASC,
	[LoopIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblSurveyTime]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblSurveyTime](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectTag] [int] NOT NULL,
	[SurveySource] [tinyint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[SurveyDate] [smalldatetime] NULL,
	[AgeSelfReportYears] [float] NULL,
	[AgeCalculateYears] [float] NULL,
 CONSTRAINT [PK_tblSurveyTime] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblSurveyTime_Unique] ON [Process].[tblSurveyTime] 
(
	[SubjectTag] ASC,
	[SurveyYear] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vewResponse]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vewResponse]
AS
SELECT     Process.tblSubjectBare.ExtendedID, Process.tblSubjectBare.SubjectTag, Process.tblSubjectBare.SubjectID, Process.tblSubjectBare.Generation, 
                      Process.tblSubjectBare.Gender, Process.tblResponseRaw.SurveyYear, Process.tblResponseRaw.ItemRaw AS ItemID, Process.tblResponseRaw.Value, 
                      Process.tblResponseRaw.LoopIndex, Process.tblItemRaw.Label AS ItemLabel
FROM         Process.tblSubjectBare INNER JOIN
                      Process.tblResponseRaw ON Process.tblSubjectBare.SubjectTag = Process.tblResponseRaw.SubjectTag INNER JOIN
                      Process.tblItemRaw ON Process.tblResponseRaw.ItemRaw = Process.tblItemRaw.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[13] 3) )"
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
         Begin Table = "tblSubjectBare (Process)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 257
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblResponseRaw (Process)"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 249
               Right = 399
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblItemRaw (Process)"
            Begin Extent = 
               Top = 93
               Left = 700
               Bottom = 201
               Right = 851
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vewResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vewResponse'
GO
/****** Object:  Table [Process].[tblResponse]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblResponse](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectTag] [int] NOT NULL,
	[Generation] [tinyint] NOT NULL,
	[SurveySource] [tinyint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[Item] [tinyint] NOT NULL,
	[Value] [smallint] NOT NULL,
	[LoopIndex] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblResponse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tblResponse_Item] ON [Process].[tblResponse] 
(
	[Item] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblResponse_Unique] ON [Process].[tblResponse] 
(
	[SubjectTag] ASC,
	[SurveySource] ASC,
	[SurveyYear] ASC,
	[Item] ASC,
	[LoopIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblSubject]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblSubject](
	[SubjectTag] [int] NOT NULL,
	[MOB] [smalldatetime] NULL,
	[KidIndex] [tinyint] NOT NULL,
	[LastSurveyYearCompleted] [smallint] NULL,
	[AgeAtLastSurvey] [float] NOT NULL,
	[KidCount] [tinyint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tblSubject] PRIMARY KEY CLUSTERED 
(
	[SubjectTag] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblRelatedStructure]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblRelatedStructure](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ExtendedFamilyID] [int] NOT NULL,
	[Subject1Tag] [int] NOT NULL,
	[Subject2Tag] [int] NOT NULL,
	[RelationshipPath] [tinyint] NOT NULL,
	[EverSharedHouse] [bit] NOT NULL,
 CONSTRAINT [PK_tblRelatednessStructure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblMarkerGen2]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblMarkerGen2](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RelatedID] [bigint] NOT NULL,
	[MarkerType] [tinyint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[MzEvidence] [tinyint] NOT NULL,
	[ShareBiodadEvidence] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblMarkerGen2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_tblMarkerGen2_Unique] UNIQUE NONCLUSTERED 
(
	[RelatedID] ASC,
	[MarkerType] ASC,
	[SurveyYear] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblMarkerGen1]    Script Date: 08/12/2011 21:38:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblMarkerGen1](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RelatedID] [bigint] NOT NULL,
	[MarkerType] [tinyint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[MzEvidence] [tinyint] NOT NULL,
	[ShareBiomomEvidence] [tinyint] NOT NULL,
	[ShareBiodadEvidence] [tinyint] NOT NULL,
 CONSTRAINT [PK_tblMarkerGen1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_tblMarkerGen1_Unique] UNIQUE NONCLUSTERED 
(
	[RelatedID] ASC,
	[MarkerType] ASC,
	[SurveyYear] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [Process].[prcResponseRetrieveSubset]    Script Date: 08/12/2011 21:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [Process].[prcResponseRetrieveSubset] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT     ID, SubjectTag, Generation, SurveySource, SurveyYear, Item, Value, LoopIndex
FROM         Process.tblResponse
--WHERE Item in (13,14,15,16,17,20, 21,22,100) --FOr SurveyTime: Birthday Values, SelfReported Age at Interview, and the SubjectID
--WHERE Item <= 10 --For Marker?
WHERE Item in (9,10,40) --For MarkerGen2
END
GO
/****** Object:  Table [Process].[tblRelatedValues]    Script Date: 08/12/2011 21:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblRelatedValues](
	[ID] [bigint] NOT NULL,
	[MultipleBirth] [tinyint] NOT NULL,
	[IsMz] [tinyint] NOT NULL,
	[RImplicit] [float] NULL,
	[RImplicit2004] [float] NULL,
	[RExplicitOldestSibVersion] [float] NULL,
	[RExplicitYoungestSibVersion] [float] NULL,
	[RExplicit] [float] NULL,
	[R] [float] NULL,
	[RPeek] [float] NULL,
 CONSTRAINT [PK_tblRelatedValues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vewMarker]    Script Date: 08/12/2011 21:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vewMarker]
AS
SELECT     TOP (100) PERCENT Process.tblSubjectBare.ExtendedID, Process.tblRelated.Subject1Tag, Process.tblRelated.Subject2Tag, Process.tblMarkerGen2.RelatedID, 
                      Process.tblMarkerGen2.ID AS MarkerID, Process.tblLUMarkerType.Label AS MarkerType, Process.tblLUMarkerType.Explicit, Process.tblMarkerGen2.SurveyYear, 
                      Process.tblMarkerGen2.MzEvidence, Process.tblMarkerGen2.ShareBiodadEvidence
FROM         Process.tblSubjectBare INNER JOIN
                      Process.tblRelated ON Process.tblSubjectBare.SubjectTag = Process.tblRelated.Subject1Tag INNER JOIN
                      Process.tblMarkerGen2 ON Process.tblRelated.ID = Process.tblMarkerGen2.RelatedID INNER JOIN
                      Process.tblLUMarkerType ON Process.tblMarkerGen2.MarkerType = Process.tblLUMarkerType.ID
ORDER BY Process.tblSubjectBare.ExtendedID, Process.tblRelated.Subject1Tag, Process.tblRelated.Subject2Tag, MarkerType, Process.tblMarkerGen2.SurveyYear
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
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
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
         Configuration = "(H (4[30] 3) )"
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
      ActivePaneConfig = 1
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblLUMarkerType (Process)"
            Begin Extent = 
               Top = 74
               Left = 826
               Bottom = 218
               Right = 977
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblRelated (Process)"
            Begin Extent = 
               Top = 28
               Left = 243
               Bottom = 234
               Right = 457
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblSubjectBare (Process)"
            Begin Extent = 
               Top = 86
               Left = 46
               Bottom = 194
               Right = 197
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblMarkerGen2 (Process)"
            Begin Extent = 
               Top = 62
               Left = 538
               Bottom = 308
               Right = 721
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2190
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
         Group' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vewMarker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'By = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vewMarker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vewMarker'
GO
/****** Object:  Default [DF_tblVariable_DoNotTranslate]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblVariable] ADD  CONSTRAINT [DF_tblVariable_DoNotTranslate]  DEFAULT ((1)) FOR [Translate]
GO
/****** Object:  Check [CK_tblVariable_Generation]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblVariable]  WITH CHECK ADD  CONSTRAINT [CK_tblVariable_Generation] CHECK  (([Generation]=(2) OR [Generation]=(1)))
GO
ALTER TABLE [Process].[tblVariable] CHECK CONSTRAINT [CK_tblVariable_Generation]
GO
/****** Object:  Check [CK_tblVariable_SurveyYear]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblVariable]  WITH CHECK ADD  CONSTRAINT [CK_tblVariable_SurveyYear] CHECK  (((1979)<=[SurveyYear] AND [SurveyYear]<=(2010)))
GO
ALTER TABLE [Process].[tblVariable] CHECK CONSTRAINT [CK_tblVariable_SurveyYear]
GO
/****** Object:  Check [CK_tblVariable_VariableCodeLength]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblVariable]  WITH CHECK ADD  CONSTRAINT [CK_tblVariable_VariableCodeLength] CHECK  ((len([VariableCode])=(8)))
GO
ALTER TABLE [Process].[tblVariable] CHECK CONSTRAINT [CK_tblVariable_VariableCodeLength]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Should be exactly 8 characters' , @level0type=N'SCHEMA',@level0name=N'Process', @level1type=N'TABLE',@level1name=N'tblVariable', @level2type=N'CONSTRAINT',@level2name=N'CK_tblVariable_VariableCodeLength'
GO
/****** Object:  Check [CK_tblSurveyTime_AgeCalculateYears]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSurveyTime]  WITH CHECK ADD  CONSTRAINT [CK_tblSurveyTime_AgeCalculateYears] CHECK  (((0)<=[AgeCalculateYears] AND [AgeCalculateYears]<=(70)))
GO
ALTER TABLE [Process].[tblSurveyTime] CHECK CONSTRAINT [CK_tblSurveyTime_AgeCalculateYears]
GO
/****** Object:  Check [CK_tblSurveyTime_AgeSelfReportYears]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSurveyTime]  WITH CHECK ADD  CONSTRAINT [CK_tblSurveyTime_AgeSelfReportYears] CHECK  (((0)<=[AgeSelfReportYears] AND [AgeSelfReportYears]<=(70)))
GO
ALTER TABLE [Process].[tblSurveyTime] CHECK CONSTRAINT [CK_tblSurveyTime_AgeSelfReportYears]
GO
/****** Object:  Check [CK_tblSurveyTime_SurveyYear]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSurveyTime]  WITH CHECK ADD  CONSTRAINT [CK_tblSurveyTime_SurveyYear] CHECK  (((1979)<=[SurveyYear] AND [SurveyYear]<=(2010)))
GO
ALTER TABLE [Process].[tblSurveyTime] CHECK CONSTRAINT [CK_tblSurveyTime_SurveyYear]
GO
/****** Object:  Check [CK_tblResponse_LoopIndex]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblResponse]  WITH CHECK ADD  CONSTRAINT [CK_tblResponse_LoopIndex] CHECK  (((0)<=[LoopIndex] AND [LoopIndex]<=(13)))
GO
ALTER TABLE [Process].[tblResponse] CHECK CONSTRAINT [CK_tblResponse_LoopIndex]
GO
/****** Object:  Check [CK_tblResponse_SurveyYear]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblResponse]  WITH CHECK ADD  CONSTRAINT [CK_tblResponse_SurveyYear] CHECK  (((1979)<=[SurveyYear] AND [SurveyYear]<=(2010)))
GO
ALTER TABLE [Process].[tblResponse] CHECK CONSTRAINT [CK_tblResponse_SurveyYear]
GO
/****** Object:  Check [CK_tblSubject_AgeAtLastSurvey]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_AgeAtLastSurvey] CHECK  (([AgeAtLastSurvey]>=(0)))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_AgeAtLastSurvey]
GO
/****** Object:  Check [CK_tblSubject_KidCount]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_KidCount] CHECK  (((0)<=[KidCount] AND [KidCount]<=(11)))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_KidCount]
GO
/****** Object:  Check [CK_tblSubject_LastSurveyYear]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_LastSurveyYear] CHECK  (((1979)<=[LastSurveyYearCompleted] AND [LastSurveyYearCompleted]<=(2010)))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_LastSurveyYear]
GO
/****** Object:  Check [CK_tblSubject_MOB]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_MOB] CHECK  (('1/1/1957'<=[MOB]))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_MOB]
GO
/****** Object:  ForeignKey [FK_tblSubjectBare_tblLUGender]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSubjectBare]  WITH CHECK ADD  CONSTRAINT [FK_tblSubjectBare_tblLUGender] FOREIGN KEY([Gender])
REFERENCES [Process].[tblLUGender] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblSubjectBare] CHECK CONSTRAINT [FK_tblSubjectBare_tblLUGender]
GO
/****** Object:  ForeignKey [FK_tblVariable_tblLUExtractSource]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblVariable]  WITH CHECK ADD  CONSTRAINT [FK_tblVariable_tblLUExtractSource] FOREIGN KEY([ExtractSource])
REFERENCES [Process].[tblLUExtractSource] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblVariable] CHECK CONSTRAINT [FK_tblVariable_tblLUExtractSource]
GO
/****** Object:  ForeignKey [FK_tblVariable_tblLUItem]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblVariable]  WITH CHECK ADD  CONSTRAINT [FK_tblVariable_tblLUItem] FOREIGN KEY([Item])
REFERENCES [Process].[tblItem] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblVariable] CHECK CONSTRAINT [FK_tblVariable_tblLUItem]
GO
/****** Object:  ForeignKey [FK_tblVariable_tblLUSurvey]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblVariable]  WITH CHECK ADD  CONSTRAINT [FK_tblVariable_tblLUSurvey] FOREIGN KEY([SurveySource])
REFERENCES [Process].[tblLUSurveySource] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblVariable] CHECK CONSTRAINT [FK_tblVariable_tblLUSurvey]
GO
/****** Object:  ForeignKey [FK_tblSurveyTime_tblLUSurveySource]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSurveyTime]  WITH CHECK ADD  CONSTRAINT [FK_tblSurveyTime_tblLUSurveySource] FOREIGN KEY([SurveySource])
REFERENCES [Process].[tblLUSurveySource] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblSurveyTime] CHECK CONSTRAINT [FK_tblSurveyTime_tblLUSurveySource]
GO
/****** Object:  ForeignKey [FK_tblSurveyTime_tblSubjectBare]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSurveyTime]  WITH CHECK ADD  CONSTRAINT [FK_tblSurveyTime_tblSubjectBare] FOREIGN KEY([SubjectTag])
REFERENCES [Process].[tblSubjectBare] ([SubjectTag])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblSurveyTime] CHECK CONSTRAINT [FK_tblSurveyTime_tblSubjectBare]
GO
/****** Object:  ForeignKey [FK_tblResponse_tblItem]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblResponse]  WITH CHECK ADD  CONSTRAINT [FK_tblResponse_tblItem] FOREIGN KEY([Item])
REFERENCES [Process].[tblItem] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblResponse] CHECK CONSTRAINT [FK_tblResponse_tblItem]
GO
/****** Object:  ForeignKey [FK_tblResponse_tblLUSurveySource]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblResponse]  WITH CHECK ADD  CONSTRAINT [FK_tblResponse_tblLUSurveySource] FOREIGN KEY([SurveySource])
REFERENCES [Process].[tblLUSurveySource] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblResponse] CHECK CONSTRAINT [FK_tblResponse_tblLUSurveySource]
GO
/****** Object:  ForeignKey [FK_tblResponse_tblSubjectBare]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblResponse]  WITH CHECK ADD  CONSTRAINT [FK_tblResponse_tblSubjectBare] FOREIGN KEY([SubjectTag])
REFERENCES [Process].[tblSubjectBare] ([SubjectTag])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblResponse] CHECK CONSTRAINT [FK_tblResponse_tblSubjectBare]
GO
/****** Object:  ForeignKey [FK_tblSubject_tblSubjectBare]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [FK_tblSubject_tblSubjectBare] FOREIGN KEY([SubjectTag])
REFERENCES [Process].[tblSubjectBare] ([SubjectTag])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [FK_tblSubject_tblSubjectBare]
GO
/****** Object:  ForeignKey [FK_tblRelatedStructure_tblLURelationshipPath]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblRelatedStructure]  WITH CHECK ADD  CONSTRAINT [FK_tblRelatedStructure_tblLURelationshipPath] FOREIGN KEY([RelationshipPath])
REFERENCES [Process].[tblLURelationshipPath] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblRelatedStructure] CHECK CONSTRAINT [FK_tblRelatedStructure_tblLURelationshipPath]
GO
/****** Object:  ForeignKey [FK_tblRelatedStructure_tblSubjectBare_Subject1]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblRelatedStructure]  WITH CHECK ADD  CONSTRAINT [FK_tblRelatedStructure_tblSubjectBare_Subject1] FOREIGN KEY([Subject1Tag])
REFERENCES [Process].[tblSubjectBare] ([SubjectTag])
GO
ALTER TABLE [Process].[tblRelatedStructure] CHECK CONSTRAINT [FK_tblRelatedStructure_tblSubjectBare_Subject1]
GO
/****** Object:  ForeignKey [FK_tblRelatedStructure_tblSubjectBare_Subject2]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblRelatedStructure]  WITH CHECK ADD  CONSTRAINT [FK_tblRelatedStructure_tblSubjectBare_Subject2] FOREIGN KEY([Subject2Tag])
REFERENCES [Process].[tblSubjectBare] ([SubjectTag])
GO
ALTER TABLE [Process].[tblRelatedStructure] CHECK CONSTRAINT [FK_tblRelatedStructure_tblSubjectBare_Subject2]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen2_tblLUMarkerEvidence_Biodad]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen2]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen2_tblLUMarkerEvidence_Biodad] FOREIGN KEY([ShareBiodadEvidence])
REFERENCES [Process].[tblLUMarkerEvidence] ([ID])
GO
ALTER TABLE [Process].[tblMarkerGen2] CHECK CONSTRAINT [FK_tblMarkerGen2_tblLUMarkerEvidence_Biodad]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen2_tblLUMarkerEvidence_Mz]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen2]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen2_tblLUMarkerEvidence_Mz] FOREIGN KEY([MzEvidence])
REFERENCES [Process].[tblLUMarkerEvidence] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblMarkerGen2] CHECK CONSTRAINT [FK_tblMarkerGen2_tblLUMarkerEvidence_Mz]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen2_tblLUMarkerType]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen2]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen2_tblLUMarkerType] FOREIGN KEY([MarkerType])
REFERENCES [Process].[tblLUMarkerType] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblMarkerGen2] CHECK CONSTRAINT [FK_tblMarkerGen2_tblLUMarkerType]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen2_tblRelatedStructure]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen2]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen2_tblRelatedStructure] FOREIGN KEY([RelatedID])
REFERENCES [Process].[tblRelatedStructure] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblMarkerGen2] CHECK CONSTRAINT [FK_tblMarkerGen2_tblRelatedStructure]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen1_tblLUMarkerEvidence_Biodad]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen1]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen1_tblLUMarkerEvidence_Biodad] FOREIGN KEY([ShareBiodadEvidence])
REFERENCES [Process].[tblLUMarkerEvidence] ([ID])
GO
ALTER TABLE [Process].[tblMarkerGen1] CHECK CONSTRAINT [FK_tblMarkerGen1_tblLUMarkerEvidence_Biodad]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen1_tblLUMarkerEvidence_Biomom]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen1]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen1_tblLUMarkerEvidence_Biomom] FOREIGN KEY([ShareBiomomEvidence])
REFERENCES [Process].[tblLUMarkerEvidence] ([ID])
GO
ALTER TABLE [Process].[tblMarkerGen1] CHECK CONSTRAINT [FK_tblMarkerGen1_tblLUMarkerEvidence_Biomom]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen1_tblLUMarkerEvidence_Mz]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen1]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen1_tblLUMarkerEvidence_Mz] FOREIGN KEY([MzEvidence])
REFERENCES [Process].[tblLUMarkerEvidence] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblMarkerGen1] CHECK CONSTRAINT [FK_tblMarkerGen1_tblLUMarkerEvidence_Mz]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen1_tblLUMarkerType]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen1]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen1_tblLUMarkerType] FOREIGN KEY([MarkerType])
REFERENCES [Process].[tblLUMarkerType] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblMarkerGen1] CHECK CONSTRAINT [FK_tblMarkerGen1_tblLUMarkerType]
GO
/****** Object:  ForeignKey [FK_tblMarkerGen1_tblRelatedStructure]    Script Date: 08/12/2011 21:38:17 ******/
ALTER TABLE [Process].[tblMarkerGen1]  WITH CHECK ADD  CONSTRAINT [FK_tblMarkerGen1_tblRelatedStructure] FOREIGN KEY([RelatedID])
REFERENCES [Process].[tblRelatedStructure] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblMarkerGen1] CHECK CONSTRAINT [FK_tblMarkerGen1_tblRelatedStructure]
GO
/****** Object:  ForeignKey [FK_tblRelatedValues_tblLUIsMZ]    Script Date: 08/12/2011 21:38:18 ******/
ALTER TABLE [Process].[tblRelatedValues]  WITH CHECK ADD  CONSTRAINT [FK_tblRelatedValues_tblLUIsMZ] FOREIGN KEY([IsMz])
REFERENCES [Process].[tblLUIsMZ] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblRelatedValues] CHECK CONSTRAINT [FK_tblRelatedValues_tblLUIsMZ]
GO
/****** Object:  ForeignKey [FK_tblRelatedValues_tblLUMultipleBirth]    Script Date: 08/12/2011 21:38:18 ******/
ALTER TABLE [Process].[tblRelatedValues]  WITH CHECK ADD  CONSTRAINT [FK_tblRelatedValues_tblLUMultipleBirth] FOREIGN KEY([MultipleBirth])
REFERENCES [Process].[tblLUMultipleBirth] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblRelatedValues] CHECK CONSTRAINT [FK_tblRelatedValues_tblLUMultipleBirth]
GO
/****** Object:  ForeignKey [FK_tblRelatedValues_tblRelatedStructure]    Script Date: 08/12/2011 21:38:18 ******/
ALTER TABLE [Process].[tblRelatedValues]  WITH CHECK ADD  CONSTRAINT [FK_tblRelatedValues_tblRelatedStructure] FOREIGN KEY([ID])
REFERENCES [Process].[tblRelatedStructure] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblRelatedValues] CHECK CONSTRAINT [FK_tblRelatedValues_tblRelatedStructure]
GO
