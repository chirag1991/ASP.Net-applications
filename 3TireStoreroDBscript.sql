USE [master]
GO
/****** Object:  Database [3TireStoreroDB]    Script Date: 5/27/2022 4:50:48 PM ******/
CREATE DATABASE [3TireStoreroDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'3TireStoreroDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\3TireStoreroDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'3TireStoreroDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\3TireStoreroDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [3TireStoreroDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [3TireStoreroDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [3TireStoreroDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [3TireStoreroDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [3TireStoreroDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [3TireStoreroDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [3TireStoreroDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET RECOVERY FULL 
GO
ALTER DATABASE [3TireStoreroDB] SET  MULTI_USER 
GO
ALTER DATABASE [3TireStoreroDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [3TireStoreroDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [3TireStoreroDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [3TireStoreroDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [3TireStoreroDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'3TireStoreroDB', N'ON'
GO
ALTER DATABASE [3TireStoreroDB] SET QUERY_STORE = OFF
GO
USE [3TireStoreroDB]
GO
/****** Object:  Table [dbo].[tbl_userInfo]    Script Date: 5/27/2022 4:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_userInfo](
	[Id] [bigint] IDENTITY(1000,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Address] [nvarchar](50) NULL,
	[EmailID] [nvarchar](50) NULL,
	[MobileNumber] [varchar](10) NULL,
 CONSTRAINT [PK_tbl_userInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_UserInfo]    Script Date: 5/27/2022 4:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsert_UserInfo]
	@Name NVARCHAR(100) = NULL,
	@Address NVARCHAR(50) = NULL,
	@EmailID NVARCHAR(50) = NULL,
	@MobileNumber NVARCHAR(50) = NULL
AS 
BEGIN 
     SET NOCOUNT ON
	Insert into  [dbo].[tbl_userInfo] 
	(
	[Name],      
    [Address],   
    [EmailID],   
    [MobileNumber]
	)

	VALUES 
	(
	@Name,
	@Address,
	@EmailID,
	@MobileNumber
	)
	END
GO
USE [master]
GO
ALTER DATABASE [3TireStoreroDB] SET  READ_WRITE 
GO
