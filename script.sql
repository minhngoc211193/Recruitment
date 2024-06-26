USE [master]
GO
/****** Object:  Database [Recruitment]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE DATABASE [Recruitment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Recruitment', FILENAME = N'D:\SQLServer2017\MSSQL14.SQLEXPRESS\MSSQL\DATA\Recruitment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Recruitment_log', FILENAME = N'D:\SQLServer2017\MSSQL14.SQLEXPRESS\MSSQL\DATA\Recruitment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Recruitment] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Recruitment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Recruitment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Recruitment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Recruitment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Recruitment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Recruitment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Recruitment] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Recruitment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Recruitment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Recruitment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Recruitment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Recruitment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Recruitment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Recruitment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Recruitment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Recruitment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Recruitment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Recruitment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Recruitment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Recruitment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Recruitment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Recruitment] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Recruitment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Recruitment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Recruitment] SET  MULTI_USER 
GO
ALTER DATABASE [Recruitment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Recruitment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Recruitment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Recruitment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Recruitment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Recruitment] SET QUERY_STORE = OFF
GO
USE [Recruitment]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Apply]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apply](
	[ApplyID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[Experiment] [nvarchar](max) NOT NULL,
	[Qualification] [nvarchar](max) NOT NULL,
	[Skill] [nvarchar](max) NOT NULL,
	[CV] [nvarchar](max) NOT NULL,
	[JobListID] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Apply] PRIMARY KEY CLUSTERED 
(
	[ApplyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserRole] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cate]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cate](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cate] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobList]    Script Date: 4/10/2024 4:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobList](
	[JobListID] [int] IDENTITY(1,1) NOT NULL,
	[CateID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[JobDescription] [nvarchar](max) NOT NULL,
	[Requirement] [nvarchar](max) NOT NULL,
	[Salary] [decimal](18, 2) NOT NULL,
	[Deadline] [datetime2](7) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_JobList] PRIMARY KEY CLUSTERED 
(
	[JobListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240409120803_intialCreate', N'7.0.17')
GO
SET IDENTITY_INSERT [dbo].[Apply] ON 

INSERT [dbo].[Apply] ([ApplyID], [FullName], [Birthday], [Experiment], [Qualification], [Skill], [CV], [JobListID], [ApplicationUserId]) VALUES (1, N'Lưu Văn Chiều', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0 year', N'Bachelor', N'Java, C#, ...', N'https://marketplace.canva.com/EAFYHVf4VeM/1/0/1131w/canva-professional-cv-resume-yrjTFOhxzP8.jpg', 1, N'1a91b853-ab30-48f0-bc07-d15aa7252b8e')
INSERT [dbo].[Apply] ([ApplyID], [FullName], [Birthday], [Experiment], [Qualification], [Skill], [CV], [JobListID], [ApplicationUserId]) VALUES (2, N'Minh Ngoc', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0 year', N'Bachelor', N'Java, C#, ...', N'https://marketplace.canva.com/EAFYHVf4VeM/1/0/1131w/canva-professional-cv-resume-yrjTFOhxzP8.jpg', 3, N'1a91b853-ab30-48f0-bc07-d15aa7252b8e')
INSERT [dbo].[Apply] ([ApplyID], [FullName], [Birthday], [Experiment], [Qualification], [Skill], [CV], [JobListID], [ApplicationUserId]) VALUES (3, N'Minh Ngoc', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0 year', N'Bachelor', N'Java, C#, ...', N'https://marketplace.canva.com/EAFYHVf4VeM/1/0/1131w/canva-professional-cv-resume-yrjTFOhxzP8.jpg', 1, N'1a91b853-ab30-48f0-bc07-d15aa7252b8e')
INSERT [dbo].[Apply] ([ApplyID], [FullName], [Birthday], [Experiment], [Qualification], [Skill], [CV], [JobListID], [ApplicationUserId]) VALUES (7, N'Lưu Văn Chiều', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0 year', N'Bachelor', N'Java, C#, ...', N'https://marketplace.canva.com/EAFYHVf4VeM/1/0/1131w/canva-professional-cv-resume-yrjTFOhxzP8.jpg', 1, N'7aa7fbe1-6b99-451d-aba9-89bad5eda2e4')
INSERT [dbo].[Apply] ([ApplyID], [FullName], [Birthday], [Experiment], [Qualification], [Skill], [CV], [JobListID], [ApplicationUserId]) VALUES (8, N'her', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'0 year', N'Bachelor', N'Java, C#, ...', N'https://marketplace.canva.com/EAFYHVf4VeM/1/0/1131w/canva-professional-cv-resume-yrjTFOhxzP8.jpg', 4, N'1a91b853-ab30-48f0-bc07-d15aa7252b8e')
SET IDENTITY_INSERT [dbo].[Apply] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'HR', N'HR', N'HR', N'HR')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'JobSeeker', N'JobSeeker', N'JobSeeker', N'JobSeeker')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'043db2ae-a33a-471a-8a5f-46fa423ee6a9', N'HR')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4551af41-7ef3-4557-95dd-11983af49f50', N'HR')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1a91b853-ab30-48f0-bc07-d15aa7252b8e', N'JobSeeker')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7aa7fbe1-6b99-451d-aba9-89bad5eda2e4', N'JobSeeker')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserRole]) VALUES (N'043db2ae-a33a-471a-8a5f-46fa423ee6a9', N'mod@gmail.com', N'MOD@GMAIL.COM', N'mod@gmail.com', N'MOD@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEOYr3B2LCqZmI9xznyyxOOCViPnSh7pELgtwk3mvOKv8jyDMPr/slvuUVYfKXpPLbw==', N'OHTWEEJJA25G2TK4CBXUS5SS7PCYZK7U', N'033a997b-276e-4c5e-952d-a81d6453ee1a', NULL, 0, 0, NULL, 1, 0, N'HR')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserRole]) VALUES (N'1a91b853-ab30-48f0-bc07-d15aa7252b8e', N'test1@gmail.com', N'TEST1@GMAIL.COM', N'test1@gmail.com', N'TEST1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEGlWRbnkVDMTYG9A22nl2nX5P2IxRZh2aeJUo5dH67VoLX17GvFT6Tpl1VpLQc82Yw==', N'Q3Y4LFRB4Z57ZIDO5CO5FWXJK44VSLUZ', N'82c88109-d5a3-43e4-9fc8-ca1f2b6707b6', NULL, 0, 0, NULL, 1, 0, N'JobSeeker')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserRole]) VALUES (N'4551af41-7ef3-4557-95dd-11983af49f50', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBShpxgf3BJbLPaIekh0w0em2F99VYisXL9w5nMSEQS8nPm2jwwo5yLx97/3oSyI3Q==', N'SCXZUUWXXNVYWY44EGB3XHMTTT35SV33', N'9200522c-5f39-4a00-bdc8-ec9cb453e946', NULL, 0, 0, NULL, 1, 0, N'HR')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [UserRole]) VALUES (N'7aa7fbe1-6b99-451d-aba9-89bad5eda2e4', N'test2@gmail.com', N'TEST2@GMAIL.COM', N'test2@gmail.com', N'TEST2@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEFvLHjaIu4Q+KGQpeJYwo8bKq+4pvnP1LWOMTxCqGV+ki+5XzeSeFcvATXZcQ7bQ5A==', N'RQAP7ICDK36KCQRXXXSYIVRDBSK3KBRS', N'3eba1a2f-e6b0-4c44-a4d3-d6093511fc99', NULL, 0, 0, NULL, 1, 0, N'JobSeeker')
GO
SET IDENTITY_INSERT [dbo].[Cate] ON 

INSERT [dbo].[Cate] ([CateID], [Title]) VALUES (1, N'UX/UI')
INSERT [dbo].[Cate] ([CateID], [Title]) VALUES (2, N'Java ')
INSERT [dbo].[Cate] ([CateID], [Title]) VALUES (3, N'ASP .Net C#')
SET IDENTITY_INSERT [dbo].[Cate] OFF
GO
SET IDENTITY_INSERT [dbo].[JobList] ON 

INSERT [dbo].[JobList] ([JobListID], [CateID], [Name], [JobDescription], [Requirement], [Salary], [Deadline], [ApplicationUserId]) VALUES (1, 3, N'Job of Admin ', N'abcxyz', N'asdfgh', CAST(5000.00 AS Decimal(18, 2)), CAST(N'0001-02-10T00:00:00.0000000' AS DateTime2), N'4551af41-7ef3-4557-95dd-11983af49f50')
INSERT [dbo].[JobList] ([JobListID], [CateID], [Name], [JobDescription], [Requirement], [Salary], [Deadline], [ApplicationUserId]) VALUES (2, 1, N'Job 2 of Admin ', N'abcxyz', N'asdfgh', CAST(4000.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'4551af41-7ef3-4557-95dd-11983af49f50')
INSERT [dbo].[JobList] ([JobListID], [CateID], [Name], [JobDescription], [Requirement], [Salary], [Deadline], [ApplicationUserId]) VALUES (3, 2, N'Job of Mod (admin)', N'abcxyz', N'asdfgh', CAST(3000.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'043db2ae-a33a-471a-8a5f-46fa423ee6a9')
INSERT [dbo].[JobList] ([JobListID], [CateID], [Name], [JobDescription], [Requirement], [Salary], [Deadline], [ApplicationUserId]) VALUES (4, 1, N'Job 3', N'abcxyz', N'asdfgh', CAST(3000.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'4551af41-7ef3-4557-95dd-11983af49f50')
SET IDENTITY_INSERT [dbo].[JobList] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Apply_ApplicationUserId]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Apply_ApplicationUserId] ON [dbo].[Apply]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Apply_JobListID]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_Apply_JobListID] ON [dbo].[Apply]
(
	[JobListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_JobList_ApplicationUserId]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobList_ApplicationUserId] ON [dbo].[JobList]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobList_CateID]    Script Date: 4/10/2024 4:27:26 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobList_CateID] ON [dbo].[JobList]
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [UserRole]
GO
ALTER TABLE [dbo].[Apply]  WITH CHECK ADD  CONSTRAINT [FK_Apply_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Apply] CHECK CONSTRAINT [FK_Apply_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Apply]  WITH CHECK ADD  CONSTRAINT [FK_Apply_JobList_JobListID] FOREIGN KEY([JobListID])
REFERENCES [dbo].[JobList] ([JobListID])
GO
ALTER TABLE [dbo].[Apply] CHECK CONSTRAINT [FK_Apply_JobList_JobListID]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[JobList]  WITH CHECK ADD  CONSTRAINT [FK_JobList_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobList] CHECK CONSTRAINT [FK_JobList_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[JobList]  WITH CHECK ADD  CONSTRAINT [FK_JobList_Cate_CateID] FOREIGN KEY([CateID])
REFERENCES [dbo].[Cate] ([CateID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobList] CHECK CONSTRAINT [FK_JobList_Cate_CateID]
GO
USE [master]
GO
ALTER DATABASE [Recruitment] SET  READ_WRITE 
GO
