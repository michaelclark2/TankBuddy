USE [master]
GO
/****** Object:  Database [Species]    Script Date: 1/23/2019 1:13:47 PM ******/
CREATE DATABASE [Species]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Species', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Species.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Species_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Species_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Species] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Species].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Species] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Species] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Species] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Species] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Species] SET ARITHABORT OFF 
GO
ALTER DATABASE [Species] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Species] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Species] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Species] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Species] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Species] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Species] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Species] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Species] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Species] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Species] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Species] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Species] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Species] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Species] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Species] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Species] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Species] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Species] SET  MULTI_USER 
GO
ALTER DATABASE [Species] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Species] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Species] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Species] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Species] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Species] SET QUERY_STORE = OFF
GO
USE [Species]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Species]
GO
/****** Object:  Table [dbo].[Fish]    Script Date: 1/23/2019 1:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fish](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommonName] [varchar](200) NOT NULL,
	[ScientificName] [varchar](200) NOT NULL,
	[Family] [varchar](100) NOT NULL,
	[MaxSize] [int] NOT NULL,
	[pHMin] [float] NOT NULL,
	[pHMax] [float] NOT NULL,
	[dHMin] [int] NOT NULL,
	[dHMax] [int] NOT NULL,
	[TempMin] [int] NOT NULL,
	[TempMax] [int] NOT NULL,
	[Reproduction] [varchar](200) NOT NULL,
	[TemperamentSelf] [varchar](200) NOT NULL,
	[TemperamentOthers] [varchar](200) NOT NULL,
	[TankLevel] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Fish] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Fish] ON 
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (25, N'Acara', N'Aequidens diadema', N'Syngnathidae', 12, 6.6, 7.5, 8, 20, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (26, N'Acara cichlid', N'Aequidens rondoni', N'Cichlidae', 11, 6.3, 7, 6, 16, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (27, N'Acre corydoras', N'Corydoras acrensis', N'Callichthyidae', 5, 6.4, 7.4, 2, 21, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (28, N'Adolfo''s cory', N'Corydoras adolfoi', N'Callichthyidae', 5, 5.5, 7.5, 4, 18, 19, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (29, N'Adonis pleco', N'Acanthicus adonis', N'Loricariidae', 25, 6, 7, 5, 14, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (30, N'Afra', N'Cynotilapia afra', N'Cichlidae', 12, 7.5, 8.9, 10, 25, 22, 27, N'Spawning', N'peaceful to females', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (31, N'African butterfly cichlid', N'Anomalochromis thomasi', N'Cichlidae', 5, 6, 8, 5, 15, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (32, N'African butterfly fish', N'Pantodon buchholzi', N'Pantodontidae', 10, 6, 7.5, 4, 12, 23, 30, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (33, N'African leaffish', N'Polycentropsis abbreviata', N'Nandidae', 8, 6.3, 6.3, 5, 12, 25, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (34, N'African moon tetra', N'Bathyaethiops caudomaculatus', N'Alestidae', 9, 6.4, 7, 5, 15, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (35, N'African snakehead', N'Parachanna obscura', N'Channidae', 35, 6.5, 7.5, 4, 12, 25, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (36, N'African spotscale barb', N'Barbus holotaenia', N'Cyprinidae', 12, 6, 6.5, 4, 12, 23, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (37, N'Agassiz''s dwarf cichlid', N'Apistogramma agassizii', N'Cichlidae', 8, 6, 7, 4, 12, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (38, N'Agassizii''s cory', N'Corydoras agassizii', N'Callichthyidae', 7, 6, 8, 2, 25, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (39, N'Akar betta', N'Betta akarensis', N'Osphronemidae', 14, 5.5, 6.8, 10, 16, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (40, N'Albertini corydoras', N'Corydoras pantanalensis', N'Callichthyidae', 9, 6.3, 7.2, 1, 15, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (41, N'Altum angelfish', N'Pterophyllum altum', N'Cichlidae', 15, 4.5, 7, 0, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (42, N'Amazon pufferfish', N'Colomesus asellus', N'Tetraodontidae', 14, 5.9, 8, 3, 17, 24, 27, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (43, N'Amazon sailfin catfish', N'Pterygoplichthys pardalis', N'Loricariidae', 46, 4.1, 8.9, 6, 21, 22, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (44, N'Amazon whiptail catfish', N'Farlowella amazonum', N'Loricariidae', 24, 6.4, 7.3, 4, 15, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (45, N'Amiets lyretail', N'Fundulopanchax amieti', N'Nothobranchiidae', 7, 5.8, 7.2, 12, 30, 22, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (46, N'Angel squeaker', N'Synodontis angelicus', N'Mochokidae', 30, 6, 8, 6, 19, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (47, N'Angelfish', N'Pterophyllum leopoldi', N'Cichlidae', 6, 6.2, 7.8, 6, 16, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (48, N'Angelfish', N'Pterophyllum scalare', N'Cichlidae', 15, 5.3, 7.6, 0, 18, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (49, N'Archer fish', N'Toxotes jaculatrix', N'Toxotidae', 25, 7, 8, 12, 18, 25, 30, N'Spawning', N'aggressive/territorial', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (50, N'Argentine humphead', N'Gymnogeophagus balzanii', N'Cichlidae', 20, 6, 8, 5, 19, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (51, N'Arulius barb', N'Dawkinsia arulius', N'Cyprinidae', 12, 6, 7.5, 8, 12, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (52, N'Asian bumblebee catfish', N'Pseudomystus siamensis', N'Bagridae', 15, 6.6, 7.2, 4, 21, 20, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (53, N'Atlantic mudskipper', N'Periophthalmus barbarus', N'Gobiidae', 25, 8, 8.5, 12, 20, 25, 30, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (54, N'Aurora cichlid', N'Maylandia aurora', N'Cichlidae', 11, 7.5, 8.8, 12, 25, 24, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (55, N'Australian rainbowfish', N'Melanotaenia fluviatilis', N'Melanotaeniidae', 11, 6.5, 7.5, 4, 14, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (56, N'Azure hap', N'Sciaenochromis fryeri', N'Cichlidae', 13, 7, 8.3, 10, 24, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (57, N'Azureus', N'Copadichromis azureus', N'Cichlidae', 18, 7, 8, 5, 15, 25, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (58, N'Badis', N'Badis badis', N'Badidae', 8, 6.5, 7.5, 6, 18, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (59, N'Bailey''s puffer', N'Tetraodon baileyi', N'Tetraodontidae', 12, 6.7, 7.4, 4, 20, 23, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (60, N'Bala shark', N'Balantiocheilos melanopterus', N'Cyprinidae', 40, 5.8, 7.9, 4, 12, 22, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (61, N'Banded banjo', N'Platystacus cotylephorus', N'Aspredinidae', 32, 6.7, 8.2, 12, 24, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (62, N'Banded cichlid', N'Heros notatus', N'Cichlidae', 35, 6, 7, 0, 8, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (63, N'Banded dwarf cichlid', N'Apistogramma bitaeniata', N'Cichlidae', 5, 5, 6, 2, 8, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (64, N'Banded gourami', N'Colisa fasciata', N'Osphronemidae', 12, 6, 7.5, 4, 15, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (65, N'Banded jewel cichlid', N'Hemichromis elongatus', N'Cichlidae', 17, 7, 8.1, 7, 20, 22, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (66, N'Banded mountain loach', N'Acanthocobitis urophthalmus', N'Nemacheilidae', 5, 6.5, 7.5, 4, 18, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (67, N'Banded panchax', N'Pseudepiplatys annulatus', N'Nothobranchiidae', 5, 6.6, 7.2, 4, 15, 22, 24, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (68, N'Bandit corydoras', N'Corydoras metae', N'Callichthyidae', 6, 6, 8, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (69, N'Banjo', N'Aspredo aspredo', N'Aspredinidae', 40, 6.8, 8.2, 4, 20, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (70, N'Banjo catfish', N'Bunocephalus coracoideus', N'Aspredinidae', 15, 6, 8, 5, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (71, N'Bannertail corydoras', N'Corydoras robinae', N'Callichthyidae', 5, 6.3, 7.7, 5, 18, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (72, N'Basket hap', N'Mylochromis lateristriga', N'Cichlidae', 22, 7.2, 8.3, 9, 28, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (73, N'Bengal danio', N'Devario devario', N'Cyprinidae', 10, 6.2, 7, 5, 20, 20, 25, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (74, N'Bengal loach', N'Botia dario', N'Cobitidae', 15, 6.5, 7.5, 8, 12, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (75, N'Betta balunga', N'Betta balunga', N'Osphronemidae', 14, 5.2, 7, 8, 16, 21, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (76, N'Betta fusca', N'Betta fusca', N'Osphronemidae', 12, 5.5, 7, 10, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (77, N'Biskop-tandkarpe', N'Brachyrhaphis episcopi', N'Poeciliidae', 5, 6, 8, 4, 12, 24, 28, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (78, N'Black arowana', N'Osteoglossum ferreirai', N'Osteoglossidae', 100, 5, 7, 0, 12, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (79, N'Black band catfish', N'Corydoras zygatus', N'Callichthyidae', 7, 6.2, 7.2, 6, 19, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (80, N'Black banded leporinus', N'Leporinus fasciatus', N'Anostomidae', 30, 5.5, 7.5, 4, 18, 23, 29, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (81, N'Black banded rainbowfish', N'Melanotaenia nigrans', N'Melanotaeniidae', 11, 5.5, 7, 4, 13, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (82, N'Black belt cichlid', N'Vieja maculicauda', N'Cichlidae', 30, 7, 8, 12, 20, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (83, N'Black fin cory', N'Corydoras leucomelas', N'Callichthyidae', 5, 6.8, 7.5, 8, 20, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (84, N'Black ghost', N'Apteronotus albifrons', N'Apteronotidae', 50, 6, 8, 4, 12, 23, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (85, N'Black neon tetra', N'Hyphessobrycon herbertaxelrodi', N'Characidae', 4, 5.6, 7.4, 0, 18, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (86, N'Black pacu', N'Colossoma macropomum', N'Serrasalmidae', 100, 6.5, 7, 4, 18, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (87, N'Black peru corydoras', N'Corydoras semiaquilus', N'Callichthyidae', 6, 6.5, 7, 3, 16, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (88, N'Black phantom tetra', N'Hyphessobrycon megalopterus', N'Characidae', 5, 6, 7.5, 12, 20, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (89, N'Black shark', N'Labeo chrysophekadion', N'Cyprinidae', 90, 6.4, 7.6, 9, 18, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (90, N'Black skirt tetra', N'Gymnocorymbus ternetzi', N'Characidae', 4, 5.9, 8.3, 4, 18, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (91, N'Black-lined loach', N'Yasuhikotakia nigrolineata', N'Botiidae', 8, 6.5, 7.5, 7, 18, 20, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (92, N'Black-spot barb', N'Puntius filamentosus', N'Cyprinidae', 15, 6, 7, 5, 10, 20, 24, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (93, N'Blackstripe dwarf cichlid', N'Apistogramma gibbiceps', N'Cichlidae', 5, 6, 7, 3, 8, 25, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (94, N'Bleeding heart tetra', N'Hyphessobrycon erythrostigma', N'Characidae', 6, 5.5, 7.3, 4, 12, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (95, N'Bleher''s rainbowfish', N'Chilatherina bleheri', N'Melanotaeniidae', 12, 7, 8, 8, 16, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (96, N'Blind cave tetra', N'Astyanax jordani', N'Characidae', 8, 6, 7, 18, 30, 20, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (97, N'Bloodfin tetra', N'Aphyocharax alburnus', N'Characidae', 8, 6.5, 7.5, 8, 18, 20, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (98, N'Bloodfin tetra', N'Aphyocharax anisitsi', N'Characidae', 5, 6, 8, 12, 18, 18, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (99, N'Blue acara', N'Aequidens pulcher', N'Cichlidae', 20, 6.5, 8, 4, 25, 18, 23, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (100, N'Blue band mouthbrooder', N'Betta enisae', N'Osphronemidae', 9, 5.3, 6.9, 2, 15, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (101, N'Blue cheek dwarf cichlid', N'Apistogramma eunotus', N'Cichlidae', 6, 6.8, 7.5, 5, 19, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (102, N'Blue cobalt cichlid', N'Maylandia callainos', N'Cichlidae', 8, 7, 8.4, 10, 26, 23, 25, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (103, N'Blue cory', N'Corydoras nattereri', N'Callichthyidae', 7, 6.5, 7.8, 4, 15, 20, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (104, N'Blue discus', N'Symphysodon aequifasciata haraldi', N'Cichlidae', 15, 5.5, 7.5, 0, 8, 27, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (105, N'Blue electric cichlid', N'Melanochromis johannii', N'Cichlidae', 12, 7.4, 8.9, 10, 25, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (106, N'Blue emperor tetra', N'Inpaichthys kerri', N'Characidae', 3, 6.5, 7.5, 4, 12, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (107, N'Blue eyed pleco', N'Panaque cochliodon', N'Loricariidae', 31, 6.5, 7.6, 5, 17, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (108, N'Blue eyed pleco', N'Panaque suttoni', N'Loricariidae', 45, 6, 7, 2, 12, 21, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (109, N'Blue eyed tropheus', N'Tropheus brichardi', N'Cichlidae', 12, 7, 8.5, 8, 20, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (110, N'Blue flash', N'Thorichthys aureus', N'Cichlidae', 15, 7, 7.7, 5, 17, 24, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (111, N'Blue goldtip cichlid', N'Ophthalmotilapia ventralis', N'Cichlidae', 15, 7.4, 8, 7, 25, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (112, N'Blue gourami', N'Trichogaster trichopterus', N'Osphronemidae', 13, 6, 8, 4, 18, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (113, N'Blue gularis', N'Fundulopanchax sjostedti', N'Nothobranchiidae', 13, 6, 7.5, 4, 18, 22, 26, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (114, N'Blue johanni', N'Melanochromis cyaneorhabdos', N'Cichlidae', 8, 7.4, 8.5, 9, 27, 23, 27, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (115, N'Blue loach', N'Botia modesta', N'Cobitidae', 24, 6.5, 8, 4, 12, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (116, N'Blue lyretail', N'Fundulopanchax gardneri gardneri', N'Nothobranchiidae', 6, 6.5, 7.5, 6, 19, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (117, N'Blue mbuna', N'Labeotropheus fuelleborni', N'Cichlidae', 18, 7.5, 8.8, 12, 30, 21, 28, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (118, N'Blue Neon', N'Paracyprichromis nigripinnis', N'Cichlidae', 11, 8, 8.5, 11, 20, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (119, N'Blue panda apisto', N'Apistogramma panduro', N'Cichlidae', 5, 5, 7, 2, 8, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (120, N'Blue sheatfish', N'Kryptopterus cryptopterus', N'Siluridae', 21, 6.3, 6.9, 8, 16, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (121, N'Blue tetra', N'Boehlkea fredcochui', N'Characidae', 5, 6, 7, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (122, N'Blue-barred barb', N'Barbus fasciolatus', N'Cyprinidae', 7, 6, 6.5, 8, 12, 23, 25, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (123, N'Blue-eye cichlid', N'Archocentrus spilurus', N'Cichlidae', 12, 6.7, 7.6, 7, 21, 21, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (124, N'Bluemouth cichlid', N'Amphilophus nourissati', N'Cichlidae', 23, 7, 7.7, 7, 21, 25, 29, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (125, N'Bluespotted corydoras', N'Corydoras melanistius', N'Callichthyidae', 6, 6.4, 7.4, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (126, N'Blunthead cichlid', N'Tropheus moorii', N'Cichlidae', 14, 8, 8.9, 9, 19, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (127, N'Boesemani rainbowfish', N'Melanotaenia boesemani', N'Melanotaeniidae', 15, 7, 8, 8, 18, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (128, N'Bolivian cichlid', N'Cichlasoma boliviense', N'Cichlidae', 11, 6.5, 7.7, 5, 16, 23, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (129, N'Bolivian ram', N'Mikrogeophagus altispinosus', N'Cichlidae', 8, 6.4, 7.5, 4, 13, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (130, N'Bond''s catfish', N'Corydoras bondi', N'Callichthyidae', 6, 6.5, 7.2, 8, 14, 20, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (131, N'Brevis shelldweller', N'Neolamprologus brevis', N'Cichlidae', 8, 7.5, 8.5, 10, 20, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (132, N'Brichard''s chalinochromis', N'Chalinochromis brichardi', N'Cichlidae', 12, 8, 8.9, 9, 19, 24, 27, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (133, N'Brichard''s slender cichlid', N'Teleogramma brichardi', N'Cichlidae', 15, 6, 7, 7, 11, 20, 23, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (134, N'Brichard''s synodontis', N'Synodontis brichardi', N'Mochokidae', 15, 6, 8, 6, 19, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (135, N'Bristlenose catfish', N'Ancistrus cirrhosus', N'Loricariidae', 15, 5.8, 7.6, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (136, N'Bristlenose catfish', N'Ancistrus sp.', N'Loricariidae', 12, 5.8, 7.8, 4, 18, 21, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (137, N'Bristlenose pleco', N'Ancistrus triradiatus', N'Loricariidae', 12, 6.2, 7.7, 4, 18, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (138, N'Brittan''s rasbora', N'Rasbora brittani', N'Cyprinidae', 5, 6.2, 7, 3, 15, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (139, N'Bronze cory', N'Corydoras aeneus', N'Callichthyidae', 8, 5.8, 7.7, 4, 12, 22, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (140, N'Bronze puffer', N'Xenopterus naritus', N'Tetraodontidae', 29, 6.9, 7.5, 5, 24, 24, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (141, N'Brown bullhead', N'Ameiurus nebulosus', N'Ictaluridae', 58, 6.3, 7.5, 5, 21, 15, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (142, N'Brown hoplo', N'Hoplosternum littorale', N'Callichthyidae', 20, 6.5, 7.5, 6, 22, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (143, N'Brown julie', N'Julidochromis dickfeldi', N'Cichlidae', 10, 7.8, 8.9, 18, 30, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (144, N'Brown pencilfish', N'Nannostomus eques', N'Lebiasinidae', 6, 6, 7.8, 4, 14, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (145, N'Brown''s betta', N'Betta brownorum', N'Osphronemidae', 6, 4.5, 6, 0, 8, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (146, N'Bucktoothed tetra', N'Exodon paradoxus', N'Characidae', 8, 5.5, 7.5, 0, 18, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (147, N'Buenos aires tetra', N'Hyphessobrycon anisitsi', N'Characidae', 6, 5.5, 7.5, 0, 12, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (148, N'Bulldog pleco', N'Chaetostoma milesi', N'Loricariidae', 13, 6, 8, 5, 19, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (149, N'Bumble bee', N'Pseudotropheus crabro', N'Cichlidae', 10, 7.5, 8, 12, 25, 24, 29, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (150, N'Bumblebee catfish', N'Microglanis iheringi', N'Pseudopimelodidae', 7, 6.4, 7.5, 9, 19, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (151, N'Bumblebee goby', N'Brachygobius xanthozona', N'Gobiidae', 5, 7.5, 8.5, 12, 18, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (152, N'Burmese badis', N'Badis ruber', N'Badidae', 6, 6.5, 7.3, 4, 17, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (153, N'Burmese golden rasbora', N'Microdevario gatesi', N'Cyprinidae', 3, 6.2, 7, 5, 13, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (154, N'Burmese loach', N'Botia histrionica', N'Cobitidae', 11, 6.5, 7.5, 6, 10, 25, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (155, N'Burton''s mouthbreeder', N'Haplochromis burtoni', N'Cichlidae', 15, 8.4, 8.9, 12, 18, 20, 25, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (156, N'Bushymouth catfish', N'Ancistrus dolichopterus', N'Loricariidae', 16, 5.5, 7.8, 4, 30, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (157, N'Bushynose pleco', N'Ancistrus temminckii', N'Loricariidae', 15, 6, 7.3, 4, 18, 21, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (158, N'Butterfly barb', N'Barbus hulstaerti', N'Cyprinidae', 4, 5.8, 6.9, 0, 6, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (159, N'Butterfly pleco', N'Dekeyseria brachyura', N'Loricariidae', 15, 5.5, 7.2, 3, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (160, N'Canara pearlspot', N'Etroplus canarensis', N'Cichlidae', 13, 6.6, 7.3, 6, 15, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (161, N'Candy cane goby', N'Awaous flavus', N'Gobiidae', 9, 6.2, 7.4, 7, 18, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (162, N'Cardinal tetra', N'Paracheirodon axelrodi', N'Characidae', 5, 4.5, 7, 0, 8, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (163, N'Cascarudo', N'Callichthys callichthys', N'Callichthyidae', 17, 5.8, 8.2, 4, 24, 21, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (164, N'Catfish', N'Ancistrus tamboensis', N'Loricariidae', 11, 6.5, 7.4, 6, 20, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (165, N'Celebes rainbowfish', N'Marosatherina ladigesi', N'Telmatherinidae', 7, 7, 8, 12, 18, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (166, N'Ceros tetra', N'Moenkhausia ceros', N'Characidae', 6, 6.5, 7.4, 5, 30, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (167, N'Chameleon cichlid', N'Australoheros facetus', N'Cichlidae', 26, 6.4, 7, 4, 13, 25, 29, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (168, N'Checkerboard cichlid', N'Dicrossus maculatus', N'Cichlidae', 7, 6.2, 7, 5, 16, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (169, N'Checkered barb', N'Puntius oligolepis', N'Cyprinidae', 5, 6, 7.2, 4, 18, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (170, N'Chequerboard cichlid', N'Dicrossus filamentosus', N'Cichlidae', 4, 5.6, 6.7, 4, 11, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (171, N'Cherry barb', N'Puntius titteya', N'Cyprinidae', 5, 6, 7.5, 4, 18, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (172, N'Cherry spot rasbora', N'Rasbora rubrodorsalis', N'Cyprinidae', 4, 6.6, 7.6, 2, 11, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (173, N'Chinese algae eater', N'Gyrinocheilus aymonieri', N'Gyrinocheilidae', 28, 6, 8, 4, 18, 23, 26, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (174, N'Chinese banded shark', N'Myxocyprinus asiaticus', N'Catostomidae', 100, 6.9, 7.8, 4, 20, 16, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (175, N'Chinese hillstream loach', N'Pseudogastromyzon cheni', N'Balitoridae', 7, 6.5, 7.5, 4, 12, 21, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (176, N'Chiseltooth cichlid', N'Cichlasoma bocourti', N'Cichlidae', 20, 6.8, 7.4, 8, 17, 25, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (177, N'Chitande aulonocara', N'Aulonocara ethelwynnae', N'Cichlidae', 8, 7, 8.3, 14, 28, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (178, N'Chocolate cichlid', N'Hypselecara temporalis', N'Cichlidae', 30, 6.4, 7.3, 6, 16, 25, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (179, N'Chocolate gourami', N'Sphaerichthys osphromenoides', N'Osphronemidae', 6, 4.5, 6.5, 0, 8, 25, 30, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (180, N'Chukai betta', N'Betta tussyae', N'Osphronemidae', 5, 5, 6.3, 2, 8, 21, 25, N'Spawning', N'peaceful to females', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (181, N'Climbing perch', N'Anabas testudineus', N'Anabantidae', 25, 7, 8, 5, 19, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (182, N'Clown barb', N'Puntius everetti', N'Cyprinidae', 15, 6.2, 6.8, 7, 17, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (183, N'Clown catfish', N'Gagata cenia', N'Sisoridae', 15, 6.1, 7.1, 6, 16, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (184, N'Clown knifefish', N'Chitala chitala', N'Notopteridae', 100, 5.5, 7, 4, 12, 24, 28, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (185, N'Clown loach', N'Chromobotia macracanthus', N'Cobitidae', 20, 5, 7.5, 4, 18, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (186, N'Clown pleco', N'Panaque maccus', N'Loricariidae', 8, 6.6, 7.8, 4, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (187, N'Cockatoo dwarf cichlid', N'Apistogramma cacatuoides', N'Cichlidae', 9, 6, 7, 4, 18, 25, 29, N'Spawning', N'peaceful to males', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (188, N'Colombian tetra', N'Hyphessobrycon columbianus', N'Characidae', 7, 6.6, 7.2, 5, 18, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (189, N'Columbian tetra', N'Hyphessobrycon ecuadoriensis', N'Characidae', 4, 5.5, 7.5, 0, 18, 21, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (190, N'Common hatchetfish', N'Gasteropelecus sternicla', N'Gastromyzontidae', 7, 5.5, 7.5, 4, 12, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (191, N'Common pleco', N'Hypostomus punctatus', N'Loricariidae', 30, 5, 8, 4, 20, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (192, N'Common whiptail catfish', N'Rineloricaria parva', N'Loricariidae', 12, 6.6, 7.3, 5, 17, 20, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (193, N'Compressed cichlid', N'Altolamprologus compressiceps', N'Cichlidae', 15, 7.8, 8.9, 18, 30, 24, 27, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (194, N'Concolor cory', N'Corydoras concolor', N'Callichthyidae', 6, 6.2, 7.4, 3, 14, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (195, N'Congo barb', N'Barbus callipterus', N'Cyprinidae', 9, 5, 7, 0, 12, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (196, N'Congo ctenopoma', N'Microctenopoma congicum', N'Anabantidae', 9, 6.7, 7.7, 4, 22, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (197, N'Congo puffer', N'Tetraodon miurus', N'Tetraodontidae', 14, 6.7, 7.7, 6, 20, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (198, N'Congo tetra', N'Phenacogrammus interruptus', N'Alestidae', 4, 6, 7.5, 4, 18, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (199, N'Connie''s blue-eye', N'Pseudomugil connieae', N'Pseudomugilidae', 6, 7.5, 8, 12, 18, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (200, N'Convict cichlid', N'Archocentrus nigrofasciatus', N'Cichlidae', 15, 6, 8, 4, 12, 20, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (201, N'Cope''s corydoras', N'Corydoras copei', N'Callichthyidae', 5, 6.4, 7.3, 3, 19, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (202, N'Coral butterfly puffer', N'Tetraodon lineatus', N'Tetraodontidae', 44, 6.6, 7.4, 6, 16, 23, 26, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (203, N'Coral-red dwarf pencilfish', N'Nannostomus mortenthaleri', N'Lebiasinidae', 3, 6.4, 7, 4, 14, 24, 26, N'Spawning', N'peaceful to females', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (204, N'Corydoras c025', N'Corydoras pinheiroi', N'Callichthyidae', 7, 6.2, 7.2, 2, 22, 21, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (205, N'Crimson spot rainbowfish', N'Melanotaenia duboulayi', N'Melanotaeniidae', 9, 6.5, 7.5, 5, 10, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (206, N'Crocodile catfish', N'Bagarius suchus', N'Sisoridae', 71, 6.4, 7, 4, 14, 21, 24, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (207, N'Crossbanded dwarf rasbora', N'Danio erythromicron', N'Cyprinidae', 3, 6.5, 7.6, 3, 13, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (208, N'Cuckoo catfish', N'Synodontis multipunctatus', N'Mochokidae', 15, 8, 8.9, 8, 18, 21, 28, N'Spawning', N'peaceful to males', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (209, N'Cylindricus', N'Neolamprologus cylindricus', N'Cichlidae', 13, 7.8, 8.9, 18, 30, 24, 27, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (210, N'Daffodil', N'Neolamprologus pulcher', N'Cichlidae', 10, 7.1, 8.4, 8, 30, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (211, N'Dainty cory', N'Corydoras habrosus', N'Callichthyidae', 3, 6.2, 7.5, 0, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (212, N'Dash-dot tetra', N'Hemigrammus bellottii', N'Characidae', 4, 6.2, 7.1, 5, 17, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (213, N'Decorated squeaker', N'Synodontis decorus', N'Mochokidae', 30, 6.6, 7.5, 4, 20, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (214, N'Deepwater hap', N'Placidochromis electra', N'Cichlidae', 12, 7, 8, 8, 20, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (215, N'Demason''s cichlid', N'Pseudotropheus demasoni', N'Cichlidae', 8, 8, 8.9, 10, 18, 22, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (216, N'Denison barb', N'Puntius denisonii', N'Cyprinidae', 15, 6.4, 7, 4, 21, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (217, N'Desert rainbowfish', N'Melanotaenia splendida tatei', N'Melanotaeniidae', 10, 6.5, 8, 5, 15, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (218, N'Dewfish', N'Tandanus tandanus', N'Plotosidae', 80, 6.4, 7.5, 10, 18, 15, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (219, N'Diamond tetra', N'Moenkhausia pittieri', N'Characidae', 6, 6, 7, 5, 12, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (220, N'Discus', N'Symphysodon aequifasciata alenquer', N'Cichlidae', 15, 5.5, 7.5, 0, 8, 27, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (221, N'Discus tetra', N'Brachychalcinus orbicularis', N'Characidae', 9, 5.5, 7.5, 6, 20, 18, 24, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (222, N'Dojo loach', N'Misgurnus anguillicaudatus', N'Cobitidae', 25, 6.5, 7.5, 2, 12, 21, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (223, N'Dority''s rainbowfish', N'Glossolepis dorityi', N'Cichlidae', 10, 6.5, 7.8, 12, 16, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (224, N'Dwarf barb', N'Puntius phutunio', N'Cyprinidae', 8, 6.4, 7.1, 4, 12, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (225, N'Dwarf botia', N'Yasuhikotakia sidthimunki', N'Botiidae', 5, 6.5, 7, 4, 12, 25, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (226, N'Dwarf corydoras', N'Corydoras pygmaeus', N'Callichthyidae', 3, 6, 7.8, 4, 20, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (227, N'Dwarf danio', N'Danio nigrofasciatus', N'Cyprinidae', 4, 6.4, 7.4, 6, 16, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (228, N'Dwarf flag cichlid', N'Laetacara curviceps', N'Cichlidae', 5, 6, 7.8, 0, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (229, N'Dwarf gourami', N'Colisa lalia', N'Osphronemidae', 6, 6.5, 8, 4, 18, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (230, N'Dwarf otocinclus', N'Otocinclus affinis', N'Loricariidae', 5, 5.5, 7.5, 4, 18, 20, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (231, N'Dwarf pencilfish', N'Nannostomus marginatus', N'Lebiasinidae', 4, 5.8, 7.3, 14, 20, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (232, N'Dwarf rainbowfish', N'Melanotaenia maccullochi', N'Melanotaeniidae', 7, 5.5, 7.5, 8, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (233, N'Dwarf rasbora', N'Boraras maculatus', N'Cyprinidae', 3, 5, 6.8, 0, 8, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (234, N'Dwarf sucker', N'Otocinclus cocama', N'Loricariidae', 4, 5.3, 7.5, 4, 18, 20, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (235, N'Dwarf suckermouth', N'Otocinclus vittatus', N'Loricariidae', 4, 6, 7.5, 4, 16, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (236, N'Dwarf tanganyikan cichlid', N'Tropheus duboisi', N'Cichlidae', 12, 8.5, 8.9, 10, 16, 24, 26, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (237, N'Earth eater', N'Satanoperca jurupari', N'Cichlidae', 25, 6, 7.8, 4, 18, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (238, N'East coast gray', N'Ptychochromis grandidieri', N'Cichlidae', 24, 5.5, 7, 3, 15, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (239, N'Eastern rainbowfish', N'Melanotaenia splendida splendida', N'Melanotaeniidae', 15, 5, 8.5, 6, 15, 20, 30, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (240, N'Edith''s mouthbrooder', N'Betta edithae', N'Osphronemidae', 9, 5.5, 7.5, 4, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (241, N'Ehrhardt''s cory', N'Corydoras ehrhardti', N'Callichthyidae', 4, 6.4, 7.3, 4, 20, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (242, N'Electric blue hap', N'Sciaenochromis ahli', N'Cichlidae', 20, 7.5, 8.5, 9, 19, 25, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (243, N'Electric yellow cichlid', N'Labidochromis caeruleus', N'Cichlidae', 10, 7, 8.5, 10, 30, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (244, N'Elegant cory', N'Corydoras elegans', N'Callichthyidae', 5, 6, 7.6, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (245, N'Elephant nose', N'Gnathonemus petersii', N'Mormyridae', 20, 6, 7.5, 4, 18, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (246, N'Ember tetra', N'Hyphessobrycon amandae', N'Characidae', 3, 6.5, 7.3, 5, 17, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (247, N'Emerald catfish', N'Brochis splendens', N'Callichthyidae', 6, 6.8, 7.3, 4, 18, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (248, N'Emperor tetra', N'Nematobrycon palmeri', N'Characidae', 5, 6.3, 7.4, 5, 18, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (249, N'Empire gudgeon', N'Hypseleotris compressa', N'Eleotridae', 12, 6.5, 7.4, 3, 11, 20, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (250, N'Endler''s guppy', N'Poecilia wingei', N'Poeciliidae', 3, 6.7, 7.6, 4, 17, 22, 26, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (251, N'Eyespot mouthbrooder', N'Betta ocellata', N'Osphronemidae', 11, 6.3, 7.7, 4, 18, 23, 26, N'Spawning', N'peaceful to females', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (252, N'Fairy cichlid', N'Neolamprologus brichardi', N'Cichlidae', 10, 7.6, 8.9, 12, 18, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (253, N'Fairy cory', N'Corydoras atropersonatus', N'Callichthyidae', 5, 6.3, 7.7, 7, 18, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (254, N'False adolfoi', N'Brachyrhamdia rambarrani', N'Heptapteridae', 7, 6.1, 7, 10, 21, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (255, N'False adolfoi cory', N'Corydoras duplicareus', N'Callichthyidae', 4, 6, 7.6, 5, 19, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (256, N'False bandit cory', N'Corydoras melini', N'Callichthyidae', 6, 6.5, 7.5, 4, 18, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (257, N'False black tetra', N'Gymnocorymbus thayeri', N'Characidae', 5, 6.3, 7.4, 5, 22, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (258, N'False blochi catfish', N'Corydoras delphax', N'Callichthyidae', 5, 6, 7.5, 4, 12, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (259, N'False eightstripe barb', N'Eirmotus octozona', N'Cyprinidae', 4, 6.2, 7.1, 1, 11, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (260, N'False firemouth cichlid', N'Amphilophus robertsoni', N'Cichlidae', 19, 7.2, 8, 10, 18, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (261, N'False julii cory', N'Corydoras trilineatus', N'Callichthyidae', 6, 6, 8, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (262, N'False network cory', N'Corydoras sodalis', N'Callichthyidae', 5, 6.3, 7.2, 10, 20, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (263, N'False rummynose tetra', N'Petitella georgiae', N'Characidae', 5, 5.5, 7, 5, 12, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (264, N'Fang''s puffer', N'Tetraodon cochinchinensis', N'Tetraodontidae', 7, 6.6, 7.5, 5, 20, 23, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (265, N'Featherfin catfish', N'Synodontis eupterus', N'Mochokidae', 22, 6, 7.5, 12, 16, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (266, N'Fenestratus', N'Protomelas fenestratus', N'Cichlidae', 14, 7.5, 8.5, 10, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (267, N'Figure eight puffer', N'Tetraodon biocellatus', N'Tetraodontidae', 9, 6.5, 8, 7, 16, 22, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (268, N'Finger fish', N'Monodactylus argenteus', N'Monodactylidae', 20, 7.2, 8.5, 8, 15, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (269, N'Firebird cichlid', N'Aulonocara hansbaenschi', N'Cichlidae', 10, 7, 8.5, 9, 18, 22, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (270, N'Firefin tetra', N'Hyphessobrycon igneus', N'Characidae', 5, 6.7, 7.4, 3, 15, 21, 24, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (271, N'Firemouth cichlid', N'Thorichthys meeki', N'Cichlidae', 15, 6.6, 8.5, 4, 30, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (272, N'Five-bar cichlid', N'Neolamprologus tretocephalus', N'Cichlidae', 15, 7.8, 8.9, 18, 30, 22, 25, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (273, N'Fiveband barb', N'Puntius pentazona', N'Cyprinidae', 6, 6.1, 7, 4, 13, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (274, N'Flag cichlid', N'Mesonauta festivus', N'Cichlidae', 15, 6.5, 7.5, 18, 30, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (275, N'Flagfish', N'Jordanella floridae', N'Cyprinodontidae', 7, 6.7, 8.2, 12, 18, 19, 23, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (276, N'Flagtail catfish', N'Dianema urostriatum', N'Callichthyidae', 13, 6, 8, 4, 24, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (277, N'Flame tetra', N'Hyphessobrycon flammeus', N'Characidae', 3, 5.8, 7.8, 5, 25, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (278, N'Flier cichlid', N'Archocentrus centrarchus', N'Cichlidae', 20, 7, 8.2, 5, 15, 22, 27, N'Spawning', N'peaceful', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (279, N'Flying fox', N'Epalzeorhynchos kalopterus', N'Cyprinidae', 17, 6.5, 7.2, 4, 12, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (280, N'Forest betta', N'Betta pugnax', N'Osphronemidae', 14, 5.9, 6.5, 4, 12, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (281, N'Forktail rainbowfish', N'Pseudomugil furcatus', N'Pseudomugilidae', 5, 7, 8, 8, 18, 22, 24, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (282, N'Fowler''s cory', N'Corydoras fowleri', N'Callichthyidae', 6, 6.4, 7.2, 5, 19, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (283, N'Frail gourami', N'Ctenops nobilis', N'Osphronemidae', 12, 5.7, 7, 10, 20, 21, 24, N'Spawning', N'peaceful to females', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (284, N'Freshwater garfish', N'Xenentodon cancila', N'Belonidae', 43, 6.9, 7.6, 10, 24, 22, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (285, N'Freshwater stingray', N'Himantura signifer', N'Dasyatidae', 60, 6.3, 7.4, 3, 15, 21, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (286, N'Frontosa cichlid', N'Cyphotilapia frontosa', N'Cichlidae', 30, 7, 8.9, 12, 30, 23, 29, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (287, N'Garnet tetra', N'Hemigrammus pulcher', N'Characidae', 3, 5, 7, 4, 12, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (288, N'Georgett''s tetra', N'Hyphessobrycon georgettae', N'Characidae', 4, 6.3, 7, 4, 17, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (289, N'Ghost catfish', N'Kryptopterus minor', N'Siluridae', 7, 6.4, 7.5, 3, 16, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (290, N'Giant betta', N'Betta anabatoides', N'Osphronemidae', 12, 4.5, 6, 0, 12, 25, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (291, N'Giant brochis', N'Brochis britskii', N'Callichthyidae', 12, 6.7, 7.2, 8, 20, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (292, N'Giant featherback', N'Chitala lopis', N'Notopteridae', 100, 6.2, 7.2, 6, 16, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (293, N'Giant glassfish', N'Parambassis gulliveri', N'Ambassidae', 28, 7, 8, 4, 26, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (294, N'Giant gourami', N'Osphronemus goramy', N'Osphronemidae', 70, 6.5, 8, 4, 25, 20, 30, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (295, N'Giant moth catfish', N'Erethistes pusillus', N'Erethistidae', 8, 6.2, 7, 4, 13, 21, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (296, N'Giant puffer fish', N'Tetraodon mbu', N'Tetraodontidae', 73, 6.6, 7.3, 8, 12, 24, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (297, N'Giant red fin gourami', N'Osphronemus laticlavius', N'Osphronemidae', 50, 6.2, 7.2, 6, 20, 22, 28, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (298, N'Giraffe cichlid', N'Nimbochromis venustus', N'Cichlidae', 25, 7, 8.5, 12, 24, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (299, N'Glass bloodfish', N'Prionobrama filigera', N'Characidae', 6, 5.7, 7.5, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (300, N'Glass catfish', N'Kryptopterus bicirrhis', N'Siluridae', 15, 7, 7.5, 8, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (301, N'Glass goby', N'Gobiopterus chuno', N'Gobiidae', 3, 6.5, 7, 4, 12, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (302, N'Glowlight danio', N'Danio choprai', N'Cyprinidae', 3, 6.3, 7.1, 2, 19, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (303, N'Glowlight tetra', N'Hemigrammus erythrozonus', N'Characidae', 5, 6, 7.5, 4, 18, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (304, N'Goby fish', N'Stigmatogobius sadanundio', N'Gobiidae', 8, 7, 8, 8, 18, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (305, N'Goby pleco', N'Parotocinclus jumbo', N'Loricariidae', 6, 6.3, 7.7, 6, 15, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (306, N'Gold barb', N'Puntius sachsii', N'Cyprinidae', 9, 6, 8, 5, 12, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (307, N'Gold marble bristlenose catfish', N'Ancistrus claro', N'Loricariidae', 9, 6.2, 7.5, 6, 20, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (308, N'Gold nugget pleco', N'Baryancistrus sp. L177', N'Loricariidae', 30, 6.5, 7.5, 2, 14, 26, 30, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (309, N'Gold nugget pleco', N'Baryancistrus sp. L85', N'Loricariidae', 35, 6.5, 7.5, 8, 18, 25, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (310, N'Gold ocellatus', N'Lamprologus ocellatus', N'Cichlidae', 6, 8, 8.9, 9, 19, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (311, N'Gold tetra', N'Hemigrammus rodwayi', N'Characidae', 6, 6, 7, 4, 15, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (312, N'Golden banded goby', N'Brachygobius nunus', N'Gobiidae', 4, 7.5, 8.5, 10, 24, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (313, N'Golden barb', N'Puntius gelius', N'Cyprinidae', 6, 6.3, 7.2, 6, 14, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (314, N'Golden barb', N'Puntius semifasciolatus', N'Cyprinidae', 7, 6, 8, 4, 18, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (315, N'Golden cloud pleco', N'Scobinancistrus pariolispos', N'Loricariidae', 30, 6.4, 7.6, 5, 19, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (316, N'Golden julie', N'Julidochromis ornatus', N'Cichlidae', 9, 7.5, 8.9, 12, 30, 22, 25, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (317, N'Golden vampire pleco', N'Leporacanthicus heterodon', N'Loricariidae', 11, 6.5, 7.4, 4, 12, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (318, N'Goldenbanded goby', N'Brachygobius doriae', N'Gobiidae', 5, 7.2, 8.4, 10, 20, 23, 28, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (319, N'Goldfish', N'Carassius auratus auratus', N'Cyprinidae', 20, 6, 8, 4, 18, 15, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (320, N'Goldie river rainbowfish', N'Melanotaenia goldiei', N'Melanotaeniidae', 12, 7, 8, 8, 16, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (321, N'Goldstripe headstander', N'Anostomus ternetzi', N'Anostomidae', 16, 6.4, 7.2, 5, 16, 23, 29, N'Spawning', N'peaceful', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (322, N'Gomezi corydoras', N'Corydoras gomezi', N'Callichthyidae', 5, 6, 8, 2, 25, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (323, N'Grants peacock cichlid', N'Aulonocara stuartgranti', N'Cichlidae', 11, 7.4, 8.4, 12, 30, 22, 26, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (324, N'Greater scissortail', N'Rasbora caudimaculata', N'Cyprinidae', 17, 6, 6.8, 9, 17, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (325, N'Green chromide', N'Etroplus suratensis', N'Cichlidae', 30, 8, 8.5, 12, 26, 23, 26, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (326, N'Green fire tetra', N'Aphyocharax rathbuni', N'Characidae', 5, 6, 7.5, 8, 20, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (327, N'Green neon tetra', N'Paracheirodon simulans', N'Characidae', 3, 6.4, 7.2, 4, 13, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (328, N'Green phantom pleco', N'Baryancistrus demantoides', N'Loricariidae', 17, 6.5, 7.5, 4, 17, 23, 28, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (329, N'Green pufferfish', N'Tetraodon fluviatilis', N'Tetraodontidae', 17, 5.9, 7.5, 5, 20, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (330, N'Green pufferfish', N'Tetraodon nigroviridis', N'Tetraodontidae', 17, 7.5, 8.5, 12, 18, 23, 28, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (331, N'Green terror cichlid', N'Aequidens rivulatus', N'Cichlidae', 20, 6.5, 7.5, 4, 15, 20, 24, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (332, N'Greenface sandsifter', N'Lethrinops furcifer', N'Cichlidae', 19, 7.5, 8.5, 10, 18, 23, 27, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (333, N'Griems tetra', N'Hyphessobrycon griemi', N'Characidae', 3, 5.8, 7.8, 4, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (334, N'Guapore cory', N'Corydoras guapore', N'Callichthyidae', 5, 6.2, 7.6, 4, 18, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (335, N'Guenther''s mouthbrooder', N'Chromidotilapia guentheri', N'Cichlidae', 14, 6, 8, 5, 19, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (336, N'Guenthers notho', N'Nothobranchius guentheri', N'Nothobranchiidae', 7, 6.5, 8, 4, 12, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (337, N'Gulf saratoga', N'Scleropages jardinii', N'Osteoglossidae', 100, 6.4, 7, 5, 13, 22, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (338, N'Guppy', N'Poecilia reticulata', N'Poeciliidae', 6, 7, 8, 12, 18, 19, 29, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (339, N'Haitian cichlid', N'Nandopsis haitiensis', N'Cichlidae', 23, 6, 7.5, 4, 16, 23, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (340, N'Halfbeak', N'Dermogenys pusilla', N'Zenarchopteridae', 7, 7, 8, 12, 18, 20, 28, N'Pseudo-Livebearer', N'peaceful to females', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (341, N'Halfbeak', N'Hemirhamphodon pogonognathus', N'Zenarchopteridae', 10, 6.2, 7.8, 4, 16, 24, 27, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (342, N'Harlequin rasbora', N'Trigonostigma heteromorpha', N'Cyprinidae', 5, 5, 7, 4, 12, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (343, N'Head and tail light tetra', N'Hemigrammus ocellifer', N'Characidae', 5, 5.5, 7.5, 0, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (344, N'Headstander', N'Leporinus affinis', N'Anostomidae', 24, 5.5, 7.7, 4, 14, 23, 28, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (345, N'Hecq''s shell-dweller', N'Neolamprologus hecqui', N'Cichlidae', 9, 7, 8.4, 8, 28, 22, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (346, N'Hi-spot rasbora', N'Rasbora dorsiocellata', N'Cyprinidae', 7, 6, 7, 0, 10, 20, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (347, N'Highfin dwarf cichlid', N'Apistogramma hoignei', N'Cichlidae', 6, 6.3, 7.1, 5, 15, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (348, N'Highwaterman catfish', N'Hypophthalmus edentatus', N'Pimelodidae', 30, 5.5, 7, 4, 19, 22, 25, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (349, N'Hognosed brochis', N'Brochis multiradiatus', N'Callichthyidae', 8, 6, 7.5, 2, 16, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (350, N'Honduran red point', N'Cryptoheros sp. Honduran Red Point', N'Cichlidae', 14, 7, 8, 4, 14, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (351, N'Honey gourami', N'Trichogaster chuna', N'Osphronemidae', 6, 6, 8, 4, 12, 23, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (352, N'Honeycomb tatia', N'Centromochlus perugiae', N'Auchenipteridae', 6, 6, 8, 8, 12, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (353, N'Hora danio', N'Devario shanensis', N'Cyprinidae', 7, 6.6, 7.3, 3, 16, 21, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (354, N'Horseface Loach', N'Acanthopsoides molobrion', N'Cobitidae', 5, 6, 7.5, 4, 12, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (355, N'Horseface loach', N'Acantopsis choirorhynchos', N'Cobitidae', 30, 6.5, 7.8, 6, 12, 18, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (356, N'Humpback puffer', N'Tetraodon palembangensis', N'Tetraodontidae', 20, 6.9, 7.5, 7, 18, 24, 27, N'Spawning', N'peaceful', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (357, N'Imitator cory', N'Corydoras imitator', N'Callichthyidae', 6, 6.4, 7.7, 4, 19, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (358, N'Indawgyi stream catfish', N'Akysis prashadi', N'Akysidae', 6, 6.5, 7, 2, 11, 19, 23, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (359, N'Indian glassfish', N'Parambassis ranga', N'Ambassidae', 6, 7, 7.5, 10, 20, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (360, N'Inornate rainbowfish', N'Melanotaenia splendida inornata', N'Melanotaeniidae', 15, 6.5, 8, 8, 12, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (361, N'Irian jaya rainbowfish', N'Melanotaenia irianjaya', N'Melanotaeniidae', 10, 6.3, 7.1, 6, 16, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (362, N'Iridescent corydoras', N'Corydoras rabauti', N'Callichthyidae', 6, 6, 8, 4, 20, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (363, N'Isok barb', N'Probarbus jullieni', N'Cyprinidae', 100, 4.1, 8.9, 6, 19, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (364, N'Jack dempsey', N'Cichlasoma octofasciatum', N'Cichlidae', 20, 7, 8.5, 18, 30, 25, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (365, N'Jackson''s ntaka', N'Copadichromis jacksoni', N'Cichlidae', 20, 7.3, 8.5, 9, 28, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (366, N'Jaguar cichlid', N'Parachromis managuensis', N'Cichlidae', 55, 7, 8.7, 10, 15, 25, 30, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (367, N'January tetra', N'Hemigrammus hyanuary', N'Characidae', 5, 5.6, 7.4, 0, 12, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (368, N'Jello band catfish', N'Aguarunichthys torosus', N'Pimelodidae', 36, 6, 7, 4, 16, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (369, N'Jerdon''s baril', N'Barilius canarensis', N'Cyprinidae', 15, 6.4, 7.2, 4, 17, 21, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (370, N'Jewel cichlid', N'Hemichromis bimaculatus', N'Cichlidae', 13, 6, 7.8, 4, 18, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (371, N'Jordans catfish', N'Arius seemani', N'Ariidae', 35, 6.8, 8, 12, 18, 24, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (372, N'Juba cichlid', N'Ptychochromis oligacanthus', N'Cichlidae', 27, 7, 8, 10, 24, 24, 30, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (373, N'Julii cory', N'Corydoras julii', N'Callichthyidae', 4, 6.5, 7.8, 4, 18, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (374, N'Kamaka rainbowfish', N'Melanotaenia kamaka', N'Melanotaeniidae', 7, 7, 7.8, 6, 14, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (375, N'Kapaus betta', N'Betta krataios', N'Osphronemidae', 5, 6.1, 7.4, 6, 17, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (376, N'Kennedy tetra', N'Astyanax kennedyi', N'Characidae', 6, 6.5, 7.2, 6, 16, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (377, N'Kenyi cichlid', N'Pseudotropheus lombardoi', N'Cichlidae', 16, 7.5, 8.9, 12, 25, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (378, N'Keyhole cichlid', N'Cleithracara maronii', N'Cichlidae', 12, 6.8, 8, 12, 30, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (379, N'Kissing gourami', N'Helostoma temminckii', N'Helostomatidae', 30, 6, 7.5, 4, 18, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (380, N'Kitty tetra', N'Hyphessobrycon heliacus', N'Characidae', 3, 6.4, 7, 1, 13, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (381, N'Koi carp', N'Cyprinus carpio carpio', N'Cyprinidae', 100, 7, 7.5, 0, 30, 15, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (382, N'Konye', N'Konia eisentrauti', N'Cichlidae', 10, 6.7, 7.6, 8, 19, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (383, N'Kribensis', N'Pelvicachromis pulcher', N'Cichlidae', 10, 5, 7.5, 0, 12, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (384, N'Kuhli loach', N'Pangio kuhlii', N'Cobitidae', 10, 6.5, 7, 8, 12, 26, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (385, N'Labeo frenatus', N'Epalzeorhynchus frenatus', N'Cyprinidae', 15, 6, 7.5, 4, 12, 23, 29, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (386, N'Lace catfish', N'Synodontis nigrita', N'Mochokidae', 24, 6.7, 7.8, 8, 17, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (387, N'Lake kutubu rainbowfish', N'Melanotaenia lacustris', N'Melanotaeniidae', 13, 7, 8.6, 10, 18, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (388, N'Lake malawi butterfly cichlid', N'Aulonocara jacobfreibergi', N'Cichlidae', 17, 7, 8.5, 10, 25, 24, 27, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (389, N'Lake tebera rainbowfish', N'Melanotaenia herbertaxelrodi', N'Melanotaeniidae', 10, 7, 8, 8, 18, 21, 24, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (390, N'Lambchop rasbora', N'Trigonostigma espei', N'Cyprinidae', 5, 5, 7.5, 2, 10, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (391, N'Largescale foureyes', N'Anableps anableps', N'Anablepidae', 30, 7, 8.1, 9, 24, 23, 28, N'Pseudo-Livebearer', N'peaceful', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (392, N'LDA-33', N'Baryancistrus LDA-33', N'Loricariidae', 25, 6, 8, 8, 18, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (393, N'Lemon cichlid', N'Neolamprologus leleupi', N'Cichlidae', 10, 7.6, 8.9, 18, 30, 23, 26, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (394, N'Lemon spotted green pleco', N'Hemiancistrus subviridis', N'Loricariidae', 18, 6.6, 7.3, 6, 21, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (395, N'Lemon tetra', N'Hyphessobrycon pulchripinnis', N'Characidae', 5, 6, 7.5, 4, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (396, N'Leopard cactus pleco', N'Pseudacanthicus leopardus', N'Loricariidae', 24, 6.1, 7, 4, 13, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (397, N'Leopard cory', N'Corydoras leopardus', N'Callichthyidae', 6, 6, 7.5, 4, 20, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (398, N'Licorice gourami', N'Parosphromenus ornaticauda', N'Osphronemidae', 3, 6, 7, 8, 14, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (399, N'Lifalili cichlid', N'Hemichromis lifalili', N'Cichlidae', 8, 6.5, 7.5, 8, 18, 22, 24, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (400, N'Lionhead cichlid', N'Steatocranus casuarius', N'Cichlidae', 12, 6, 8, 8, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (401, N'Loach', N'Sinibotia superciliaris', N'Cobitidae', 15, 6.4, 7.6, 7, 19, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (402, N'Long-band rasbora', N'Rasbora einthovenii', N'Cyprinidae', 9, 6.5, 7, 4, 10, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (403, N'Longfin tetra', N'Brycinus longipinnis', N'Alestidae', 12, 6, 8, 5, 19, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (404, N'Longnosed cory', N'Corydoras septentrionalis', N'Callichthyidae', 6, 6, 7.7, 4, 16, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (405, N'Longsnout corydoras', N'Corydoras treitlii', N'Callichthyidae', 6, 6.4, 7.1, 5, 20, 20, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (406, N'Longsnout distichodus', N'Distichodus lusosso', N'Distichodontidae', 41, 6.8, 7.5, 5, 17, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (407, N'Loreto tetra', N'Hyphessobrycon loretoensis', N'Characidae', 3, 5.9, 7, 3, 15, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (408, N'Lowland cichlid', N'Herichthys carpintis', N'Cichlidae', 19, 7, 8, 8, 19, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (409, N'Lyre Tail Pleco', N'Acanthicus hystrix', N'Loricariidae', 55, 6, 7.5, 4, 16, 21, 27, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (410, N'Lyretail killifish', N'Aphyosemion australe', N'Nothobranchiidae', 7, 5.5, 7, 2, 10, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (411, N'Macmaster''s dwarf cichlid', N'Apistogramma macmasteri', N'Cichlidae', 6, 6.4, 7.1, 4, 14, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (412, N'Madagascar cichlid', N'Paretroplus damii', N'Cichlidae', 18, 6.2, 7, 2, 13, 22, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (413, N'Madagascar rainbowfish', N'Bedotia geayi', N'Bedotiidae', 12, 7, 7.5, 10, 20, 20, 24, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (414, N'Malabar danio', N'Devario malabaricus', N'Cyprinidae', 15, 6.2, 7.8, 4, 18, 22, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (415, N'Malabar pufferfish', N'Carinotetraodon travancoricus', N'Tetraodontidae', 3, 7, 8, 4, 12, 22, 28, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (416, N'Malawi blue dolphin', N'Cyrtocara moorii', N'Cichlidae', 20, 7.2, 8.8, 10, 18, 24, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (417, N'Malawi eye-biter', N'Dimidiochromis compressiceps', N'Cichlidae', 25, 7.6, 8.6, 9, 19, 23, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (418, N'Malawi golden cichlid', N'Melanochromis auratus', N'Cichlidae', 12, 7.5, 8.9, 10, 25, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (419, N'Malawi shell dweller', N'Pseudotropheus lanisticola', N'Cichlidae', 7, 7.5, 8.8, 12, 25, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (420, N'Many-pointed cichlid', N'Cichlasoma grammodes', N'Cichlidae', 25, 7, 8.1, 9, 21, 24, 29, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (421, N'Many-spotted cory', N'Corydoras polystictus', N'Callichthyidae', 4, 5.7, 7.8, 2, 25, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (422, N'Marakeli cichlid', N'Paratilapia polleni', N'Cichlidae', 28, 6.5, 7.7, 7, 16, 23, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (423, N'Marbled hatchetfish', N'Carnegiella strigata', N'Gasteropelecidae', 5, 5.8, 7.5, 4, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (424, N'Marbled headstander', N'Abramites hypselonotus', N'Anostomidae', 14, 6, 7.5, 2, 18, 22, 28, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (425, N'Marbled livingston''s hap', N'Nimbochromis livingstonii', N'Cichlidae', 25, 7.8, 8.9, 10, 24, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (426, N'Marbled raphael catfish', N'Amblydoras hancockii', N'Doradidae', 16, 6.2, 7.5, 7, 21, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (427, N'Marbled sailfin pleco', N'Pterygoplichthys joselimaianus', N'Loricariidae', 28, 6.5, 7.3, 4, 16, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (428, N'Marbled whiptail', N'Loricaria simillima', N'Loricariidae', 18, 7, 8.5, 8, 18, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (429, N'Marlieri cichlid', N'Julidochromis marlieri', N'Cichlidae', 15, 8, 8.9, 18, 30, 22, 25, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (430, N'Masked julie', N'Julidochromis transcriptus', N'Cichlidae', 7, 8, 8.9, 18, 30, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (431, N'Masquerade corydoras', N'Corydoras simulatus', N'Callichthyidae', 6, 6.3, 7.3, 2, 16, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (432, N'Mayan cichlid', N'Cichlasoma urophthalmus', N'Cichlidae', 41, 6.7, 8, 8, 18, 20, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (433, N'Mbuna cichlid', N'Pseudotropheus fainzilberi', N'Cichlidae', 13, 7.1, 8.5, 10, 22, 21, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (434, N'Mbuna cichlid', N'Melanochromis lepidiadaptes', N'Cichlidae', 10, 7, 8.3, 10, 23, 22, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (435, N'Medusa pleco', N'Ancistrus ranunculus', N'Loricariidae', 14, 6.5, 7.5, 7, 22, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (436, N'Mees'' pimelodid', N'Brachyrhamdia meesi', N'Heptapteridae', 9, 6.4, 7.3, 3, 16, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (437, N'Mekong puffer', N'Tetraodon suvattii', N'Tetraodontidae', 12, 6, 7.5, 7, 20, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (438, N'Mekong tiger perch', N'Datnioides undecimradiatus', N'Datnioididae', 40, 6.3, 7.2, 5, 17, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (439, N'Melon barb', N'Puntius fasciatus', N'Cyprinidae', 15, 6.4, 7.1, 3, 12, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (440, N'Midas cichlid', N'Amphilophus citrinellus', N'Cichlidae', 33, 6.8, 7.5, 10, 30, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (441, N'Midnight peacock', N'Aulonocara hueseri', N'Cichlidae', 9, 8, 8.4, 12, 20, 22, 27, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (442, N'Miguelito corydoras', N'Corydoras virginiae', N'Callichthyidae', 6, 6, 7.3, 2, 21, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (443, N'Millenium corydoras', N'Corydoras spectabilis', N'Callichthyidae', 5, 6.5, 7.4, 5, 20, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (444, N'Mini cory', N'Corydoras nanus', N'Callichthyidae', 5, 6, 8, 2, 25, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (445, N'Moonlight gourami', N'Trichogaster microlepis', N'Osphronemidae', 13, 6, 7, 4, 18, 26, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (446, N'Morse barb', N'Barbus sublineatus', N'Cyprinidae', 10, 6.7, 7.7, 11, 21, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (447, N'Mosaic corydoras', N'Corydoras haraldschultzi', N'Callichthyidae', 7, 6.2, 7.7, 2, 21, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (448, N'Mosquito fish', N'Gambusia affinis', N'Poeciliidae', 4, 6, 8, 4, 19, 21, 26, N'Pseudo-Livebearer', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (449, N'Mosquito rasbora', N'Boraras brigittae', N'Cyprinidae', 4, 6.3, 7, 5, 14, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (450, N'Mottled loach', N'Acanthocobitis botia', N'Nemacheilidae', 11, 6, 7.5, 10, 18, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (451, N'Multiradiatus pleco', N'Liposarcus multiradiatus', N'Loricariidae', 50, 6.5, 7.5, 4, 12, 23, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (452, N'Mustax', N'Neolamprologus mustax', N'Cichlidae', 10, 7.8, 8.9, 8, 17, 23, 26, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (453, N'Myanmar botia', N'Botia kubotai', N'Cobitidae', 15, 6.3, 7.3, 4, 12, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (454, N'N/A', N'Abramites eques', N'Anostomidae', 15, 6.5, 7, 4, 16, 22, 26, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (455, N'N/A', N'Neolamprologus bifasciatus', N'Cichlidae', 11, 7.4, 8.6, 10, 23, 24, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (456, N'N/A', N'Neolamprologus caudopunctatus', N'Cichlidae', 7, 7.5, 8.5, 10, 18, 23, 25, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (457, N'N/A', N'Neolamprologus helianthus', N'Cichlidae', 6, 7, 8, 7, 25, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (458, N'N/A', N'Aequidens patricki', N'Cichlidae', 13, 6, 6.9, 3, 13, 21, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (459, N'N/A', N'Crenicichla compressiceps', N'Cichlidae', 7, 6, 7.5, 8, 20, 23, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (460, N'N/A', N'Oxyropsis acutirostra', N'Loricariidae', 6, 6.2, 7, 6, 20, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (461, N'N/A', N'Dasyloricaria filamentosa', N'Loricariidae', 20, 5, 7, 6, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (462, N'N/A', N'Ectodus descampsii', N'Cichlidae', 11, 7.5, 8.9, 10, 18, 24, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (463, N'N/A', N'Pelmatochromis nigrofasciatus', N'Cichlidae', 12, 6, 7.1, 2, 12, 22, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (464, N'N/A', N'Euchilichthys guentheri', N'Mochokidae', 19, 6.5, 7.2, 12, 20, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (465, N'N/A', N'Archocentrus nanoluteus', N'Cichlidae', 6, 7.1, 8.1, 11, 28, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (466, N'N/A', N'Garra flavatra', N'Cyprinidae', 7, 6.2, 7.2, 5, 17, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (467, N'N/A', N'Aspidoras taurus', N'Callichthyidae', 6, 6.8, 7.3, 6, 15, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (468, N'N/A', N'Geophagus iporangensis', N'Cichlidae', 11, 6.4, 7, 3, 10, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (469, N'N/A', N'Aulonocara maulana', N'Cichlidae', 10, 8, 8.5, 12, 18, 23, 29, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (470, N'N/A', N'Gogangra viridescens', N'Sisoridae', 10, 6.1, 7.2, 6, 18, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (471, N'N/A', N'Aulonocranus dewindti', N'Cichlidae', 14, 7.8, 8.8, 10, 20, 24, 26, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (472, N'N/A', N'Badis blosyrus', N'Badidae', 5, 6.3, 7, 8, 15, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (473, N'N/A', N'Haplochromis phenochilus', N'Cichlidae', 17, 7, 8.1, 10, 23, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (474, N'N/A', N'Hemigrammus aereus', N'Characidae', 3, 6.3, 7.1, 6, 14, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (475, N'N/A', N'Benitochromis conjunctus', N'Cichlidae', 7, 6.9, 7.5, 5, 17, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (476, N'N/A', N'Betta breviobesus', N'Osphronemidae', 7, 6.6, 7.3, 5, 21, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (477, N'N/A', N'Schistura spilota', N'Nemacheilidae', 9, 6.5, 7.1, 4, 15, 21, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (478, N'N/A', N'Hypostomus luteus', N'Loricariidae', 32, 6.5, 7.4, 3, 17, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (479, N'N/A', N'Cichla monoculus', N'Cichlidae', 70, 6, 7.5, 3, 12, 25, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (480, N'N/A', N'Lamprologus kungweensis', N'Cichlidae', 8, 7.5, 8.1, 15, 30, 23, 27, N'Spawning', N'peaceful to males', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (481, N'N/A', N'Corydoras armatus', N'Callichthyidae', 5, 6.3, 7.2, 3, 18, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (482, N'N/A', N'Corydoras aurofrenatus', N'Callichthyidae', 6, 6.4, 7.5, 3, 19, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (483, N'N/A', N'Vieja fenestrata', N'Cichlidae', 30, 7.2, 8.4, 11, 23, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (484, N'N/A', N'Xenotilapia leptura', N'Cichlidae', 11, 7.2, 7.8, 13, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (485, N'N/A', N'Microphis brachyurus aculeatus', N'Syngnathidae', 20, 7, 8, 12, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (486, N'N/A', N'Corydoras narcissus', N'Callichthyidae', 7, 6.7, 7.2, 3, 19, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (487, N'N/A', N'Mystus multiradiatus', N'Bagridae', 13, 6.5, 7.3, 6, 15, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (488, N'N/A', N'Mystus wolffii', N'Bagridae', 22, 6.4, 7.8, 8, 20, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (489, N'N/A', N'Flowerhorn', N'N/A', 28, 7, 7.5, 6, 25, 25, 30, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (490, N'N/A', N'Blood parrot cichlid', N'N/A', 20, 6.4, 7, 3, 16, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (491, N'Napo corydoras', N'Corydoras napoensis', N'Callichthyidae', 5, 6, 8, 4, 20, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (492, N'Napo tetra', N'Moenkhausia naponis', N'Characidae', 5, 6.4, 7, 6, 19, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (493, N'Narrowfront tandan', N'Neosilurus ater', N'Plotosidae', 50, 6.2, 7, 6, 13, 21, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (494, N'Neon rainbowfish', N'Melanotaenia praecox', N'Melanotaeniidae', 5, 7, 8, 8, 18, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (495, N'Neon tetra', N'Paracheirodon innesi', N'Characidae', 4, 5.5, 5.5, 0, 18, 20, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (496, N'New Guinea rainbowfish', N'Melanotaenia affinis', N'Melanotaeniidae', 13, 6.1, 7.2, 3, 16, 21, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (497, N'New guinea tigerfish', N'Datnioides campbelli', N'Datnioididae', 40, 7, 8, 15, 25, 23, 26, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (498, N'Nichols'' dwarf mouthbrooder', N'Pseudocrenilabrus nicholsi', N'Cichlidae', 9, 6, 8, 8, 18, 22, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (499, N'Nijssen''s cory', N'Corydoras nijsseni', N'Callichthyidae', 4, 6.5, 7.5, 4, 15, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (500, N'Norbert''s dwarf cichlid', N'Apistogramma norberti', N'Cichlidae', 7, 6.1, 7, 0, 7, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (501, N'Nyasa peacock', N'Aulonocara nyassae', N'Cichlidae', 8, 7.8, 8.5, 10, 25, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (502, N'Oaxaca cichlid', N'Vieja zonata', N'Cichlidae', 26, 7, 8.1, 7, 24, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (503, N'Ocellate river stingray', N'Potamotrygon motoro', N'Potamotrygonidae', 100, 5, 6, 0, 10, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (504, N'Ocellated synodontis', N'Synodontis ocellifer', N'Mochokidae', 50, 6.5, 7.8, 4, 15, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (505, N'Olivegreen ufipa barb', N'Barbus olivaceus', N'Cyprinidae', 5, 6.5, 7.5, 6, 16, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (506, N'One spot squeaker', N'Synodontis notatus', N'Mochokidae', 25, 6, 7.5, 4, 12, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (507, N'Onebanded neolebias', N'Neolebias unifasciatus', N'Distichodontidae', 5, 6, 7.1, 1, 9, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (508, N'Orange finned danio', N'Danio kyathit', N'Cyprinidae', 4, 6.3, 7.1, 3, 19, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (509, N'Orange spot pleco', N'Panaque albomaculatus', N'Loricariidae', 13, 6.3, 7.1, 5, 20, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (510, N'Orangestriped squeaker', N'Synodontis flavitaeniatus', N'Mochokidae', 19, 6.6, 7.7, 4, 21, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (511, N'Orinoco eartheater', N'Biotodoma wavrini', N'Cichlidae', 11, 6.4, 7.2, 6, 19, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (512, N'Orinoco piranha', N'Pygocentrus cariba', N'Serrasalmidae', 28, 6.2, 7, 6, 20, 23, 28, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (513, N'Ornate cory', N'Corydoras ornatus', N'Callichthyidae', 6, 6, 7.5, 4, 18, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (514, N'Ornate pimelodus', N'Pimelodus ornatus', N'Pimelodidae', 32, 6.4, 7.3, 6, 20, 24, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (515, N'Oscar fish', N'Astronotus ocellatus', N'Cichlidae', 40, 6.5, 6.5, 4, 18, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (516, N'Pacific blue-eye', N'Pseudomugil signifer', N'Pseudomugilidae', 5, 5.5, 7.8, 5, 15, 21, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (517, N'Palespotted corydoras', N'Corydoras gossei', N'Callichthyidae', 6, 6, 7.5, 2, 25, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (518, N'Panchax', N'Epiplatys esekanus', N'Nothobranchiidae', 7, 5, 6.5, 0, 12, 20, 24, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (519, N'Panda cory', N'Corydoras panda', N'Callichthyidae', 4, 5.8, 7.8, 4, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (520, N'Panda dwarf cichlid', N'Apistogramma nijsseni', N'Cichlidae', 8, 5, 7, 2, 15, 23, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (521, N'Panda tetra', N'Aphyocharax paraguayensis', N'Characidae', 4, 6.5, 7.2, 5, 15, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (522, N'Pantano cichlid', N'Herichthys pearsei', N'Cichlidae', 22, 7.2, 8, 4, 15, 24, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (523, N'Para pleco', N'Peckoltia sabaji', N'Loricariidae', 25, 6.4, 7.5, 5, 13, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (524, N'Paradise fish', N'Macropodus opercularis', N'Osphronemidae', 10, 6.8, 8, 4, 18, 16, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (525, N'Parallel striped mbuna', N'Melanochromis parallelus', N'Cichlidae', 13, 7.5, 8.9, 10, 25, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (526, N'Parkinsoni rainbowfish', N'Melanotaenia parkinsoni', N'Melanotaeniidae', 11, 7, 8, 8, 18, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (527, N'Parrot cichlid', N'Hoplarchus psittacus', N'Cichlidae', 33, 5.5, 6.5, 2, 12, 25, 30, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (528, N'Pastaza corydoras', N'Corydoras pastazensis', N'Callichthyidae', 6, 6.2, 7.2, 3, 16, 21, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (529, N'Pastel cichlid', N'Amphilophus alfari', N'Cichlidae', 22, 6.6, 7.4, 4, 16, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (530, N'Peaceful betta', N'Betta imbellis', N'Osphronemidae', 7, 6, 7.3, 6, 20, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (531, N'Peacock bass', N'Cichla ocellaris', N'Cichlidae', 74, 6.4, 7.5, 7, 20, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (532, N'Peacock eel', N'Macrognathus siamensis', N'Mastacembelidae', 31, 6.3, 7.3, 7, 15, 22, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (533, N'Peacock gudgeon', N'Tateurndina ocellicauda', N'Eleotridae', 8, 6, 8, 6, 12, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (534, N'Pearl cichlid', N'Geophagus brasiliensis', N'Cichlidae', 30, 6.6, 7.3, 5, 19, 21, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (535, N'Pearl danio', N'Danio albolineatus', N'Cyprinidae', 7, 6.1, 7.9, 4, 18, 20, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (536, N'Pearl gourami', N'Trichogaster leeri', N'Osphronemidae', 12, 6.5, 7.5, 4, 18, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (537, N'Penguin flying fox', N'Crossocheilus nigriloba', N'Cyprinidae', 14, 6.4, 7.2, 5, 18, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (538, N'Penguin tetra', N'Thayeria boehlkei', N'Characidae', 8, 5.5, 7, 4, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (539, N'Peppered corydoras', N'Corydoras paleatus', N'Callichthyidae', 8, 6, 8, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (540, N'Peruvian panther pleco', N'Hypancistrus sp. L174', N'Loricariidae', 9, 6, 8, 10, 18, 25, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (541, N'Piabuco tetra', N'Piabucus dentatus', N'Iguanodectidae', 18, 6.4, 7.3, 6, 20, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (542, N'Pictus catfish', N'Pimelodus pictus', N'Pimelodidae', 12, 6.5, 7.5, 4, 18, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (543, N'Pike livebearer', N'Belonesox belizanus', N'Poeciliidae', 15, 6.8, 8.2, 12, 30, 25, 30, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (544, N'Pinche piranha', N'Serrasalmus eigenmanni', N'Serrasalmidae', 19, 6.2, 7.4, 7, 16, 21, 27, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (545, N'Pink corydoras', N'Corydoras axelrodi', N'Callichthyidae', 5, 6.1, 7.5, 7, 20, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (546, N'Pink tailed chalceus', N'Chalceus macrolepidotus', N'Characidae', 25, 6, 7.5, 4, 18, 23, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (547, N'Pinkthroat corydoras', N'Corydoras spilurus', N'Callichthyidae', 6, 6.4, 7.4, 4, 21, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (548, N'Pinstripe damba', N'Paretroplus menarambo', N'Cichlidae', 13, 6.5, 7.5, 6, 17, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (549, N'Platy fish', N'Xiphophorus maculatus', N'Poeciliidae', 8, 7, 8.3, 12, 18, 20, 26, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (550, N'Pleco catfish', N'Hypostomus borellii', N'Loricariidae', 16, 6.5, 7.1, 4, 19, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (551, N'Pleco catfish l201', N'Hypancistrus contradens', N'Loricariidae', 14, 6.5, 7.7, 7, 15, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (552, N'Pleco l234', N'Megalancistrus parananus', N'Loricariidae', 62, 5.8, 7.5, 6, 26, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (553, N'Pleco LDA38', N'Hypostomus plecostomoides', N'Loricariidae', 26, 6.3, 7.5, 6, 17, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (554, N'Porthole catfish', N'Dianema longibarbis', N'Callichthyidae', 10, 5.8, 7.8, 2, 20, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (555, N'Powder blue cichlid', N'Pseudotropheus socolofi', N'Cichlidae', 11, 7.5, 8.9, 12, 25, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (556, N'Pretty cory', N'Corydoras pulcher', N'Callichthyidae', 5, 6, 8, 4, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (557, N'Purple labeo', N'Labeo congoro', N'Cyprinidae', 42, 7, 8, 12, 23, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (558, N'Purple mbuna', N'Melanochromis vermivorus', N'Cichlidae', 15, 7.5, 8.9, 10, 25, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (559, N'Queen danio', N'Devario regina', N'Cyprinidae', 8, 6.1, 7.9, 4, 18, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (560, N'Rainbow cichlid', N'Herotilapia multispinosa', N'Cichlidae', 12, 7, 8, 10, 20, 22, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (561, N'Rainbow tetra', N'Nematobrycon lacortei', N'Characidae', 4, 6, 7.2, 4, 17, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (562, N'Rainbowfish', N'Bedotia madagascariensis', N'Bedotiidae', 10, 5.4, 7.1, 9, 19, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (563, N'Ram cichlid', N'Mikrogeophagus ramirezi', N'Cichlidae', 10, 5, 7, 0, 12, 23, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (564, N'Ramu rainbowfish', N'Glossolepis ramuensis', N'Melanotaeniidae', 8, 7.3, 7.8, 5, 13, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (565, N'Raphael catfish', N'Agamyxis pectinifrons', N'Doradidae', 15, 5.8, 7.5, 2, 20, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (566, N'Red base tetra', N'Hemigrammus stictus', N'Characidae', 4, 6.2, 7.2, 4, 21, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (567, N'Red bay snook', N'Petenia splendida', N'Cichlidae', 50, 7, 7.6, 10, 20, 25, 30, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (568, N'Red bellied pacu', N'Piaractus brachypomus', N'Serrasalmidae', 90, 5.9, 7, 5, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (569, N'Red bellied piranha', N'Pygocentrus nattereri', N'Serrasalmidae', 30, 6, 7.5, 4, 18, 24, 29, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (570, N'Red dario', N'Dario hysginon', N'Cyprinidae', 3, 6.3, 7.5, 8, 20, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (571, N'Red devil cichlid', N'Amphilophus labiatus', N'Cichlidae', 27, 6, 7.5, 10, 22, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (572, N'Red discus', N'Symphysodon discus', N'Cichlidae', 13, 4.3, 6, 0, 4, 26, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (573, N'Red eye puffer', N'Carinotetraodon lorteti', N'Tetraodontidae', 6, 6.6, 7.1, 3, 13, 24, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (574, N'Red eyed characin', N'Arnoldichthys spilopterus', N'Alestidae', 7, 6, 8, 5, 19, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (575, N'Red eyed tetra', N'Moenkhausia sanctaefilomenae', N'Characidae', 7, 5.6, 8.2, 4, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (576, N'Red Fin', N'Copadichromis borleyi', N'Cichlidae', 14, 8, 8.5, 12, 15, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (577, N'Red phantom tetra', N'Hyphessobrycon sweglesi', N'Characidae', 4, 5.7, 7.5, 4, 20, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (578, N'Red port acara', N'Cichlasoma portalegrense', N'Cichlidae', 12, 6.5, 7, 3, 10, 19, 24, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (579, N'Red rainbowfish', N'Glossolepis incisus', N'Melanotaeniidae', 12, 7, 8, 8, 20, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (580, N'Red striped earth eater', N'Geophagus surinamensis', N'Cichlidae', 30, 6, 8, 4, 18, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (581, N'Red terror', N'Cichlasoma festae', N'Cichlidae', 50, 7, 7.8, 5, 15, 24, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (582, N'Red zebra', N'Pseudotropheus estherae', N'Cichlidae', 10, 6.8, 7.9, 11, 21, 23, 26, N'Spawning', N'peaceful to females', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (583, N'Red-spot puffer', N'Tetraodon abei', N'Tetraodontidae', 11, 6.4, 7.1, 3, 15, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (584, N'Red-tail barracuda', N'Acestrorhynchus altus', N'Acestrorhynchidae', 24, 5.5, 7.1, 7, 16, 22, 24, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (585, N'Redback bleeding heart tetra', N'Hyphessobrycon pyrrhonotus', N'Characidae', 5, 6.3, 7.6, 6, 15, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (586, N'Redbreast acara', N'Laetacara dorsigera', N'Cichlidae', 10, 6.3, 7.4, 3, 18, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (587, N'Redchin panchax', N'Epiplatys dageti dageti', N'Nothobranchiidae', 6, 6, 7, 4, 12, 20, 23, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (588, N'Redhead cichlid', N'Vieja synspila', N'Cichlidae', 37, 7, 8.1, 8, 21, 25, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (589, N'Redhook myleus', N'Myloplus rubripinnis', N'Serrasalmidae', 38, 6.1, 7, 3, 9, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (590, N'Redhump eartheater', N'Geophagus steindachneri', N'Cichlidae', 20, 6.5, 7, 5, 17, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (591, N'Redstripe dwarf cichlid', N'Apistogramma hongsloi', N'Cichlidae', 4, 6.5, 7.6, 6, 16, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (592, N'Redtail shark', N'Epalzeorhynchos bicolor', N'Cyprinidae', 12, 6.2, 7.5, 2, 18, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (593, N'Regal rainbowfish', N'Melanotaenia trifasciata', N'Melanotaeniidae', 11, 7, 8, 8, 18, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (594, N'Reticulate knifefish', N'Papyrocranus afer', N'Notopteridae', 80, 5.5, 6.5, 4, 12, 24, 30, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (595, N'Reticulate rasbora', N'Rasbora reticulata', N'Cyprinidae', 6, 6.4, 7, 4, 14, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (596, N'Reticulated corydoras', N'Corydoras reticulatus', N'Callichthyidae', 7, 6.1, 7.1, 1, 15, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (597, N'Rhomb barb', N'Puntius rhomboocellatus', N'Cyprinidae', 9, 6.6, 7.4, 6, 17, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (598, N'Robert''s catfish', N'Synodontis robertsi', N'Mochokidae', 10, 6.2, 7.5, 12, 24, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (599, N'Robust cory', N'Corydoras robustus', N'Callichthyidae', 9, 6.6, 7.2, 4, 17, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (600, N'Ropefish', N'Erpetoichthys calabaricus', N'Polypteridae', 90, 6, 7.5, 4, 18, 26, 30, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (601, N'Rose danio', N'Danio roseus', N'Cyprinidae', 4, 6.2, 7, 4, 13, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (602, N'Rostratus', N'Fossorochromis rostratus', N'Cichlidae', 30, 7.5, 8.5, 10, 18, 25, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (603, N'Rosy barb', N'Puntius conchonius', N'Cyprinidae', 10, 6.5, 7.5, 4, 18, 18, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (604, N'Rosy tetra', N'Hyphessobrycon rosaceus', N'Characidae', 4, 5.8, 7.5, 4, 12, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (605, N'Royal pleco', N'Panaque nigrolineatus', N'Loricariidae', 47, 6.7, 7.5, 4, 15, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (606, N'Rubber pleco', N'Parancistrus aurantiacus', N'Loricariidae', 27, 6.2, 7.4, 5, 14, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (607, N'Ruby barb', N'Puntius nigrofasciatus', N'Cyprinidae', 6, 5.5, 7, 4, 12, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (608, N'Ruby rainbowfish', N'Melanotaenia splendida rubrostriata', N'Melanotaeniidae', 15, 5.6, 7.8, 7, 12, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (609, N'Ruby red peacock', N'Aulonocara rubescens', N'Cichlidae', 12, 7.5, 8.5, 16, 24, 24, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (610, N'Rummy nose tetra', N'Hemigrammus bleheri', N'Characidae', 4, 6, 7, 0, 8, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (611, N'Rummy nose tetra', N'Hemigrammus rhodostomus', N'Characidae', 4, 6, 7.5, 4, 12, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (612, N'Saddle corydoras', N'Corydoras ephippifer', N'Callichthyidae', 6, 6.4, 7.2, 3, 21, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (613, N'Sailfin glass perchlet', N'Ambassis agrammus', N'Ambassidae', 8, 6.5, 7.1, 4, 13, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (614, N'Sailfin molly', N'Poecilia latipinna', N'Poeciliidae', 15, 6, 8, 4, 20, 18, 30, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (615, N'Sailfin tetra', N'Crenuchus spilurus', N'Crenuchidae', 6, 6.2, 7.1, 4, 16, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (616, N'Salmontail catfish', N'Arius leptaspis', N'Ariidae', 80, 6.5, 8, 12, 18, 20, 30, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (617, N'San Francisco piranha', N'Pygocentrus piraya', N'Serrasalmidae', 35, 6.3, 7.2, 6, 16, 24, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (618, N'San juan cory', N'Corydoras bilineatus', N'Callichthyidae', 5, 6.5, 7.5, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (619, N'Sand''s Corydoras', N'Corydoras davidsandsi', N'Callichthyidae', 6, 5, 7, 4, 18, 20, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (620, N'Saratoga fish', N'Scleropages leichardti', N'Osteoglossidae', 100, 6.4, 7, 3, 14, 24, 28, N'Spawning', N'aggressive/territorial', N'aggressive to smaller', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (621, N'Savanna tetra', N'Hyphessobrycon stegemanni', N'Characidae', 4, 6.5, 7, 4, 11, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (622, N'Scarlet badis', N'Dario dario', N'Cyprinidae', 2, 6.3, 7, 8, 15, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (623, N'Schaller''s mouthbrooder', N'Betta schalleri', N'Osphronemidae', 5, 4.6, 5.8, 2, 10, 24, 26, N'Spawning', N'peaceful to females', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (624, N'Schwartz''s cory', N'Corydoras schwartzi', N'Callichthyidae', 4, 6, 8, 4, 19, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (625, N'Senegal bichir', N'Polypterus senegalus', N'Polypteridae', 30, 6, 7.5, 4, 18, 25, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (626, N'Sepik glass perchlet', N'Parambassis confinis', N'Ambassidae', 10, 7.5, 8.5, 2, 12, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (627, N'Serpae tetra', N'Hyphessobrycon serpae', N'Characidae', 4, 5.5, 7.5, 4, 12, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (628, N'Seuss'' cory', N'Corydoras seussi', N'Callichthyidae', 7, 6.3, 7.5, 5, 24, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (629, N'Seven stripe cichlid', N'Archocentrus septemfasciatus', N'Cichlidae', 12, 6.9, 7.7, 9, 23, 21, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (630, N'Severum', N'Heros efasciatus', N'Cichlidae', 15, 6, 7.3, 13, 23, 22, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (631, N'Severum', N'Heros severus', N'Cichlidae', 30, 6, 7.5, 4, 18, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (632, N'Shark catfish', N'Hexanematichthys seemanni', N'Ariidae', 35, 6.8, 8, 8, 30, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (633, N'Short finned molly', N'Poecilia sphenops', N'Poeciliidae', 15, 7, 8.5, 12, 18, 21, 26, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (634, N'Siamese algae eater', N'Crossocheilus siamensis', N'Cyprinidae', 16, 6.5, 8, 4, 18, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (635, N'Siamese fighting fish', N'Betta splendens', N'Osphronemidae', 8, 6.2, 7.9, 4, 25, 23, 30, N'Spawning', N'peaceful to females', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (636, N'Siamese tiger datnoid', N'Datnioides microlepis', N'Datnioididae', 30, 6.5, 7.5, 8, 18, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (637, N'Siamese tigerfish', N'Datnioides polota', N'Datnioididae', 30, 6, 7, 4, 16, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (638, N'Silver arowana', N'Osteoglossum bicirrhosum', N'Osteoglossidae', 100, 6, 6.6, 4, 12, 24, 30, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (639, N'Silver dollar', N'Metynnis hypsauchen', N'Characidae', 20, 6, 7.5, 4, 18, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (640, N'Silver tipped tetra', N'Hasemania nana', N'Characidae', 3, 5.5, 6.5, 4, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (641, N'Six-bar lamprologus', N'Neolamprologus sexfasciatus', N'Cichlidae', 15, 7.5, 8, 10, 15, 23, 26, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (642, N'Sixbar distichodus', N'Distichodus sexfasciatus', N'Distichodontidae', 78, 6.4, 7.4, 7, 22, 21, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (643, N'Sixbar panchax', N'Epiplatys sexfasciatus', N'Nothobranchiidae', 10, 5, 7, 4, 12, 20, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (644, N'Skunk botia', N'Yasuhikotakia morleti', N'Botiidae', 10, 6.4, 7.8, 5, 12, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (645, N'Skunk cory', N'Corydoras arcuatus', N'Callichthyidae', 5, 6.5, 8, 4, 12, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (646, N'Slant-bar corydoras', N'Corydoras loxozonus', N'Callichthyidae', 6, 6.4, 7.5, 2, 19, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (647, N'Slender betta', N'Betta bellica', N'Osphronemidae', 10, 6, 7.5, 10, 18, 24, 30, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (648, N'Slender cichlid', N'Cyprichromis leptosoma', N'Cichlidae', 13, 7.8, 8.9, 18, 30, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (649, N'Slender mbuna', N'Pseudotropheus elongatus', N'Cichlidae', 14, 7.5, 8.9, 12, 25, 22, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (650, N'Slender rainbowfish', N'Melanotaenia gracilis', N'Melanotaeniidae', 10, 6.5, 7, 10, 15, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (651, N'Smallscale archerfish', N'Toxotes microlepis', N'Toxotidae', 15, 6.5, 7.5, 6, 21, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (652, N'Smudge spot cory', N'Corydoras similis', N'Callichthyidae', 5, 6.5, 7.5, 4, 20, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (653, N'Snakehead fighter', N'Betta channoides', N'Osphronemidae', 12, 4.5, 6.5, 10, 15, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (654, N'Snakeskin gourami', N'Trichogaster pectoralis', N'Osphronemidae', 25, 6, 8.3, 2, 10, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (655, N'Snowflake bristlenose', N'Baryancistrus niveatus', N'Loricariidae', 25, 6.2, 7.5, 4, 16, 23, 27, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (656, N'South american molly', N'Poecilia caucana', N'Poeciliidae', 4, 6.9, 7.5, 8, 19, 25, 30, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (657, N'Southern checkmark cichlid', N'Vieja godmanni', N'Cichlidae', 31, 7, 7.7, 10, 19, 24, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (658, N'Southern mouthbrooder', N'Pseudocrenilabrus philander philander', N'Cichlidae', 10, 6.5, 7.5, 10, 14, 22, 25, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (659, N'Spiney-headed hillstream loach', N'Gastromyzon ocellatus', N'Gastromyzontidae', 6, 7, 8, 0, 14, 20, 24, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (660, N'Spiny catfish', N'Acanthodoras cataphractus', N'Doradidae', 12, 6.2, 7.7, 4, 18, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (661, N'Spiny cichlid', N'Archocentrus spinosissimus', N'Cichlidae', 15, 7, 7.6, 5, 12, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (662, N'Spiny monster', N'Pseudolithoxus anthrax', N'Loricariidae', 15, 6.5, 7.7, 6, 19, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (663, N'Splashing tetra', N'Copella arnoldi', N'Lebiasinidae', 8, 6.5, 8, 3, 12, 25, 29, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (664, N'Splendid killifish', N'Aphyosemion splendopleure', N'Nothobranchiidae', 6, 6.7, 7.3, 7, 15, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (665, N'Spotfin hatchetfish', N'Thoracocharax stellatus', N'Gasteropelecidae', 8, 6.3, 7.4, 3, 15, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (666, N'Spotted betta', N'Betta picta', N'Osphronemidae', 6, 6.4, 7.4, 7, 19, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (667, N'Spotted blue-eye', N'Pseudomugil gertrudae', N'Pseudomugilidae', 4, 5.2, 7.6, 5, 12, 23, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (668, N'Spotted bristle-nosed pleco', N'Ancistrus hoplogenys', N'Loricariidae', 16, 6.1, 7.2, 5, 16, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (669, N'Spotted cory', N'Corydoras ambiacus', N'Callichthyidae', 5, 6, 7.6, 4, 22, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (670, N'Spotted cory', N'Corydoras brevirostris', N'Callichthyidae', 6, 4.1, 8.9, 3, 17, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (671, N'Spotted ctenopoma', N'Ctenopoma acutirostre', N'Anabantidae', 20, 6, 7.5, 5, 12, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (672, N'Spotted hoplo', N'Megalechis thoracata', N'Callichthyidae', 16, 6, 8, 4, 18, 18, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (673, N'Spotted medusa pleco', N'Ancistrus sp. L255', N'Loricariidae', 16, 6, 8, 8, 14, 27, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (674, N'Spotted orange seam pleco', N'Hemiancistrus guahiborum', N'Loricariidae', 15, 6.6, 7.3, 3, 17, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (675, N'Spotted pimelodus', N'Pimelodus maculatus', N'Pimelodidae', 20, 6.7, 7.5, 4, 20, 21, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (676, N'Spotted sailfin pleco', N'Glyptoperichthys gibbiceps', N'Loricariidae', 50, 6, 8, 4, 18, 23, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (677, N'Spotted scat', N'Scatophagus argus', N'Scatophagidae', 30, 7.5, 8.5, 12, 18, 22, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (678, N'Starlight bristlenose pleco', N'Ancistrus sp. L182', N'Loricariidae', 16, 6, 7.5, 8, 14, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (679, N'Sterba''s corydoras', N'Corydoras sterbai', N'Callichthyidae', 7, 6.2, 7.8, 4, 12, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (680, N'Stinging catfish', N'Heteropneustes fossilis', N'Heteropneustidae', 30, 6, 8, 8, 22, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (681, N'Striped dwarf cichlid', N'Nannacara taenia', N'Cichlidae', 6, 6.1, 7.3, 2, 10, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (682, N'Striped headstander', N'Anostomus anostomus', N'Anostomidae', 20, 5.8, 7.5, 4, 18, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (683, N'Striped julie', N'Julidochromis regani', N'Cichlidae', 30, 7.5, 8.9, 18, 30, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (684, N'Striped kribensis', N'Pelvicachromis taeniatus', N'Cichlidae', 9, 6.4, 7, 5, 13, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (685, N'Striped panchax', N'Aplocheilus lineatus', N'Aplocheilidae', 12, 6, 7.5, 4, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (686, N'Striped raphael catfish', N'Platydoras costatus', N'Doradidae', 24, 5.8, 7.5, 4, 18, 24, 30, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (687, N'Striped red-eye puffer', N'Carinotetraodon salivator', N'Tetraodontidae', 5, 6.6, 7.6, 5, 20, 22, 26, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (688, N'Suckermouth catfish', N'Hypostomus plecostomus', N'Loricariidae', 52, 6.4, 7.6, 10, 25, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (689, N'Sulphurhead hap', N'Otopharynx lithobates', N'Cichlidae', 16, 7, 8, 7, 22, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (690, N'Sultan pleco', N'Leporacanthicus joselimai', N'Loricariidae', 15, 6.2, 7.4, 4, 17, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (691, N'Sunset dwarf rainbowfish', N'Melanotaenia parva', N'Melanotaeniidae', 9, 6.5, 7.5, 12, 16, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (692, N'Sunshine Peacock', N'Aulonocara baenschi', N'Cichlidae', 10, 7, 8.5, 10, 18, 22, 26, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (693, N'Sunshine peacock', N'Aulonocara maleri', N'Cichlidae', 12, 7, 8.5, 10, 20, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (694, N'Sunshine pleco', N'Scobinancistrus aureatus', N'Loricariidae', 25, 6, 7.2, 0, 30, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (695, N'Suriname eartheater', N'Geophagus proximus', N'Cichlidae', 30, 6.5, 7.5, 6, 20, 22, 25, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (696, N'Swordtail', N'Xiphophorus hellerii', N'Poeciliidae', 12, 7, 8, 12, 18, 21, 28, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (697, N'T-Barb', N'Puntius lateristriga', N'Cyprinidae', 18, 6, 6.5, 4, 12, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (698, N'Tailbar cichlid', N'Vieja hartwegi', N'Cichlidae', 30, 7, 8, 12, 21, 24, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (699, N'Tailspot botia', N'Yasuhikotakia caudipunctata', N'Cobitidae', 9, 6.6, 7.5, 3, 13, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (700, N'Tailspot corydoras', N'Corydoras caudimaculatus', N'Callichthyidae', 5, 6.3, 7.3, 4, 17, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (701, N'Tambraparni barb', N'Puntius tambraparniei', N'Cyprinidae', 7, 6, 7.3, 5, 16, 20, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (702, N'Tanganyika clown', N'Eretmodus cyanostictus', N'Cichlidae', 9, 7.6, 8.9, 14, 23, 24, 27, N'Spawning', N'aggressive/territorial', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (703, N'Texas cichlid', N'Herichthys cyanoguttatus', N'Cichlidae', 30, 6.5, 7.5, 5, 12, 22, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (704, N'Thai puffer', N'Tetraodon barbatus', N'Tetraodontidae', 14, 6.3, 6.3, 8, 15, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (705, N'The Uaru cichlid', N'Uaru amphiacanthoides', N'Cichlidae', 20, 5, 7, 5, 12, 26, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (706, N'Thick lip gourami', N'Trichogaster labiosus', N'Osphronemidae', 9, 6, 7.5, 4, 10, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (707, N'Thin-line dwarf cichlid', N'Apistogramma resticulosa', N'Cichlidae', 3, 6.3, 7.5, 9, 18, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (708, N'Thorny catfish', N'Agamyxis albomaculatus', N'Doradidae', 14, 6, 7.5, 8, 12, 20, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (709, N'Thread-finned cichlid', N'Acarichthys heckelii', N'Cichlidae', 13, 6.8, 7.2, 6, 12, 24, 28, N'Spawning', N'peaceful', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (710, N'Threadfin rainbowfish', N'Iriatherina werneri', N'Melanotaeniidae', 5, 6, 8, 5, 12, 26, 30, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (711, N'Threadfinned dwarf cichlid', N'Apistogramma iniridae', N'Cichlidae', 8, 6.3, 7, 4, 18, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (712, N'Three spot cichlid', N'Cichlasoma trimaculatum', N'Cichlidae', 38, 6.5, 7.5, 8, 24, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (713, N'Three striped african glass catfish', N'Pareutropius buffei', N'Schilbeidae', 10, 6.6, 7.6, 6, 17, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (714, N'Three-striped dwarf cichlid', N'Apistogramma trifasciata', N'Cichlidae', 4, 6.4, 7.8, 3, 19, 24, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (715, N'Threestripe pencilfish', N'Nannostomus trifasciatus', N'Lebiasinidae', 5, 5.9, 7, 0, 7, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (716, N'Tiger barb', N'Puntius tetrazona', N'Cyprinidae', 7, 6.5, 7.5, 4, 12, 20, 25, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (717, N'Tiger botia', N'Syncrossus berdmorei', N'Cobitidae', 25, 6.5, 7.3, 2, 22, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (718, N'Tiger danio', N'Devario maetaengensis', N'Cyprinidae', 5, 6.4, 7, 3, 10, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (719, N'Tiger hillstream loach', N'Sewellia lineolata', N'Balitoridae', 11, 6, 7, 4, 10, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (720, N'Tiger pleco', N'Peckoltia vittata', N'Loricariidae', 14, 5.9, 7, 3, 15, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (721, N'Tiger shovelnose catfish', N'Pseudoplatystoma fasciatum', N'Pimelodidae', 100, 6.3, 8, 4, 18, 23, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (722, N'Tinfoil barb', N'Barbonymus schwanenfeldii', N'Cyprinidae', 36, 6.5, 7.1, 6, 16, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (723, N'Tire track eel', N'Mastacembelus armatus', N'Mastacembelidae', 90, 6.5, 7.5, 8, 18, 22, 27, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (724, N'Trewavas mbuna', N'Labeotropheus trewavasae', N'Cichlidae', 11, 7, 8.5, 10, 30, 22, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (725, N'Twig catfish', N'Farlowella vittata', N'Loricariidae', 15, 6, 7, 3, 8, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (726, N'Two spot barb', N'Puntius cumingii', N'Cyprinidae', 5, 5.5, 6.5, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (727, N'Twoband cichlid', N'Vieja bifasciata', N'Cichlidae', 30, 7, 7.9, 10, 23, 22, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (728, N'Twosaddle corydoras', N'Corydoras weitzmani', N'Callichthyidae', 6, 5.9, 7.7, 5, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (729, N'Twospot livebearer', N'Heterandria bimaculata', N'Poeciliidae', 15, 6.5, 7, 10, 15, 22, 28, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (730, N'Twospot rasbora', N'Rasbora elegans', N'Cyprinidae', 20, 6.3, 7, 7, 16, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (731, N'Upside-down catfish', N'Synodontis nigriventris', N'Mochokidae', 10, 6, 8, 4, 12, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (732, N'Variegated platy', N'Xiphophorus variatus', N'Poeciliidae', 7, 7, 8, 7, 26, 21, 26, N'Pseudo-Livebearer', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (733, N'Victoria biglip hap cichlid', N'Haplochromis chilotes', N'Cichlidae', 16, 7, 8, 10, 20, 20, 24, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (734, N'Viejita', N'Apistogramma viejita', N'Cichlidae', 8, 5.5, 6.5, 2, 10, 25, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (735, N'Wanam rainbowfish', N'Glossolepis wanamensis', N'Melanotaeniidae', 10, 6.5, 7.8, 12, 16, 24, 27, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (736, N'Western rainbow', N'Melanotaenia splendida australis', N'Melanotaeniidae', 10, 6.5, 8, 5, 12, 22, 28, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (737, N'Whiptail catfish', N'Farlowella acus', N'Loricariidae', 16, 6, 7, 3, 10, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (738, N'White cichlid', N'Vieja argentea', N'Cichlidae', 29, 6.6, 7.4, 5, 20, 24, 28, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (739, N'White cloud mountain minnow', N'Tanichthys albonubes', N'Cyprinidae', 5, 6, 8, 4, 18, 17, 23, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (740, N'White lamprologus', N'Altolamprologus calvus', N'Cichlidae', 13, 8, 8.9, 9, 19, 23, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (741, N'Whiteseam fighter', N'Betta albimarginata', N'Osphronemidae', 5, 6, 7.5, 4, 16, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (742, N'William''s mbuna', N'Maylandia greshakei', N'Cichlidae', 14, 6.8, 7.6, 7, 23, 23, 26, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (743, N'Window cichlid', N'Vieja fenestratus', N'Cichlidae', 40, 7.2, 8, 4, 12, 23, 27, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (744, N'Wine red betta', N'Betta coccina', N'Osphronemidae', 6, 4.5, 6, 0, 6, 24, 28, N'Spawning', N'peaceful to males', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (745, N'Wolf cichlid', N'Parachromis dovii', N'Cichlidae', 70, 7, 8, 12, 18, 24, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (746, N'Woodeating lasiancistrus', N'Lasiancistrus tentaculatus', N'Loricariidae', 12, 6.3, 7, 3, 16, 23, 28, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (747, N'Wormline peckoltia', N'Peckoltia braueri', N'Loricariidae', 15, 6.4, 7.5, 4, 21, 22, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (748, N'X-ray tetra', N'Pristella maxillaris', N'Characidae', 5, 6, 8, 4, 18, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (749, N'Xingu corydoras', N'Corydoras xinguensis', N'Callichthyidae', 4, 5.6, 7.6, 4, 18, 22, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (750, N'Yakati rainbowfish', N'Melanotaenia angfa', N'Melanotaeniidae', 13, 6.5, 7.5, 12, 18, 24, 26, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (751, N'Yellow acara', N'Aequidens metae', N'Cichlidae', 13, 6.2, 7, 6, 12, 24, 28, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (752, N'Yellow belly cichlid', N'Cichlasoma salvini', N'Cichlidae', 24, 7, 8.1, 7, 25, 23, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (753, N'Yellow dwarf cichlid', N'Apistogramma borellii', N'Cichlidae', 7, 6, 6.8, 5, 20, 23, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (754, N'Yellow lepturus cichlid', N'Buccochromis rhoadesii', N'Cichlidae', 35, 7.1, 8.4, 9, 30, 22, 27, N'Spawning', N'peaceful', N'aggressive to smaller', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (755, N'Yellowhump eartheater', N'Geophagus pellegrini', N'Cichlidae', 16, 6, 7, 4, 15, 23, 29, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (756, N'Yellowspotted river stingray', N'Potamotrygon leopoldi', N'Potamotrygonidae', 43, 6, 7, 4, 12, 21, 25, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (757, N'Yellowtail tetra', N'Alestopetersius caudalis', N'Alestidae', 7, 6.8, 7.9, 10, 20, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Top levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (758, N'Yoma danio', N'Danio feegradei', N'Cyprinidae', 5, 6.2, 7, 6, 19, 22, 25, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (759, N'YoYo loach', N'Botia almorhae', N'Cobitidae', 10, 5.5, 7.5, 4, 12, 23, 28, N'Spawning', N'aggressive/territorial', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (760, N'Zebra acara', N'Nannacara adoketa', N'Cichlidae', 5, 5.8, 6.6, 2, 7, 21, 26, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (761, N'Zebra blenny', N'Omobranchus zebra', N'Blenniidae', 6, 7.5, 8.7, 17, 30, 20, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (762, N'Zebra cichlid', N'Tilapia buttikoferi', N'Cichlidae', 31, 6.5, 7.3, 4, 16, 22, 25, N'Spawning', N'peaceful', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (763, N'Zebra danio', N'Danio rerio', N'Cyprinidae', 7, 6.5, 7.2, 4, 12, 18, 26, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (764, N'Zebra discus', N'Symphysodon aequifasciata zebra', N'Cichlidae', 15, 5.5, 7.5, 0, 8, 27, 30, N'Spawning', N'peaceful', N'peaceful', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (765, N'Zebra loach', N'Botia striata', N'Cobitidae', 10, 6.5, 7.5, 4, 12, 23, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (766, N'Zebra mbuna', N'Maylandia zebra', N'Cichlidae', 15, 7.3, 8.9, 12, 25, 22, 28, N'Spawning', N'aggressive/territorial', N'aggressive/territorial', N'Middle levels')
GO
INSERT [dbo].[Fish] ([Id], [CommonName], [ScientificName], [Family], [MaxSize], [pHMin], [pHMax], [dHMin], [dHMax], [TempMin], [TempMax], [Reproduction], [TemperamentSelf], [TemperamentOthers], [TankLevel]) VALUES (767, N'Zebra pleco', N'Hypancistrus zebra', N'Loricariidae', 10, 6.5, 7.4, 3, 12, 21, 27, N'Spawning', N'peaceful', N'peaceful', N'Bottom levels')
GO
SET IDENTITY_INSERT [dbo].[Fish] OFF
GO
USE [master]
GO
ALTER DATABASE [Species] SET  READ_WRITE 
GO
