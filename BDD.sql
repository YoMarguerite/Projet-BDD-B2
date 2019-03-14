USE [master]
GO
/****** Object:  Database [Projet Trans BDD]    Script Date: 12/03/2019 08:21:53 ******/
CREATE DATABASE [Projet Trans BDD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projet Trans BDD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Projet Trans BDD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projet Trans BDD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Projet Trans BDD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Projet Trans BDD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projet Trans BDD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Projet Trans BDD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET ARITHABORT OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Projet Trans BDD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Projet Trans BDD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Projet Trans BDD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Projet Trans BDD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET RECOVERY FULL 
GO
ALTER DATABASE [Projet Trans BDD] SET  MULTI_USER 
GO
ALTER DATABASE [Projet Trans BDD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Projet Trans BDD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Projet Trans BDD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Projet Trans BDD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Projet Trans BDD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Projet Trans BDD', N'ON'
GO
ALTER DATABASE [Projet Trans BDD] SET QUERY_STORE = OFF
GO
USE [Projet Trans BDD]
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
USE [Projet Trans BDD]
GO
/****** Object:  Table [dbo].[Aeroport]    Script Date: 12/03/2019 08:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aeroport](
	[idAeroport] [int] NOT NULL,
	[AITA] [nvarchar](3) NOT NULL,
	[Nom] [nvarchar](45) NOT NULL,
	[Ville] [nvarchar](45) NOT NULL,
	[Pays] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_Aeroport] PRIMARY KEY CLUSTERED 
(
	[idAeroport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Avion]    Script Date: 12/03/2019 08:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avion](
	[idAvion] [int] NOT NULL,
	[Matricule] [nvarchar](45) NULL,
	[Modele] [nvarchar](45) NULL,
	[Motorisation] [nvarchar](45) NULL,
	[Type] [nvarchar](45) NULL,
	[Passagers] [int] NULL,
	[Location] [tinyint] NULL,
	[Etat] [smallint] NULL,
	[idAeroport] [int] NULL,
 CONSTRAINT [PK_Avion] PRIMARY KEY CLUSTERED 
(
	[idAvion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Avions_has_Classes]    Script Date: 12/03/2019 08:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avions_has_Classes](
	[idAvion] [int] NOT NULL,
	[idClasse] [int] NOT NULL,
	[Place_Total] [int] NULL,
 CONSTRAINT [PK_Avions_has_Classes] PRIMARY KEY CLUSTERED 
(
	[idAvion] ASC,
	[idClasse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bagage]    Script Date: 12/03/2019 08:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bagage](
	[idBagage] [int] NOT NULL,
	[Poids] [float] NULL,
	[Prix] [float] NULL,
	[Check-in] [tinyint] NULL,
	[Check-out] [tinyint] NULL,
	[idBillet] [int] NULL,
 CONSTRAINT [PK_Bagage] PRIMARY KEY CLUSTERED 
(
	[idBagage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billet_Chek-in]    Script Date: 12/03/2019 08:21:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billet_Chek-in](
	[idBillet] [int] NOT NULL,
	[idVoyage] [int] NOT NULL,
	[idVol] [int] NOT NULL,
	[Check-in] [tinyint] NULL,
 CONSTRAINT [PK_Billet_Chek-in] PRIMARY KEY CLUSTERED 
(
	[idBillet] ASC,
	[idVoyage] ASC,
	[idVol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billets]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billets](
	[idBillet] [int] NOT NULL,
	[idClient] [int] NOT NULL,
	[idVoyage] [int] NOT NULL,
	[idTarif] [int] NOT NULL,
 CONSTRAINT [PK_Billets] PRIMARY KEY CLUSTERED 
(
	[idBillet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[idClasse] [int] NOT NULL,
	[Classe] [nvarchar](45) NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[idClasse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[idClient] [int] NOT NULL,
	[Nom] [nvarchar](45) NULL,
	[Prenom] [nvarchar](45) NULL,
	[Civilite] [tinyint] NULL,
	[Naissance] [date] NULL,
	[Passeport] [nvarchar](45) NULL,
	[Mail] [nvarchar](45) NULL,
	[Adresse] [nvarchar](100) NULL,
	[MotDePasse] [nvarchar](64) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employe_has_Vols]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employe_has_Vols](
	[idEmploye] [int] NOT NULL,
	[idVol] [int] NOT NULL,
	[Professionnel] [tinyint] NULL,
	[Prix] [float] NULL,
 CONSTRAINT [PK_Employe_has_Vols] PRIMARY KEY CLUSTERED 
(
	[idEmploye] ASC,
	[idVol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employe_has_Vols_has_Passenger]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employe_has_Vols_has_Passenger](
	[idEmploye] [int] NOT NULL,
	[idVol] [int] NOT NULL,
	[idClient] [int] NOT NULL,
 CONSTRAINT [PK_Employe_has_Vols_has_Passenger] PRIMARY KEY CLUSTERED 
(
	[idEmploye] ASC,
	[idVol] ASC,
	[idClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employes]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employes](
	[idEmploye] [int] NOT NULL,
	[Nom] [nvarchar](45) NULL,
	[Prenom] [nvarchar](45) NULL,
	[Matricule] [nvarchar](45) NULL,
	[Adresse] [nvarchar](100) NULL,
	[Naissance] [date] NULL,
	[MotDePasse] [nvarchar](64) NULL,
	[Date_Embauche] [date] NULL,
	[Date_Sortie] [date] NULL,
	[Civilite] [tinyint] NULL,
	[Poste] [nvarchar](45) NULL,
	[Permis_Piste] [tinyint] NULL,
	[Naviguant/Sol] [tinyint] NULL,
	[idAeroport] [int] NULL,
 CONSTRAINT [PK_Employes] PRIMARY KEY CLUSTERED 
(
	[idEmploye] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Incidents]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Incidents](
	[idIncident] [int] NOT NULL,
	[Message] [text] NULL,
	[Gravite] [smallint] NULL,
	[Date] [datetime] NULL,
	[idEmploye] [int] NULL,
	[idAvion] [int] NULL,
 CONSTRAINT [PK_Incidents] PRIMARY KEY CLUSTERED 
(
	[idIncident] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maintenance_has_Employes]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maintenance_has_Employes](
	[idMaintenance] [int] NULL,
	[idEmploye] [int] NULL,
	[Responsable] [tinyint] NULL,
	[Reparation] [text] NULL,
	[Details] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maintenances]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maintenances](
	[idMaintenance] [int] NOT NULL,
	[Cause] [nvarchar](45) NULL,
	[Details] [text] NULL,
	[Debut] [datetime] NULL,
	[Fin] [datetime] NULL,
	[idAvion] [int] NULL,
	[idAeroport] [int] NULL,
 CONSTRAINT [PK_Maintenances] PRIMARY KEY CLUSTERED 
(
	[idMaintenance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifs]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifs](
	[idTarif] [int] NOT NULL,
	[Tarif] [nvarchar](45) NULL,
	[idClasse] [int] NULL,
 CONSTRAINT [PK_Tarifs] PRIMARY KEY CLUSTERED 
(
	[idTarif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trajets]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trajets](
	[idTrajet] [int] NOT NULL,
	[Reference] [nvarchar](45) NULL,
	[Distance] [float] NULL,
	[Duree_Moyenne] [time](7) NULL,
	[Depart_idAeroport] [int] NULL,
	[Arrivee_idAeroport] [int] NULL,
 CONSTRAINT [PK_Trajets] PRIMARY KEY CLUSTERED 
(
	[idTrajet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vols]    Script Date: 12/03/2019 08:21:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vols](
	[idVol] [int] NOT NULL,
	[Depart_Theorique] [date] NULL,
	[Depart_Reel] [date] NULL,
	[Arrivee_Theorique] [date] NULL,
	[Arrivee_Reel] [date] NULL,
	[Pret] [tinyint] NULL,
	[idTrajet] [int] NULL,
	[Arrivee_idAeroport] [int] NULL,
	[idAvion] [int] NULL,
 CONSTRAINT [PK_Vols] PRIMARY KEY CLUSTERED 
(
	[idVol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vols_has_Classes]    Script Date: 12/03/2019 08:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vols_has_Classes](
	[idVol] [int] NOT NULL,
	[idClasse] [int] NOT NULL,
	[Taux_Remplissage] [float] NULL,
 CONSTRAINT [PK_Vols_has_Classes] PRIMARY KEY CLUSTERED 
(
	[idVol] ASC,
	[idClasse] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vols_has_Employes]    Script Date: 12/03/2019 08:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vols_has_Employes](
	[idEmploye] [int] NULL,
	[idVol] [int] NULL,
	[Poste] [nvarchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voyages]    Script Date: 12/03/2019 08:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voyages](
	[idVoyage] [int] NOT NULL,
 CONSTRAINT [PK_Voyages] PRIMARY KEY CLUSTERED 
(
	[idVoyage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voyages_has_Tarifs]    Script Date: 12/03/2019 08:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voyages_has_Tarifs](
	[idVoyage] [int] NOT NULL,
	[idTarif] [int] NOT NULL,
	[Prix] [float] NULL,
 CONSTRAINT [PK_Voyages_has_Tarifs_1] PRIMARY KEY CLUSTERED 
(
	[idVoyage] ASC,
	[idTarif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voyages_has_Vols]    Script Date: 12/03/2019 08:21:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voyages_has_Vols](
	[idVoyage] [int] NOT NULL,
	[idVol] [int] NOT NULL,
	[Ordre] [int] NULL,
 CONSTRAINT [PK_Voyages_has_Vols_1] PRIMARY KEY CLUSTERED 
(
	[idVoyage] ASC,
	[idVol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Avion]  WITH CHECK ADD  CONSTRAINT [FK_Avion_Aeroport] FOREIGN KEY([idAeroport])
REFERENCES [dbo].[Aeroport] ([idAeroport])
GO
ALTER TABLE [dbo].[Avion] CHECK CONSTRAINT [FK_Avion_Aeroport]
GO
ALTER TABLE [dbo].[Avions_has_Classes]  WITH CHECK ADD  CONSTRAINT [FK_Avions_has_Classes_Avion] FOREIGN KEY([idAvion])
REFERENCES [dbo].[Avion] ([idAvion])
GO
ALTER TABLE [dbo].[Avions_has_Classes] CHECK CONSTRAINT [FK_Avions_has_Classes_Avion]
GO
ALTER TABLE [dbo].[Avions_has_Classes]  WITH CHECK ADD  CONSTRAINT [FK_Avions_has_Classes_Classes] FOREIGN KEY([idClasse])
REFERENCES [dbo].[Classes] ([idClasse])
GO
ALTER TABLE [dbo].[Avions_has_Classes] CHECK CONSTRAINT [FK_Avions_has_Classes_Classes]
GO
ALTER TABLE [dbo].[Bagage]  WITH CHECK ADD  CONSTRAINT [FK_Bagage_Billets] FOREIGN KEY([idBillet])
REFERENCES [dbo].[Billets] ([idBillet])
GO
ALTER TABLE [dbo].[Bagage] CHECK CONSTRAINT [FK_Bagage_Billets]
GO
ALTER TABLE [dbo].[Billet_Chek-in]  WITH CHECK ADD  CONSTRAINT [FK_Billet_Chek-in_Billets] FOREIGN KEY([idBillet])
REFERENCES [dbo].[Billets] ([idBillet])
GO
ALTER TABLE [dbo].[Billet_Chek-in] CHECK CONSTRAINT [FK_Billet_Chek-in_Billets]
GO
ALTER TABLE [dbo].[Billet_Chek-in]  WITH CHECK ADD  CONSTRAINT [FK_Billet_Chek-in_Voyages_has_Vols] FOREIGN KEY([idVoyage], [idVol])
REFERENCES [dbo].[Voyages_has_Vols] ([idVoyage], [idVol])
GO
ALTER TABLE [dbo].[Billet_Chek-in] CHECK CONSTRAINT [FK_Billet_Chek-in_Voyages_has_Vols]
GO
ALTER TABLE [dbo].[Billets]  WITH CHECK ADD  CONSTRAINT [FK_Billets_Clients] FOREIGN KEY([idClient])
REFERENCES [dbo].[Clients] ([idClient])
GO
ALTER TABLE [dbo].[Billets] CHECK CONSTRAINT [FK_Billets_Clients]
GO
ALTER TABLE [dbo].[Billets]  WITH CHECK ADD  CONSTRAINT [FK_Billets_Voyages_has_Tarifs] FOREIGN KEY([idVoyage], [idTarif])
REFERENCES [dbo].[Voyages_has_Tarifs] ([idVoyage], [idTarif])
GO
ALTER TABLE [dbo].[Billets] CHECK CONSTRAINT [FK_Billets_Voyages_has_Tarifs]
GO
ALTER TABLE [dbo].[Employe_has_Vols]  WITH CHECK ADD  CONSTRAINT [FK_Employe_has_Vols_Employes] FOREIGN KEY([idEmploye])
REFERENCES [dbo].[Employes] ([idEmploye])
GO
ALTER TABLE [dbo].[Employe_has_Vols] CHECK CONSTRAINT [FK_Employe_has_Vols_Employes]
GO
ALTER TABLE [dbo].[Employe_has_Vols]  WITH CHECK ADD  CONSTRAINT [FK_Employe_has_Vols_Vols] FOREIGN KEY([idVol])
REFERENCES [dbo].[Vols] ([idVol])
GO
ALTER TABLE [dbo].[Employe_has_Vols] CHECK CONSTRAINT [FK_Employe_has_Vols_Vols]
GO
ALTER TABLE [dbo].[Employe_has_Vols_has_Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Employe_has_Vols_has_Passenger_Clients] FOREIGN KEY([idClient])
REFERENCES [dbo].[Clients] ([idClient])
GO
ALTER TABLE [dbo].[Employe_has_Vols_has_Passenger] CHECK CONSTRAINT [FK_Employe_has_Vols_has_Passenger_Clients]
GO
ALTER TABLE [dbo].[Employe_has_Vols_has_Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Employe_has_Vols_has_Passenger_Employe_has_Vols] FOREIGN KEY([idEmploye], [idVol])
REFERENCES [dbo].[Employe_has_Vols] ([idEmploye], [idVol])
GO
ALTER TABLE [dbo].[Employe_has_Vols_has_Passenger] CHECK CONSTRAINT [FK_Employe_has_Vols_has_Passenger_Employe_has_Vols]
GO
ALTER TABLE [dbo].[Employes]  WITH CHECK ADD  CONSTRAINT [FK_Employes_Aeroport] FOREIGN KEY([idAeroport])
REFERENCES [dbo].[Aeroport] ([idAeroport])
GO
ALTER TABLE [dbo].[Employes] CHECK CONSTRAINT [FK_Employes_Aeroport]
GO
ALTER TABLE [dbo].[Incidents]  WITH CHECK ADD  CONSTRAINT [FK_Incidents_Avion] FOREIGN KEY([idAvion])
REFERENCES [dbo].[Avion] ([idAvion])
GO
ALTER TABLE [dbo].[Incidents] CHECK CONSTRAINT [FK_Incidents_Avion]
GO
ALTER TABLE [dbo].[Incidents]  WITH CHECK ADD  CONSTRAINT [FK_Incidents_Employes] FOREIGN KEY([idEmploye])
REFERENCES [dbo].[Employes] ([idEmploye])
GO
ALTER TABLE [dbo].[Incidents] CHECK CONSTRAINT [FK_Incidents_Employes]
GO
ALTER TABLE [dbo].[Maintenance_has_Employes]  WITH CHECK ADD  CONSTRAINT [FK_Maintenance_has_Employes_Employes] FOREIGN KEY([idEmploye])
REFERENCES [dbo].[Employes] ([idEmploye])
GO
ALTER TABLE [dbo].[Maintenance_has_Employes] CHECK CONSTRAINT [FK_Maintenance_has_Employes_Employes]
GO
ALTER TABLE [dbo].[Maintenance_has_Employes]  WITH CHECK ADD  CONSTRAINT [FK_Maintenance_has_Employes_Maintenances] FOREIGN KEY([idMaintenance])
REFERENCES [dbo].[Maintenances] ([idMaintenance])
GO
ALTER TABLE [dbo].[Maintenance_has_Employes] CHECK CONSTRAINT [FK_Maintenance_has_Employes_Maintenances]
GO
ALTER TABLE [dbo].[Maintenances]  WITH CHECK ADD  CONSTRAINT [FK_Maintenances_Aeroport] FOREIGN KEY([idAeroport])
REFERENCES [dbo].[Aeroport] ([idAeroport])
GO
ALTER TABLE [dbo].[Maintenances] CHECK CONSTRAINT [FK_Maintenances_Aeroport]
GO
ALTER TABLE [dbo].[Maintenances]  WITH CHECK ADD  CONSTRAINT [FK_Maintenances_Avion] FOREIGN KEY([idAvion])
REFERENCES [dbo].[Avion] ([idAvion])
GO
ALTER TABLE [dbo].[Maintenances] CHECK CONSTRAINT [FK_Maintenances_Avion]
GO
ALTER TABLE [dbo].[Tarifs]  WITH CHECK ADD  CONSTRAINT [FK_Tarifs_Classes] FOREIGN KEY([idClasse])
REFERENCES [dbo].[Classes] ([idClasse])
GO
ALTER TABLE [dbo].[Tarifs] CHECK CONSTRAINT [FK_Tarifs_Classes]
GO
ALTER TABLE [dbo].[Trajets]  WITH CHECK ADD  CONSTRAINT [FK_Trajets_Aeroport] FOREIGN KEY([Depart_idAeroport])
REFERENCES [dbo].[Aeroport] ([idAeroport])
GO
ALTER TABLE [dbo].[Trajets] CHECK CONSTRAINT [FK_Trajets_Aeroport]
GO
ALTER TABLE [dbo].[Trajets]  WITH CHECK ADD  CONSTRAINT [FK_Trajets_Aeroport1] FOREIGN KEY([Arrivee_idAeroport])
REFERENCES [dbo].[Aeroport] ([idAeroport])
GO
ALTER TABLE [dbo].[Trajets] CHECK CONSTRAINT [FK_Trajets_Aeroport1]
GO
ALTER TABLE [dbo].[Vols]  WITH CHECK ADD  CONSTRAINT [FK_Vols_Aeroport] FOREIGN KEY([Arrivee_idAeroport])
REFERENCES [dbo].[Aeroport] ([idAeroport])
GO
ALTER TABLE [dbo].[Vols] CHECK CONSTRAINT [FK_Vols_Aeroport]
GO
ALTER TABLE [dbo].[Vols]  WITH CHECK ADD  CONSTRAINT [FK_Vols_Avion] FOREIGN KEY([idAvion])
REFERENCES [dbo].[Avion] ([idAvion])
GO
ALTER TABLE [dbo].[Vols] CHECK CONSTRAINT [FK_Vols_Avion]
GO
ALTER TABLE [dbo].[Vols]  WITH CHECK ADD  CONSTRAINT [FK_Vols_Trajets] FOREIGN KEY([idTrajet])
REFERENCES [dbo].[Trajets] ([idTrajet])
GO
ALTER TABLE [dbo].[Vols] CHECK CONSTRAINT [FK_Vols_Trajets]
GO
ALTER TABLE [dbo].[Vols_has_Classes]  WITH CHECK ADD  CONSTRAINT [FK_Vols_has_Classes_Classes] FOREIGN KEY([idClasse])
REFERENCES [dbo].[Classes] ([idClasse])
GO
ALTER TABLE [dbo].[Vols_has_Classes] CHECK CONSTRAINT [FK_Vols_has_Classes_Classes]
GO
ALTER TABLE [dbo].[Vols_has_Classes]  WITH CHECK ADD  CONSTRAINT [FK_Vols_has_Classes_Vols] FOREIGN KEY([idVol])
REFERENCES [dbo].[Vols] ([idVol])
GO
ALTER TABLE [dbo].[Vols_has_Classes] CHECK CONSTRAINT [FK_Vols_has_Classes_Vols]
GO
ALTER TABLE [dbo].[Vols_has_Employes]  WITH CHECK ADD  CONSTRAINT [FK_Vols_has_Employes_Employes] FOREIGN KEY([idEmploye])
REFERENCES [dbo].[Employes] ([idEmploye])
GO
ALTER TABLE [dbo].[Vols_has_Employes] CHECK CONSTRAINT [FK_Vols_has_Employes_Employes]
GO
ALTER TABLE [dbo].[Vols_has_Employes]  WITH CHECK ADD  CONSTRAINT [FK_Vols_has_Employes_Vols] FOREIGN KEY([idVol])
REFERENCES [dbo].[Vols] ([idVol])
GO
ALTER TABLE [dbo].[Vols_has_Employes] CHECK CONSTRAINT [FK_Vols_has_Employes_Vols]
GO
ALTER TABLE [dbo].[Voyages_has_Tarifs]  WITH CHECK ADD  CONSTRAINT [FK_Voyages_has_Tarifs_Tarifs] FOREIGN KEY([idTarif])
REFERENCES [dbo].[Tarifs] ([idTarif])
GO
ALTER TABLE [dbo].[Voyages_has_Tarifs] CHECK CONSTRAINT [FK_Voyages_has_Tarifs_Tarifs]
GO
ALTER TABLE [dbo].[Voyages_has_Tarifs]  WITH CHECK ADD  CONSTRAINT [FK_Voyages_has_Tarifs_Voyages] FOREIGN KEY([idVoyage])
REFERENCES [dbo].[Voyages] ([idVoyage])
GO
ALTER TABLE [dbo].[Voyages_has_Tarifs] CHECK CONSTRAINT [FK_Voyages_has_Tarifs_Voyages]
GO
ALTER TABLE [dbo].[Voyages_has_Vols]  WITH CHECK ADD  CONSTRAINT [FK_Voyages_has_Vols_Vols] FOREIGN KEY([idVol])
REFERENCES [dbo].[Vols] ([idVol])
GO
ALTER TABLE [dbo].[Voyages_has_Vols] CHECK CONSTRAINT [FK_Voyages_has_Vols_Vols]
GO
ALTER TABLE [dbo].[Voyages_has_Vols]  WITH CHECK ADD  CONSTRAINT [FK_Voyages_has_Vols_Voyages] FOREIGN KEY([idVoyage])
REFERENCES [dbo].[Voyages] ([idVoyage])
GO
ALTER TABLE [dbo].[Voyages_has_Vols] CHECK CONSTRAINT [FK_Voyages_has_Vols_Voyages]
GO
USE [master]
GO
ALTER DATABASE [Projet Trans BDD] SET  READ_WRITE 
GO
