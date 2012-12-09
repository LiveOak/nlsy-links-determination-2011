USE [master]
GO
/****** Object:  Database [NlsLinks]    Script Date: 07/24/2011 21:00:07 ******/
CREATE DATABASE [NlsLinks] ON  PRIMARY 
( NAME = N'NlsLinks', FILENAME = N'D:\NlsLinks\NlsLinks.mdf' , SIZE = 50176KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NlsLinks_log', FILENAME = N'E:\NlsLinks\NlsLinks_log.ldf' , SIZE = 427392KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  User [Simulation]    Script Date: 07/24/2011 21:00:07 ******/
CREATE USER [Simulation] FOR LOGIN [Simulation] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [Process]    Script Date: 07/24/2011 21:00:07 ******/
CREATE SCHEMA [Process] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [Extract]    Script Date: 07/24/2011 21:00:07 ******/
CREATE SCHEMA [Extract] AUTHORIZATION [dbo]
GO
/****** Object:  Table [Process].[tblLUSurvey]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUSurvey](
	[ID] [tinyint] NOT NULL,
	[Label] [char](6) NOT NULL,
 CONSTRAINT [PK_tblLUSurvey] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblLURelationshipPath]    Script Date: 07/24/2011 21:00:08 ******/
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
/****** Object:  Table [Process].[tblLUMultipleBirth]    Script Date: 07/24/2011 21:00:08 ******/
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
/****** Object:  Table [Process].[tblLUGender]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblLUGender](
	[ID] [tinyint] NOT NULL,
	[Label] [char](6) NOT NULL,
 CONSTRAINT [PK_tblLUGender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblItemRaw]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblItemRaw](
	[ID] [tinyint] NOT NULL,
	[Label] [char](50) NOT NULL,
	[MinValue] [int] NOT NULL,
	[MaxValue] [int] NOT NULL,
 CONSTRAINT [PK_tblLUItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Process].[tblItem]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblItem](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Label] [char](50) NOT NULL,
	[MinValue] [int] NOT NULL,
	[MaxValue] [int] NOT NULL,
 CONSTRAINT [PK_tblItem_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Extract].[tblImportGen2]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Extract].[tblImportGen2](
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
	[C3601100] [int] NULL,
	[Y0002100] [int] NULL,
	[Y0677600] [int] NULL,
	[Y0974800] [int] NULL,
	[Y1192400] [int] NULL,
	[Y1434300] [int] NULL,
	[Y1672700] [int] NULL,
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
	[Y1980000] [int] NULL,
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
	[Y2266000] [int] NULL,
	[Y2267100] [int] NULL,
 CONSTRAINT [PK_tblImportGen2] PRIMARY KEY CLUSTERED 
(
	[C0000100] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Extract].[tblImportGen1]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Extract].[tblImportGen1](
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
	[R0214700] [int] NULL,
	[R0214800] [int] NULL,
	[R0216500] [int] NULL,
	[R0406510] [int] NULL,
	[R0619010] [int] NULL,
	[R0898310] [int] NULL,
	[R1145110] [int] NULL,
	[R1520310] [int] NULL,
	[R1891010] [int] NULL,
	[R2258110] [int] NULL,
	[R2445510] [int] NULL,
	[R2871300] [int] NULL,
	[R3075000] [int] NULL,
	[R3401700] [int] NULL,
	[R3657100] [int] NULL,
	[R4007600] [int] NULL,
	[R4418700] [int] NULL,
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
	[R5496200] [int] NULL,
	[R5496500] [int] NULL,
	[R5497000] [int] NULL,
	[R5497200] [int] NULL,
	[R6211500] [int] NULL,
	[R6211600] [int] NULL,
	[R6211700] [int] NULL,
	[R6212200] [int] NULL,
	[R6212300] [int] NULL,
	[R6479800] [int] NULL,
	[R6764900] [int] NULL,
	[R6765000] [int] NULL,
	[R6765100] [int] NULL,
	[R6765600] [int] NULL,
	[R6765700] [int] NULL,
	[R6765800] [int] NULL,
	[R7007500] [int] NULL,
	[R7409200] [int] NULL,
	[R7409300] [int] NULL,
	[R7409400] [int] NULL,
	[R7409900] [int] NULL,
	[R7410000] [int] NULL,
	[R7410100] [int] NULL,
	[R7704800] [int] NULL,
	[R8106700] [int] NULL,
	[R8106800] [int] NULL,
	[R8106900] [int] NULL,
	[R8107200] [int] NULL,
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
	[T0989000] [int] NULL,
	[T1487200] [int] NULL,
	[T1487300] [int] NULL,
	[T1487400] [int] NULL,
	[T1487600] [int] NULL,
	[T1487700] [int] NULL,
	[T1487800] [int] NULL,
	[T2210800] [int] NULL,
 CONSTRAINT [PK_tblImportGen1] PRIMARY KEY CLUSTERED 
(
	[R0000100] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblSubjectBare]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblSubjectBare](
	[SubjectTag] [bigint] IDENTITY(1,1) NOT NULL,
	[ExtendedID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Generation] [tinyint] NOT NULL,
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
/****** Object:  Table [Process].[tblSubject]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblSubject](
	[SubjectRowID] [bigint] NOT NULL,
	[ExtendedID] [int] NOT NULL,
	[SubjectID] [int] NOT NULL,
	[Generation] [tinyint] NOT NULL,
	[MOB] [smalldatetime] NULL,
	[Gender] [tinyint] NOT NULL,
	[KidIndex] [tinyint] NOT NULL,
	[LastSurveyYearCompleted] [smallint] NULL,
	[AgeAtLastSurvey] [float] NOT NULL,
	[KidCount] [tinyint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tblSubject] PRIMARY KEY CLUSTERED 
(
	[SubjectRowID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblResponseRaw]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblResponseRaw](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectTag] [bigint] NOT NULL,
	[Generation] [tinyint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[ItemRaw] [tinyint] NOT NULL,
	[Value] [int] NOT NULL,
	[SubjectReferenced] [bigint] NULL,
	[LoopIndex] [tinyint] NULL,
 CONSTRAINT [PK_tblItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblResponseRaw_Unique] ON [Process].[tblResponseRaw] 
(
	[SubjectTag] ASC,
	[SurveyYear] ASC,
	[ItemRaw] ASC,
	[LoopIndex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblResponse]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblResponse](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SubjectTag] [bigint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[Item] [tinyint] NOT NULL,
	[Value] [int] NOT NULL,
	[SubjectReferenced] [bigint] NULL,
	[LoopIndex] [tinyint] NULL,
 CONSTRAINT [PK_tblResponse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblRelated]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Process].[tblRelated](
	[ID] [bigint] NOT NULL,
	[ExtendedFamilyID] [int] NOT NULL,
	[Subject1ID] [bigint] NOT NULL,
	[Subject2ID] [bigint] NOT NULL,
	[Subject1Generation] [tinyint] NOT NULL,
	[Subject2Generation] [tinyint] NOT NULL,
	[Subject1Gender] [tinyint] NOT NULL,
	[Subject2Gender] [tinyint] NOT NULL,
	[RelationshipPath] [tinyint] NOT NULL,
	[EverSharedHouse] [bit] NOT NULL,
	[MultipleBirth] [tinyint] NOT NULL,
	[IsMz] [tinyint] NOT NULL,
	[RImplicit] [float] NOT NULL,
	[RImplicit2004] [float] NOT NULL,
	[RExplicitOldestSibVersion] [float] NOT NULL,
	[RExplicitYoungestSibVersion] [float] NOT NULL,
	[RExplicit] [float] NOT NULL,
	[R] [float] NOT NULL,
	[RPeek] [float] NOT NULL,
 CONSTRAINT [PK_tblUnpackedRelatedness] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Process].[tblVariableRaw]    Script Date: 07/24/2011 21:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [Process].[tblVariableRaw](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VariableCode] [char](8) NOT NULL,
	[ItemRaw] [tinyint] NOT NULL,
	[Generation] [tinyint] NOT NULL,
	[Survey] [tinyint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[LoopIndex] [tinyint] NULL,
	[Translate] [bit] NOT NULL,
 CONSTRAINT [PK_tblVariable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblVariable_CodeUnique] ON [Process].[tblVariableRaw] 
(
	[VariableCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vewVariable]    Script Date: 07/24/2011 21:00:09 ******/
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
/****** Object:  View [dbo].[vewResponse]    Script Date: 07/24/2011 21:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vewResponse]
AS
SELECT     Process.tblResponse.SubjectTag, Process.tblResponse.SurveyYear, Process.tblItem.ID AS ItemID, Process.tblItem.Label AS ItemLabel, Process.tblResponse.Value, 
                      Process.tblResponse.SubjectReferenced, Process.tblResponse.LoopIndex, Process.tblSubjectBare.ExtendedID, Process.tblSubjectBare.SubjectID, 
                      Process.tblSubjectBare.Generation
FROM         Process.tblItem INNER JOIN
                      Process.tblResponse ON Process.tblItem.ID = Process.tblResponse.Item INNER JOIN
                      Process.tblSubjectBare ON Process.tblResponse.SubjectTag = Process.tblSubjectBare.SubjectTag
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
         Configuration = "(H (1[50] 2[25] 3) )"
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
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4[50] 3) )"
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
      ActivePaneConfig = 1
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tblItem (Process)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 183
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblResponse (Process)"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 213
               Right = 399
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblSubjectBare (Process)"
            Begin Extent = 
               Top = 244
               Left = 550
               Bottom = 352
               Right = 701
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
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
/****** Object:  Default [DF_tblVariable_DoNotTranslate]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblVariableRaw] ADD  CONSTRAINT [DF_tblVariable_DoNotTranslate]  DEFAULT ((1)) FOR [Translate]
GO
/****** Object:  Check [CK_tblSubject_AgeAtLastSurvey]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_AgeAtLastSurvey] CHECK  (([AgeAtLastSurvey]>=(0)))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_AgeAtLastSurvey]
GO
/****** Object:  Check [CK_tblSubject_Generation]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_Generation] CHECK  (((1)<=[Generation] AND [Generation]<=(2)))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_Generation]
GO
/****** Object:  Check [CK_tblSubject_KidCount]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_KidCount] CHECK  (((0)<=[KidCount] AND [KidCount]<=(11)))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_KidCount]
GO
/****** Object:  Check [CK_tblSubject_LastSurveyYear]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_LastSurveyYear] CHECK  (((1979)<=[LastSurveyYearCompleted] AND [LastSurveyYearCompleted]<=(2010)))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_LastSurveyYear]
GO
/****** Object:  Check [CK_tblSubject_MOB]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [CK_tblSubject_MOB] CHECK  (('1/1/1957'<=[MOB]))
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [CK_tblSubject_MOB]
GO
/****** Object:  Check [CK_tblItem_SurveyYear]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblResponseRaw]  WITH CHECK ADD  CONSTRAINT [CK_tblItem_SurveyYear] CHECK  (((1979)<=[SurveyYear] AND [SurveyYear]<=(2010)))
GO
ALTER TABLE [Process].[tblResponseRaw] CHECK CONSTRAINT [CK_tblItem_SurveyYear]
GO
/****** Object:  Check [CK_tblRelated_IsMz]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblRelated]  WITH CHECK ADD  CONSTRAINT [CK_tblRelated_IsMz] CHECK  (([IsMz]=(255) OR [IsMz]=(2) OR [IsMz]=(1)))
GO
ALTER TABLE [Process].[tblRelated] CHECK CONSTRAINT [CK_tblRelated_IsMz]
GO
/****** Object:  Check [CK_tblRelated_Subject1Generation]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblRelated]  WITH CHECK ADD  CONSTRAINT [CK_tblRelated_Subject1Generation] CHECK  (([Subject1Generation]=(2) OR [Subject1Generation]=(1)))
GO
ALTER TABLE [Process].[tblRelated] CHECK CONSTRAINT [CK_tblRelated_Subject1Generation]
GO
/****** Object:  Check [CK_tblRelated_Subject2Generation]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblRelated]  WITH CHECK ADD  CONSTRAINT [CK_tblRelated_Subject2Generation] CHECK  (([Subject2Generation]=(2) OR [Subject2Generation]=(1)))
GO
ALTER TABLE [Process].[tblRelated] CHECK CONSTRAINT [CK_tblRelated_Subject2Generation]
GO
/****** Object:  Check [CK_tblVariable_Generation]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblVariableRaw]  WITH CHECK ADD  CONSTRAINT [CK_tblVariable_Generation] CHECK  (([Generation]=(2) OR [Generation]=(1)))
GO
ALTER TABLE [Process].[tblVariableRaw] CHECK CONSTRAINT [CK_tblVariable_Generation]
GO
/****** Object:  Check [CK_tblVariable_SurveyYear]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblVariableRaw]  WITH CHECK ADD  CONSTRAINT [CK_tblVariable_SurveyYear] CHECK  (((1979)<=[SurveyYear] AND [SurveyYear]<=(2010)))
GO
ALTER TABLE [Process].[tblVariableRaw] CHECK CONSTRAINT [CK_tblVariable_SurveyYear]
GO
/****** Object:  Check [CK_tblVariable_VariableCodeLength]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblVariableRaw]  WITH CHECK ADD  CONSTRAINT [CK_tblVariable_VariableCodeLength] CHECK  ((len([VariableCode])=(8)))
GO
ALTER TABLE [Process].[tblVariableRaw] CHECK CONSTRAINT [CK_tblVariable_VariableCodeLength]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Should be exactly 8 characters' , @level0type=N'SCHEMA',@level0name=N'Process', @level1type=N'TABLE',@level1name=N'tblVariableRaw', @level2type=N'CONSTRAINT',@level2name=N'CK_tblVariable_VariableCodeLength'
GO
/****** Object:  ForeignKey [FK_tblSubject_tblLUGender]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblSubject]  WITH CHECK ADD  CONSTRAINT [FK_tblSubject_tblLUGender] FOREIGN KEY([Gender])
REFERENCES [Process].[tblLUGender] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblSubject] CHECK CONSTRAINT [FK_tblSubject_tblLUGender]
GO
/****** Object:  ForeignKey [FK_tblItem_tblLUItem]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblResponseRaw]  WITH CHECK ADD  CONSTRAINT [FK_tblItem_tblLUItem] FOREIGN KEY([ItemRaw])
REFERENCES [Process].[tblItemRaw] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblResponseRaw] CHECK CONSTRAINT [FK_tblItem_tblLUItem]
GO
/****** Object:  ForeignKey [FK_tblResponseRaw_tblSubjectBare]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblResponseRaw]  WITH CHECK ADD  CONSTRAINT [FK_tblResponseRaw_tblSubjectBare] FOREIGN KEY([SubjectTag])
REFERENCES [Process].[tblSubjectBare] ([SubjectTag])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblResponseRaw] CHECK CONSTRAINT [FK_tblResponseRaw_tblSubjectBare]
GO
/****** Object:  ForeignKey [FK_tblResponse_tblItem]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblResponse]  WITH CHECK ADD  CONSTRAINT [FK_tblResponse_tblItem] FOREIGN KEY([Item])
REFERENCES [Process].[tblItem] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblResponse] CHECK CONSTRAINT [FK_tblResponse_tblItem]
GO
/****** Object:  ForeignKey [FK_tblResponse_tblSubjectBare]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblResponse]  WITH CHECK ADD  CONSTRAINT [FK_tblResponse_tblSubjectBare] FOREIGN KEY([SubjectTag])
REFERENCES [Process].[tblSubjectBare] ([SubjectTag])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblResponse] CHECK CONSTRAINT [FK_tblResponse_tblSubjectBare]
GO
/****** Object:  ForeignKey [FK_tblRelated_tblLUGender_Subject1]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblRelated]  WITH CHECK ADD  CONSTRAINT [FK_tblRelated_tblLUGender_Subject1] FOREIGN KEY([Subject1Gender])
REFERENCES [Process].[tblLUGender] ([ID])
GO
ALTER TABLE [Process].[tblRelated] CHECK CONSTRAINT [FK_tblRelated_tblLUGender_Subject1]
GO
/****** Object:  ForeignKey [FK_tblRelated_tblLUGender_Subject2]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblRelated]  WITH CHECK ADD  CONSTRAINT [FK_tblRelated_tblLUGender_Subject2] FOREIGN KEY([Subject2Gender])
REFERENCES [Process].[tblLUGender] ([ID])
GO
ALTER TABLE [Process].[tblRelated] CHECK CONSTRAINT [FK_tblRelated_tblLUGender_Subject2]
GO
/****** Object:  ForeignKey [FK_tblRelated_tblLUMultipleBirth]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblRelated]  WITH CHECK ADD  CONSTRAINT [FK_tblRelated_tblLUMultipleBirth] FOREIGN KEY([MultipleBirth])
REFERENCES [Process].[tblLUMultipleBirth] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblRelated] CHECK CONSTRAINT [FK_tblRelated_tblLUMultipleBirth]
GO
/****** Object:  ForeignKey [FK_tblRelated_tblLURelationshipPath]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblRelated]  WITH CHECK ADD  CONSTRAINT [FK_tblRelated_tblLURelationshipPath] FOREIGN KEY([RelationshipPath])
REFERENCES [Process].[tblLURelationshipPath] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblRelated] CHECK CONSTRAINT [FK_tblRelated_tblLURelationshipPath]
GO
/****** Object:  ForeignKey [FK_tblVariable_tblLUItem]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblVariableRaw]  WITH CHECK ADD  CONSTRAINT [FK_tblVariable_tblLUItem] FOREIGN KEY([ItemRaw])
REFERENCES [Process].[tblItemRaw] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblVariableRaw] CHECK CONSTRAINT [FK_tblVariable_tblLUItem]
GO
/****** Object:  ForeignKey [FK_tblVariable_tblLUSurvey]    Script Date: 07/24/2011 21:00:08 ******/
ALTER TABLE [Process].[tblVariableRaw]  WITH CHECK ADD  CONSTRAINT [FK_tblVariable_tblLUSurvey] FOREIGN KEY([Survey])
REFERENCES [Process].[tblLUSurvey] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [Process].[tblVariableRaw] CHECK CONSTRAINT [FK_tblVariable_tblLUSurvey]
GO
