USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[Book_Issues]    Script Date: 10/9/2020 2:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Issues](
	[Bk_Issue_Id] [varchar](10) NOT NULL,
	[Date_Of_Issue] [date] NULL,
	[Date_Of_Return] [varchar](10) NULL,
	[Book_Id] [varchar](10) NULL,
	[User_id_] [varchar](10) NULL,
 CONSTRAINT [Books_Issues_Bk_Issue_Id_PK] PRIMARY KEY CLUSTERED 
(
	[Bk_Issue_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 10/9/2020 2:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Book_Id] [varchar](10) NOT NULL,
	[Book_Serial_Num] [varchar](10) NULL,
	[Bool_Name] [nvarchar](100) NULL,
	[Author_Name] [nvarchar](100) NULL,
	[Book_Edition] [varchar](100) NULL,
	[category_id] [varchar](100) NULL,
 CONSTRAINT [Books_Book_Id_PK] PRIMARY KEY CLUSTERED 
(
	[Book_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stocks]    Script Date: 10/9/2020 2:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stocks](
	[Stock_Id] [varchar](10) NOT NULL,
	[Stock] [varchar](10) NULL,
	[Book_id] [varchar](10) NULL,
 CONSTRAINT [Stocks_Stock_Id_PK] PRIMARY KEY CLUSTERED 
(
	[Stock_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/9/2020 2:18:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_Id_] [varchar](10) NOT NULL,
	[Roles_Id] [varchar](10) NULL,
	[Name_] [varchar](10) NULL,
	[Degree_Program] [varchar](10) NULL,
	[Contact] [varchar](10) NULL,
	[Year_] [date] NULL,
	[Address_] [varchar](10) NULL,
 CONSTRAINT [User_Id_PK] PRIMARY KEY CLUSTERED 
(
	[User_Id_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book_Issues]  WITH CHECK ADD  CONSTRAINT [Book_Issues_Book_Id_FK] FOREIGN KEY([Book_Id])
REFERENCES [dbo].[Books] ([Book_Id])
GO
ALTER TABLE [dbo].[Book_Issues] CHECK CONSTRAINT [Book_Issues_Book_Id_FK]
GO
ALTER TABLE [dbo].[Book_Issues]  WITH CHECK ADD  CONSTRAINT [Book_Issues_User_id_FK] FOREIGN KEY([User_id_])
REFERENCES [dbo].[Users] ([User_Id_])
GO
ALTER TABLE [dbo].[Book_Issues] CHECK CONSTRAINT [Book_Issues_User_id_FK]
GO
