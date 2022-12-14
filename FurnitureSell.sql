USE [master]
GO
/****** Object:  Database [FurnitureSell]    Script Date: 02.10.2022 20:06:08 ******/
CREATE DATABASE [FurnitureSell]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FurnitureSell', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER05\MSSQL\DATA\FurnitureSell.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FurnitureSell_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER05\MSSQL\DATA\FurnitureSell_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FurnitureSell] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FurnitureSell].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FurnitureSell] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FurnitureSell] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FurnitureSell] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FurnitureSell] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FurnitureSell] SET ARITHABORT OFF 
GO
ALTER DATABASE [FurnitureSell] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FurnitureSell] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FurnitureSell] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FurnitureSell] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FurnitureSell] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FurnitureSell] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FurnitureSell] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FurnitureSell] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FurnitureSell] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FurnitureSell] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FurnitureSell] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FurnitureSell] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FurnitureSell] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FurnitureSell] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FurnitureSell] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FurnitureSell] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FurnitureSell] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FurnitureSell] SET RECOVERY FULL 
GO
ALTER DATABASE [FurnitureSell] SET  MULTI_USER 
GO
ALTER DATABASE [FurnitureSell] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FurnitureSell] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FurnitureSell] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FurnitureSell] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FurnitureSell] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FurnitureSell] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FurnitureSell', N'ON'
GO
ALTER DATABASE [FurnitureSell] SET QUERY_STORE = OFF
GO
USE [FurnitureSell]
GO
/****** Object:  User [DESKTOP-I17R4U8\witless]    Script Date: 02.10.2022 20:06:08 ******/
CREATE USER [DESKTOP-I17R4U8\witless] FOR LOGIN [DESKTOP-I17R4U8\witless] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Auth]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auth](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Auth] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Furniture]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Furniture](
	[FurnitureID] [int] IDENTITY(1,1) NOT NULL,
	[FurnitureTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Avaible] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[Sale] [int] NOT NULL,
	[Lenght] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
 CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED 
(
	[FurnitureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FurnitureType]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FurnitureType](
	[FurnitureTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FurnitureType] PRIMARY KEY CLUSTERED 
(
	[FurnitureTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ManagerID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[PostID] [int] NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[FurnitureID] [int] NOT NULL,
	[ClientID] [int] NOT NULL,
	[ManagerID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 02.10.2022 20:06:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Auth] ON 

INSERT [dbo].[Auth] ([UserID], [Login], [Password], [RoleID]) VALUES (1, N'admin', N'admin', 2)
INSERT [dbo].[Auth] ([UserID], [Login], [Password], [RoleID]) VALUES (2, N'user', N'user', 1)
SET IDENTITY_INSERT [dbo].[Auth] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (1, N'Кузнецов', N'Григорий', N'Куприянович', N'89055371676')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (2, N'Симонов', N'Сергей', N'Владленович', N'89867720945')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (3, N'Мухина', N'Таисия', N'Онисимовна', N'89055371676')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (4, N'Николаева', N'Алевтина', N'Игоревна', N'89319597543')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (5, N'Андреева', N'Варвара', N'Фёдоровна', N'89727448486')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (6, N'Исаева', N'Надежда', N'Парфеньевна', N'89883250162')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (7, N'Мартынов', N'Даниил', N'Алексеевич', N'89598750223')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (8, N'Веселов', N'Анатолий', N'Антонинович', N'89777127821')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (9, N'Кулагина', N'Венера', N'Евгеньевна', N'89812431315')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (10, N'Новиков', N'Дмитрий', N'Русланович', N'89377358015')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (11, N'Кондратьева', N'Юлия', N'Якововна', N'89323575482')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (12, N'Русаков', N'Илья', N'Богданович', N'89105877488')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (13, N'Шаров', N'Серапион', N'Павлович', N'89055371676')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (14, N'Быков', N'Сергей', N'Васильевич', N'89594592565')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (15, N'Фокина', N'Ульяна', N'Антоновна', N'89044299239')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (16, N'Федосеев', N'Матвей', N'Никитевич', N'89504911639')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (17, N'Родионов', N'Игорь', N'Вячеславович', N'89972408928')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (18, N'Вишнякова', N'Эмилия', N'Альбертовна', N'89675176382')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (19, N'Степанова', N'Жанна', N'Геласьевна', N'89339360971')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (20, N'Веселова', N'Любовь', N'Аркадьевна', N'89390747684')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (21, N'Гурьев', N'Альвиан', N'Варламович', N'89541580319')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (22, N'Казакова', N'Василиса', N'Ростиславовна', N'89387779602')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (23, N'Гусева', N'Марфа', N'Ростиславовна', N'89598750223')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (24, N'Куликов', N'Юрий', N'Мэлсович', N'89763654824')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (25, N'Муравьёв', N'Василий', N'Анатольевич', N'89323575482')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (26, N'Терентьева', N'София', N'Ивановна', N'89319557393')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (27, N'Шашкова', N'Людмила', N'Владимировна', N'89590106217')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (28, N'Семёнов', N'Богдан', N'Степанович', N'89294417686')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (29, N'Гаврилов', N'Федосей', N'Ростиславович', N'89617425872')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (30, N'Тарасова', N'Елизавета', N'Мартыновна', N'89731755240')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (31, N'Фёдорова', N'Венера', N'Вадимовна', N'89777127821')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (32, N'Юдин', N'Лаврентий', N'Валерьевич', N'89680823215')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (33, N'Гурьев', N'Валерий', N'Мэлорович', N'89078260395')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (34, N'Уваров', N'Руслан', N'Евгеньевич', N'89515859752')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (35, N'Игнатов', N'Матвей', N'Ефимович', N'89563855275')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (36, N'Колесникова', N'Надежда', N'Константиновна', N'89323575482')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (37, N'Дмитриев', N'Василий', N'Викторович', N'89650071928')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PhoneNumber]) VALUES (38, N'Шарова', N'Ангелина', N'Вадимовна', N'89384822574')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (1, N'Бежевый')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (2, N'Чёрный')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (3, N'Белый')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (4, N'Чёрный/бежевый')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (5, N'Тёмный дуб')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Furniture] ON 

INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (1, 1, N'Орион СБ-2519 Стол', 39800, N'1.jpg', 1, 1, 5, 40, 80, 70)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (2, 2, N'Афина СБ-2236 Пуфик', 2120, N'2.jpg', 1, 2, 0, 50, 80, 60)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (3, 3, N'Макарена СБ-2615 Стенка', 26440, N'3.jpg', 1, 2, 0, 210, 170, 180)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (4, 4, N'Амалия СБ-999/1 Кровать', 141246, N'64.jpg', 1, 3, 25, 220, 180, 180)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (5, 5, N'Лира СБ-2276 Прихожая', 15980, N'5.jpg', 1, 4, 25, 170, 150, 160)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (6, 6, N'Ника СБ-2527 Кровать 900', 4980, N'6.jpg', 1, 1, 5, 210, 180, 160)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (7, 7, N'Дионис СБ-2356 Стол компьютерный', 8980, N'7.jpg', 1, 1, 5, 150, 90, 100)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (8, 8, N'Тумба с раковиной Акватон Америна 60', 10396, N'8.jpg', 1, 3, 5, 70, 50, 70)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (9, 3, N'Прадо СБ-2224 Стенка', 17590, N'9.jpg', 1, 3, 10, 240, 180, 170)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (10, 2, N'Корсика диван', 40600, N'10.jpg', 1, 1, 15, 200, 100, 160)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (11, 4, N'Палермо СБ-2060 Шкаф-купе ', 26290, N'11.jpg', 1, 1, 15, 210, 120, 130)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (12, 1, N'Орион СБ-2520/1 Табурет', 1225, N'12.jpg', 1, 1, 20, 0, 90, 90)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (13, 1, N'Ангелина-200 Кухонный гарнитур ', 23725, N'13.jpg', 1, 3, 25, 150, 180, 160)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (14, 2, N'Версаль СБ-2320 Пуфик', 2930, N'14.jpg', 1, 3, 5, 0, 90, 100)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (15, 3, N'Корсика диван-кровать', 39604, N'15.jpg', 0, 5, 5, 180, 100, 170)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (16, 5, N'Палермо СБ-2060 Шкаф-купе ', 25290, N'16.jpg', 0, 1, 10, 210, 170, 160)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (17, 6, N'Симба СН-13 Кровать 2-х ярусная', 26513, N'17.jpg', 0, 1, 15, 220, 180, 170)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (18, 2, N'Клео СБ-2019 Пуфик', 2500, N'18.jpg', 1, 1, 5, 0, 90, 100)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (19, 4, N'Кито СБ-2347 Комод', 5300, N'19.jpg', 0, 1, 5, 0, 110, 100)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (20, 1, N'Столешница К1', 2680, N'20.jpg', 1, 1, 5, 100, 100, 100)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (21, 5, N'Медея СБ-2454 Комод', 9980, N'21.jpg', 1, 3, 0, 120, 100, 120)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (22, 4, N'Ника СБ-2528 Тумба прикроватная', 2980, N'22.jpg', 1, 1, 0, 100, 90, 90)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (23, 2, N'Кристина СБ-1831 Пуфик', 2660, N'23.jpg', 1, 3, 0, 0, 90, 100)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (24, 2, N'Гретта СБ-1635 Пуфик', 3140, N'24.jpg', 1, 2, 0, 0, 90, 100)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (25, 7, N'Персей СБ-1987 Стол', 11167, N'25.jpg', 1, 1, 5, 110, 100, 90)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (26, 6, N'Мамбо СБ-2752 Комод', 8980, N'26.jpg', 1, 1, 10, 100, 90, 90)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (27, 5, N'Афина СБ-2245 Обувница ', 6630, N'27.jpg', 1, 5, 5, 180, 40, 20)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (28, 3, N'Ронда СБ-2742 Шкаф 3-х дверный', 162506, N'128.jpg', 0, 4, 25, 210, 180, 160)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (29, 8, N'Тумба с раковиной СанТа Омега Люкс 90', 13235, N'29.jpg', 0, 3, 5, 120, 70, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (30, 4, N'Сидней СБ-2582 Зеркало', 1780, N'30.jpg', 0, 5, 25, 0, 100, 80)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (31, 7, N'Дионис СБ-2447 Стеллаж', 4980, N'31.jpg', 0, 1, 5, 120, 120, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (32, 6, N'Ника СБ-2545 Шкаф-купе', 10980, N'32.jpg', 1, 1, 15, 210, 100, 50)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (33, 1, N'Оля М2 Витрина', 13734, N'33.jpg', 1, 1, 25, 100, 100, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (34, 6, N'Персей СБ-1987 Стол', 11167, N'34.jpg', 1, 1, 20, 140, 100, 60)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (35, 5, N'Ника СБ-2336 Вешалка', 2980, N'35.jpg', 1, 1, 25, 0, 90, 80)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (36, 8, N'Шкаф-пенал СанТа Стандарт 50', 6615, N'36.jpg', 1, 3, 5, 120, 40, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (37, 2, N'Афина СБ-2237 Пуфик 1180', 3110, N'37.jpg', 1, 5, 0, 100, 40, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (38, 7, N'Палермо СБ-2060 Шкаф-купе ', 26290, N'38.jpg', 0, 1, 5, 210, 180, 170)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (39, 4, N'Кито СБ-2163 Стеллаж', 1800, N'39.jpg', 0, 1, 25, 160, 80, 70)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (40, 6, N'Ника СБ-2343 Полка', 1980, N'40.jpg', 1, 1, 5, 0, 90, 80)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (41, 3, N'Терра СБ-2797 Шкаф 3-х дверный Венге', 7777, N'41.jpg', 1, 2, 10, 210, 180, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (42, 5, N'Сидней СБ-2587 Стеллаж', 3980, N'42.jpg', 1, 5, 15, 170, 40, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (43, 1, N'Оля М7 Полка торцевая', 5600, N'43.jpg', 1, 1, 10, 120, 40, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (44, 8, N'Шкаф-пенал Misty Балтика 35 ', 3930, N'44.jpg', 1, 3, 10, 160, 40, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (45, 5, N'Сидней СБ-2582 Зеркало', 1780, N'45.jpg', 1, 5, 5, 0, 100, 80)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (46, 7, N'Тесса СБ-2737 Стеллаж со столом ', 10231, N'46.jpg', 1, 4, 0, 160, 100, 60)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (47, 3, N'Фокус СБ-2293 Стол раскладной', 8390, N'47.jpg', 1, 1, 0, 120, 70, 80)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (48, 8, N'Зеркало-шкаф СанТа Стандарт 80', 5138, N'48.jpg', 1, 3, 0, 130, 70, 80)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (49, 7, N'Ника СБ-2342 Полка', 1980, N'49.jpg', 1, 1, 0, 120, 40, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (50, 6, N'Мамбо СБ-2794 Стеллаж', 10980, N'50.jpg', 1, 1, 15, 150, 100, 100)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (51, 8, N'Зеркало-шкаф СанТа Омега', 5096, N'51.jpg', 1, 3, 10, 100, 80, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (52, 1, N'Надежда НП-260 Полка', 2338, N'52.jpg', 1, 1, 5, 0, 100, 40)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (53, 7, N'Стул ИЗИДА', 2190, N'53.jpg', 1, 1, 5, 40, 100, 50)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (54, 3, N'Берлин СБ-2600 Тумба ТВ', 8317, N'54.jpg', 1, 1, 0, 100, 40, 80)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (55, 8, N'Тумба СанТа Омега ТН 60', 4590, N'55.jpg', 1, 3, 5, 100, 50, 50)
INSERT [dbo].[Furniture] ([FurnitureID], [FurnitureTypeID], [Name], [Price], [Photo], [Avaible], [ColorID], [Sale], [Lenght], [Width], [Height]) VALUES (56, 4, N'Полка Дионис СБ-2364', 1180, N'56.jpg', 1, 1, 0, 100, 10, 20)
SET IDENTITY_INSERT [dbo].[Furniture] OFF
GO
SET IDENTITY_INSERT [dbo].[FurnitureType] ON 

INSERT [dbo].[FurnitureType] ([FurnitureTypeID], [Name]) VALUES (1, N'Мебель для кухни')
INSERT [dbo].[FurnitureType] ([FurnitureTypeID], [Name]) VALUES (2, N'Мягкая мебель')
INSERT [dbo].[FurnitureType] ([FurnitureTypeID], [Name]) VALUES (3, N'Мебель для гостиной')
INSERT [dbo].[FurnitureType] ([FurnitureTypeID], [Name]) VALUES (4, N'Мебель для спальни')
INSERT [dbo].[FurnitureType] ([FurnitureTypeID], [Name]) VALUES (5, N'Мебель для прихожей')
INSERT [dbo].[FurnitureType] ([FurnitureTypeID], [Name]) VALUES (6, N'Мебель для детской')
INSERT [dbo].[FurnitureType] ([FurnitureTypeID], [Name]) VALUES (7, N'Мебель для офиса')
INSERT [dbo].[FurnitureType] ([FurnitureTypeID], [Name]) VALUES (8, N'Мебель для ванной')
SET IDENTITY_INSERT [dbo].[FurnitureType] OFF
GO
SET IDENTITY_INSERT [dbo].[Manager] ON 

INSERT [dbo].[Manager] ([ManagerID], [Surname], [Name], [Patronymic], [PostID]) VALUES (1, N'Шакирова', N'Эльза', N'Алексеевна', 1)
INSERT [dbo].[Manager] ([ManagerID], [Surname], [Name], [Patronymic], [PostID]) VALUES (2, N'Иванова', N'Алина', N'Петровна', 2)
INSERT [dbo].[Manager] ([ManagerID], [Surname], [Name], [Patronymic], [PostID]) VALUES (3, N'Курагина', N'Ольга', N'Борисовна', 3)
INSERT [dbo].[Manager] ([ManagerID], [Surname], [Name], [Patronymic], [PostID]) VALUES (4, N'Лопухова', N'Анастасия', N'Васильевна', 4)
SET IDENTITY_INSERT [dbo].[Manager] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (1, 56, 1, 1, CAST(N'2018-01-09' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (2, 55, 3, 3, CAST(N'2018-01-09' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (3, 1, 4, 2, CAST(N'2018-01-10' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (4, 2, 5, 3, CAST(N'2018-01-10' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (5, 3, 6, 3, CAST(N'2018-01-11' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (6, 4, 7, 3, CAST(N'2018-01-11' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (7, 5, 8, 4, CAST(N'2018-01-15' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (8, 11, 10, 2, CAST(N'2018-01-15' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (9, 12, 9, 1, CAST(N'2018-01-16' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (10, 14, 6, 2, CAST(N'2018-01-16' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (11, 16, 11, 2, CAST(N'2018-01-16' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (12, 18, 12, 3, CAST(N'2018-01-17' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (13, 21, 14, 4, CAST(N'2018-01-21' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (14, 22, 15, 1, CAST(N'2018-01-21' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (18, 32, 16, 2, CAST(N'2018-01-25' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (19, 23, 17, 2, CAST(N'2018-01-25' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (20, 41, 18, 3, CAST(N'2018-01-28' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (21, 56, 19, 3, CAST(N'2018-01-31' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (22, 43, 20, 2, CAST(N'2018-02-02' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (23, 21, 2, 3, CAST(N'2018-02-04' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (24, 25, 21, 3, CAST(N'2018-02-04' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (26, 21, 13, 3, CAST(N'2018-02-07' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (27, 42, 23, 2, CAST(N'2018-02-11' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (28, 13, 24, 2, CAST(N'2018-02-12' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (29, 18, 25, 3, CAST(N'2018-02-12' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (30, 19, 26, 3, CAST(N'2018-02-12' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (31, 20, 27, 1, CAST(N'2018-02-15' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (32, 10, 28, 3, CAST(N'2018-02-15' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (33, 5, 2, 2, CAST(N'2018-02-19' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (34, 6, 29, 2, CAST(N'2018-02-22' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (35, 7, 30, 3, CAST(N'2018-02-25' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (36, 8, 31, 2, CAST(N'2018-03-01' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (37, 14, 32, 3, CAST(N'2018-03-06' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (38, 15, 13, 3, CAST(N'2018-03-06' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (39, 17, 33, 1, CAST(N'2018-03-09' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (40, 18, 34, 3, CAST(N'2018-03-13' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (41, 22, 35, 3, CAST(N'2018-03-15' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (42, 29, 35, 3, CAST(N'2018-03-16' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (43, 26, 36, 1, CAST(N'2018-03-17' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (44, 39, 37, 3, CAST(N'2018-03-19' AS Date))
INSERT [dbo].[Order] ([OrderID], [FurnitureID], [ClientID], [ManagerID], [OrderDate]) VALUES (45, 32, 38, 1, CAST(N'2018-03-19' AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([PostID], [Name]) VALUES (1, N'Продавец')
INSERT [dbo].[Post] ([PostID], [Name]) VALUES (2, N'Кассир')
INSERT [dbo].[Post] ([PostID], [Name]) VALUES (3, N'Менеджер')
INSERT [dbo].[Post] ([PostID], [Name]) VALUES (4, N'Директор')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (1, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (2, N'Администратор')
GO
ALTER TABLE [dbo].[Auth]  WITH CHECK ADD  CONSTRAINT [FK_Auth_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Auth] CHECK CONSTRAINT [FK_Auth_Role]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_Color]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_FurnitureType] FOREIGN KEY([FurnitureTypeID])
REFERENCES [dbo].[FurnitureType] ([FurnitureTypeID])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_FurnitureType]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Post]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Furniture] FOREIGN KEY([FurnitureID])
REFERENCES [dbo].[Furniture] ([FurnitureID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Furniture]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Manager] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Manager] ([ManagerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Manager]
GO
USE [master]
GO
ALTER DATABASE [FurnitureSell] SET  READ_WRITE 
GO
