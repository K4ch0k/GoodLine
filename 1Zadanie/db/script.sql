USE [master]
GO
/****** Object:  Database [Expenses]    Script Date: 22.12.2020 19:42:32 ******/
CREATE DATABASE [Expenses]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Expenses', FILENAME = N'Q:\MicrosoftSQLServer\MSSQL14.SQLEXPRESS\MSSQL\DATA\Expenses.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Expenses_log', FILENAME = N'Q:\MicrosoftSQLServer\MSSQL14.SQLEXPRESS\MSSQL\DATA\Expenses_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Expenses] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Expenses].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Expenses] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Expenses] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Expenses] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Expenses] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Expenses] SET ARITHABORT OFF 
GO
ALTER DATABASE [Expenses] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Expenses] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Expenses] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Expenses] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Expenses] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Expenses] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Expenses] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Expenses] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Expenses] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Expenses] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Expenses] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Expenses] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Expenses] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Expenses] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Expenses] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Expenses] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Expenses] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Expenses] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Expenses] SET  MULTI_USER 
GO
ALTER DATABASE [Expenses] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Expenses] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Expenses] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Expenses] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Expenses] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Expenses] SET QUERY_STORE = OFF
GO
USE [Expenses]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 22.12.2020 19:42:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expnss]    Script Date: 22.12.2020 19:42:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expnss](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[NameExp] [int] NOT NULL,
	[Summ] [money] NOT NULL,
	[DateExps] [date] NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Expnss] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameExp]    Script Date: 22.12.2020 19:42:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameExp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NameExpenses] [varchar](50) NOT NULL,
	[Category] [int] NOT NULL,
 CONSTRAINT [PK_NameExp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22.12.2020 19:42:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Name]) VALUES (1, N'Продукты')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (2, N'Коммунальные услуги')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (3, N'Транспорт')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (4, N'Другое')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Expnss] ON 

INSERT [dbo].[Expnss] ([ID], [UserID], [NameExp], [Summ], [DateExps], [Description]) VALUES (1, 1, 1, 87.5000, CAST(N'2020-12-14' AS Date), N'Вроде молоко "Простоквашино"')
INSERT [dbo].[Expnss] ([ID], [UserID], [NameExp], [Summ], [DateExps], [Description]) VALUES (2, 1, 3, 150.0000, CAST(N'2020-12-18' AS Date), N'Потратил на поездку до работы и домой')
INSERT [dbo].[Expnss] ([ID], [UserID], [NameExp], [Summ], [DateExps], [Description]) VALUES (4, 2, 2, 26.0000, CAST(N'2020-12-22' AS Date), N'Серый хлеб')
INSERT [dbo].[Expnss] ([ID], [UserID], [NameExp], [Summ], [DateExps], [Description]) VALUES (5, 2, 7, 0.0000, CAST(N'2020-12-22' AS Date), N'Дали бесплатно')
SET IDENTITY_INSERT [dbo].[Expnss] OFF
SET IDENTITY_INSERT [dbo].[NameExp] ON 

INSERT [dbo].[NameExp] ([ID], [NameExpenses], [Category]) VALUES (1, N'Молоко', 1)
INSERT [dbo].[NameExp] ([ID], [NameExpenses], [Category]) VALUES (2, N'Хлеб', 1)
INSERT [dbo].[NameExp] ([ID], [NameExpenses], [Category]) VALUES (3, N'Оплата транспорта', 3)
INSERT [dbo].[NameExp] ([ID], [NameExpenses], [Category]) VALUES (4, N'Оплата за свет', 2)
INSERT [dbo].[NameExp] ([ID], [NameExpenses], [Category]) VALUES (6, N'Чай', 1)
INSERT [dbo].[NameExp] ([ID], [NameExpenses], [Category]) VALUES (7, N'Вода', 1)
SET IDENTITY_INSERT [dbo].[NameExp] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Surname]) VALUES (1, N'qwerty12Q', N'qwerty12Q', N'Данил', N'')
INSERT [dbo].[Users] ([ID], [Login], [Password], [Name], [Surname]) VALUES (2, N'user2', N'123', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Expnss]  WITH CHECK ADD  CONSTRAINT [FK_Expnss_NameExp] FOREIGN KEY([NameExp])
REFERENCES [dbo].[NameExp] ([ID])
GO
ALTER TABLE [dbo].[Expnss] CHECK CONSTRAINT [FK_Expnss_NameExp]
GO
ALTER TABLE [dbo].[Expnss]  WITH CHECK ADD  CONSTRAINT [FK_Expnss_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Expnss] CHECK CONSTRAINT [FK_Expnss_Users]
GO
ALTER TABLE [dbo].[NameExp]  WITH CHECK ADD  CONSTRAINT [FK_NameExp_Categories] FOREIGN KEY([Category])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[NameExp] CHECK CONSTRAINT [FK_NameExp_Categories]
GO
USE [master]
GO
ALTER DATABASE [Expenses] SET  READ_WRITE 
GO
