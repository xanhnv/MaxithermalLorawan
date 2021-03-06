USE [master]
GO
/****** Object:  Database [Pexo63Lorawan]    Script Date: 09/02/2021 13:59:18 ******/
CREATE DATABASE [Pexo63Lorawan] ON  PRIMARY 
( NAME = N'Pexo63Lorawan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Pexo63Lorawan.mdf' , SIZE = 401408KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pexo63Lorawan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Pexo63Lorawan_log.ldf' , SIZE = 466944KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Pexo63Lorawan] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pexo63Lorawan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pexo63Lorawan] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET ARITHABORT OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Pexo63Lorawan] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Pexo63Lorawan] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Pexo63Lorawan] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET  DISABLE_BROKER
GO
ALTER DATABASE [Pexo63Lorawan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Pexo63Lorawan] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Pexo63Lorawan] SET  READ_WRITE
GO
ALTER DATABASE [Pexo63Lorawan] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Pexo63Lorawan] SET  MULTI_USER
GO
ALTER DATABASE [Pexo63Lorawan] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Pexo63Lorawan] SET DB_CHAINING OFF
GO
USE [Pexo63Lorawan]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 09/02/2021 13:59:18 ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NT AUTHORITY\NETWORK SERVICE]    Script Date: 09/02/2021 13:59:18 ******/
CREATE USER [NT AUTHORITY\NETWORK SERVICE] FOR LOGIN [NT AUTHORITY\NETWORK SERVICE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nbiot]    Script Date: 09/02/2021 13:59:18 ******/
CREATE USER [nbiot] FOR LOGIN [nbiot] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[PacketD2]    Script Date: 09/02/2021 13:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacketD2](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Serial] [nvarchar](50) NOT NULL,
	[Packet] [bigint] NOT NULL,
 CONSTRAINT [PK_PacketD2] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacketD1]    Script Date: 09/02/2021 13:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacketD1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Serial] [nvarchar](50) NOT NULL,
	[Packet] [bigint] NOT NULL,
 CONSTRAINT [PK_PacketD1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PacketD0]    Script Date: 09/02/2021 13:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PacketD0](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Serial] [nvarchar](50) NOT NULL,
	[Packet] [bigint] NOT NULL,
 CONSTRAINT [PK_PacketD0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 09/02/2021 13:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Device](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceAddress] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 09/02/2021 13:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Serial] [nvarchar](50) NOT NULL,
	[Description] [ntext] NULL,
	[Location] [ntext] NULL,
	[Email] [nvarchar](255) NULL,
	[Unit] [text] NULL,
	[Celsius] [bit] NOT NULL,
	[Delay] [tinyint] NOT NULL,
	[Starttime] [text] NULL,
	[Stoptime] [text] NULL,
	[Settingtime] [text] NULL,
	[DurationDay] [int] NOT NULL,
	[DurationHour] [tinyint] NOT NULL,
	[IntervalSec] [tinyint] NOT NULL,
	[IntervalMin] [tinyint] NOT NULL,
	[IntervalHour] [tinyint] NOT NULL,
	[ContinueMem] [bit] NOT NULL,
	[Stopkey] [bit] NOT NULL,
	[AutoStart] [bit] NOT NULL,
	[IntervalSendLoraMin] [tinyint] NOT NULL,
	[IntervalSendLoraHour] [tinyint] NOT NULL,
	[IntervalSendLoraDay] [tinyint] NOT NULL,
	[ContinueMemoryCount] [smallint] NOT NULL,
	[Devicetype] [tinyint] NOT NULL,
	[NumberOfMeasD0] [tinyint] NULL,
	[NumberOfMeasD1] [tinyint] NULL,
	[TimezoneId] [text] NULL,
	[FirmwareVer] [text] NULL,
	[SettingByLora] [bit] NOT NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Realtime]    Script Date: 09/02/2021 13:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Realtime](
	[Serial] [nvarchar](50) NOT NULL,
	[Status] [text] NULL,
	[Data1] [text] NULL,
	[Data2] [text] NULL,
	[Runtime] [text] NULL,
	[TimeUpdated] [text] NOT NULL,
 CONSTRAINT [PK_Realtime] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Data]    Script Date: 09/02/2021 13:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Serial] [nvarchar](50) NOT NULL,
	[Data1] [float] NOT NULL,
	[Data2] [float] NOT NULL,
	[Time] [datetime] NOT NULL,
 CONSTRAINT [PK_Data] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alarm]    Script Date: 09/02/2021 13:59:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alarm](
	[Serial] [nvarchar](50) NOT NULL,
	[AlarmStatus1] [bit] NOT NULL,
	[HighAlarmTemp] [float] NOT NULL,
	[LowAlarmTemp] [float] NOT NULL,
	[AlarmStatus2] [bit] NOT NULL,
	[HighAlarmHumid] [float] NOT NULL,
	[LowAlarmHumid] [float] NOT NULL,
	[TttAlarm1] [float] NOT NULL,
	[TttLowAlarm1] [float] NOT NULL,
	[TttAlarm2] [float] NOT NULL,
	[TttLowAlarm2] [float] NOT NULL,
	[TimeUpdated] [text] NULL,
 CONSTRAINT [PK_Alarm] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF_Settings_Delay]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_Delay]  DEFAULT ((0)) FOR [Delay]
GO
/****** Object:  Default [DF_Settings_DurationDay]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_DurationDay]  DEFAULT ((0)) FOR [DurationDay]
GO
/****** Object:  Default [DF_Settings_DurationHour]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_DurationHour]  DEFAULT ((18)) FOR [DurationHour]
GO
/****** Object:  Default [DF_Settings_IntervalSec]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_IntervalSec]  DEFAULT ((3)) FOR [IntervalSec]
GO
/****** Object:  Default [DF_Settings_IntervalMin]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_IntervalMin]  DEFAULT ((0)) FOR [IntervalMin]
GO
/****** Object:  Default [DF_Settings_IntervalHour]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_IntervalHour]  DEFAULT ((0)) FOR [IntervalHour]
GO
/****** Object:  Default [DF_Settings_ContinueMem]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_ContinueMem]  DEFAULT ((0)) FOR [ContinueMem]
GO
/****** Object:  Default [DF_Settings_Stopkey]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_Stopkey]  DEFAULT ((1)) FOR [Stopkey]
GO
/****** Object:  Default [DF_Settings_AutoStart]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_AutoStart]  DEFAULT ((0)) FOR [AutoStart]
GO
/****** Object:  Default [DF_Settings_IntervalSendLoraHour]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_IntervalSendLoraHour]  DEFAULT ((0)) FOR [IntervalSendLoraHour]
GO
/****** Object:  Default [DF_Settings_IntervalSendLoraDay]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_IntervalSendLoraDay]  DEFAULT ((0)) FOR [IntervalSendLoraDay]
GO
/****** Object:  Default [DF_Settings_SettingByLora]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_SettingByLora]  DEFAULT ((0)) FOR [SettingByLora]
GO
/****** Object:  Default [DF_Alarm_AlarmStatus1]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Alarm] ADD  CONSTRAINT [DF_Alarm_AlarmStatus1]  DEFAULT ((0)) FOR [AlarmStatus1]
GO
/****** Object:  Default [DF_Alarm_AlarmStatus2]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Alarm] ADD  CONSTRAINT [DF_Alarm_AlarmStatus2]  DEFAULT ((0)) FOR [AlarmStatus2]
GO
/****** Object:  ForeignKey [FK_Realtime_Settings]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Realtime]  WITH CHECK ADD  CONSTRAINT [FK_Realtime_Settings] FOREIGN KEY([Serial])
REFERENCES [dbo].[Settings] ([Serial])
GO
ALTER TABLE [dbo].[Realtime] CHECK CONSTRAINT [FK_Realtime_Settings]
GO
/****** Object:  ForeignKey [FK_Data_Settings]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Data]  WITH CHECK ADD  CONSTRAINT [FK_Data_Settings] FOREIGN KEY([Serial])
REFERENCES [dbo].[Settings] ([Serial])
GO
ALTER TABLE [dbo].[Data] CHECK CONSTRAINT [FK_Data_Settings]
GO
/****** Object:  ForeignKey [FK_Alarm_Settings]    Script Date: 09/02/2021 13:59:19 ******/
ALTER TABLE [dbo].[Alarm]  WITH CHECK ADD  CONSTRAINT [FK_Alarm_Settings] FOREIGN KEY([Serial])
REFERENCES [dbo].[Settings] ([Serial])
GO
ALTER TABLE [dbo].[Alarm] CHECK CONSTRAINT [FK_Alarm_Settings]
GO
