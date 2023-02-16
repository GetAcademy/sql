
/****** Object:  Table [dbo].[Person]    Script Date: 16.02.2023 14:01:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] NOT NULL,
	[FirstName] [varchar](max) NOT NULL,
	[BirthYear] [int] NULL,
	[PlaceId] [int] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 16.02.2023 14:01:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Place] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Person] ([Id], [FirstName], [BirthYear], [PlaceId]) VALUES (2, N'Per', NULL, 1)
GO
INSERT [dbo].[Person] ([Id], [FirstName], [BirthYear], [PlaceId]) VALUES (3, N'Pål', NULL, 2)
GO
INSERT [dbo].[Person] ([Id], [FirstName], [BirthYear], [PlaceId]) VALUES (5, N'Kåre', 2000, 1)
GO
INSERT [dbo].[Person] ([Id], [FirstName], [BirthYear], [PlaceId]) VALUES (6, N'Lise', NULL, 2)
GO
INSERT [dbo].[Person] ([Id], [FirstName], [BirthYear], [PlaceId]) VALUES (7, N'Ole', 1980, NULL)
GO
INSERT [dbo].[Place] ([Id], [Name], [Country]) VALUES (1, N'Stavern', N'Norge')
GO
INSERT [dbo].[Place] ([Id], [Name], [Country]) VALUES (2, N'New York', N'USA')
GO
INSERT [dbo].[Place] ([Id], [Name], [Country]) VALUES (3, N'Stockholm', N'Sverige')
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Place]
GO
