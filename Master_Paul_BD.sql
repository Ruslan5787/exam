USE [Master_Paul_BD]
GO
/****** Object:  Table [dbo].[Material_type_import]    Script Date: 03.05.2025 10:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type_import](
	[Id] [int] NOT NULL,
	[Type_of_material] [nvarchar](50) NOT NULL,
	[Type_of_material2] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Material_type_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_products_import]    Script Date: 03.05.2025 10:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_products_import](
	[Id] [int] NOT NULL,
	[Proudct_Id] [int] NULL,
	[Partner_name_Id] [int] NULL,
	[Products] [nvarchar](100) NOT NULL,
	[Partner_s_name] [nvarchar](50) NOT NULL,
	[Number_of_products] [int] NOT NULL,
	[Date_of_sale] [date] NOT NULL,
 CONSTRAINT [PK_Partner_products_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners_import]    Script Date: 03.05.2025 10:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners_import](
	[Id] [int] NOT NULL,
	[Partner_Type] [nvarchar](50) NOT NULL,
	[Partner_name] [nvarchar](50) NOT NULL,
	[Director] [nvarchar](50) NOT NULL,
	[Partner_email_address] [nvarchar](50) NOT NULL,
	[Partner_phone_number] [nvarchar](50) NOT NULL,
	[Partner_legal_address] [nvarchar](100) NOT NULL,
	[INN] [bigint] NOT NULL,
	[Rating] [tinyint] NOT NULL,
 CONSTRAINT [PK_Partners_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type]    Script Date: 03.05.2025 10:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type](
	[Id] [int] NOT NULL,
	[Product_Type] [nvarchar](50) NOT NULL,
	[Product_type_coefficient] [real] NOT NULL,
 CONSTRAINT [PK_Product_type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 03.05.2025 10:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL,
	[Material_Type_Id] [int] NULL,
	[Product_Type_Id] [int] NULL,
	[Product_Type] [nvarchar](50) NOT NULL,
	[Product_Name] [nvarchar](200) NOT NULL,
	[Article_number] [bigint] NOT NULL,
	[Minimum_cost_for_a_partner] [real] NOT NULL,
	[Material] [nvarchar](100) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Material_type_import] ([Id], [Type_of_material], [Type_of_material2]) VALUES (1, N'Тип материала 1', N'0,10%')
INSERT [dbo].[Material_type_import] ([Id], [Type_of_material], [Type_of_material2]) VALUES (2, N'Тип материала 2', N'0,95%')
INSERT [dbo].[Material_type_import] ([Id], [Type_of_material], [Type_of_material2]) VALUES (3, N'Тип материала 3', N'0,28%')
INSERT [dbo].[Material_type_import] ([Id], [Type_of_material], [Type_of_material2]) VALUES (4, N'Тип материала 4', N'0,55%')
INSERT [dbo].[Material_type_import] ([Id], [Type_of_material], [Type_of_material2]) VALUES (5, N'Тип материала 5', N'0,34%')
GO
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (1, NULL, NULL, N'Паркетная доска Ясень темный однополосная 14 мм', N'База Строитель', 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (2, NULL, NULL, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'База Строитель', 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (3, NULL, NULL, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'База Строитель', 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (4, NULL, NULL, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'Паркет 29', 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (5, NULL, NULL, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'Паркет 29', 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (6, NULL, NULL, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'Паркет 29', 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (7, NULL, NULL, N'Паркетная доска Ясень темный однополосная 14 мм', N'Паркет 29', 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (8, NULL, NULL, N'Паркетная доска Ясень темный однополосная 14 мм', N'Стройсервис', 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (9, NULL, NULL, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'Стройсервис', 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (10, NULL, NULL, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'Ремонт и отделка', 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (11, NULL, NULL, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'Ремонт и отделка', 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (12, NULL, NULL, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'Ремонт и отделка', 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (13, NULL, NULL, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'МонтажПро', 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (14, NULL, NULL, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'МонтажПро', 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (15, NULL, NULL, N'Паркетная доска Ясень темный однополосная 14 мм', N'МонтажПро', 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Partner_products_import] ([Id], [Proudct_Id], [Partner_name_Id], [Products], [Partner_s_name], [Number_of_products], [Date_of_sale]) VALUES (16, NULL, NULL, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'МонтажПро', 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[Partners_import] ([Id], [Partner_Type], [Partner_name], [Director], [Partner_email_address], [Partner_phone_number], [Partner_legal_address], [INN], [Rating]) VALUES (1, N'ЗАО', N'База Строитель', N'Иванова Александра Ивановна', N'aleksandraivanova@ml.ru', N'493 123 45 67', N'652050, Кемеровская область, город Юрга, ул. Лесная, 15', 2222455179, 7)
INSERT [dbo].[Partners_import] ([Id], [Partner_Type], [Partner_name], [Director], [Partner_email_address], [Partner_phone_number], [Partner_legal_address], [INN], [Rating]) VALUES (2, N'ООО', N'Паркет 29', N'Петров Василий Петрович', N'vppetrov@vl.ru', N'987 123 56 78', N'164500, Архангельская область, город Северодвинск, ул. Строителей, 18', 3333888520, 7)
INSERT [dbo].[Partners_import] ([Id], [Partner_Type], [Partner_name], [Director], [Partner_email_address], [Partner_phone_number], [Partner_legal_address], [INN], [Rating]) VALUES (3, N'ПАО', N'Стройсервис', N'Соловьев Андрей Николаевич', N'ansolovev@st.ru', N'812 223 32 00', N'188910, Ленинградская область, город Приморск, ул. Парковая, 21', 4440391035, 7)
INSERT [dbo].[Partners_import] ([Id], [Partner_Type], [Partner_name], [Director], [Partner_email_address], [Partner_phone_number], [Partner_legal_address], [INN], [Rating]) VALUES (4, N'ОАО', N'Ремонт и отделка', N'Воробьева Екатерина Валерьевна', N'ekaterina.vorobeva@ml.ru', N'444 222 33 11', N'143960, Московская область, город Реутов, ул. Свободы, 51', 1111520857, 5)
INSERT [dbo].[Partners_import] ([Id], [Partner_Type], [Partner_name], [Director], [Partner_email_address], [Partner_phone_number], [Partner_legal_address], [INN], [Rating]) VALUES (5, N'ЗАО', N'МонтажПро', N'Степанов Степан Сергеевич', N'stepanov@stepan.ru', N'912 888 33 33', N'309500, Белгородская область, город Старый Оскол, ул. Рабочая, 122', 5552431140, 10)
GO
INSERT [dbo].[Product_type] ([Id], [Product_Type], [Product_type_coefficient]) VALUES (1, N'Ламинат', 2.35)
INSERT [dbo].[Product_type] ([Id], [Product_Type], [Product_type_coefficient]) VALUES (2, N'Массивная доска', 5.15)
INSERT [dbo].[Product_type] ([Id], [Product_Type], [Product_type_coefficient]) VALUES (3, N'Паркетная доска', 4.34)
INSERT [dbo].[Product_type] ([Id], [Product_Type], [Product_type_coefficient]) VALUES (4, N'Пробковое покрытие', 1.5)
GO
INSERT [dbo].[Products] ([Id], [Material_Type_Id], [Product_Type_Id], [Product_Type], [Product_Name], [Article_number], [Minimum_cost_for_a_partner], [Material]) VALUES (1, NULL, NULL, N'Паркетная доска', N'Паркетная доска Ясень темный однополосная 14 мм', 8758385, 4456.9, NULL)
INSERT [dbo].[Products] ([Id], [Material_Type_Id], [Product_Type_Id], [Product_Type], [Product_Name], [Article_number], [Minimum_cost_for_a_partner], [Material]) VALUES (2, NULL, NULL, N'Паркетная доска', N'Инженерная доска Дуб Французская елка однополосная 12 мм', 8858958, 7330.99, NULL)
INSERT [dbo].[Products] ([Id], [Material_Type_Id], [Product_Type_Id], [Product_Type], [Product_Name], [Article_number], [Minimum_cost_for_a_partner], [Material]) VALUES (3, NULL, NULL, N'Ламинат', N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 7750282, 1799.33, NULL)
INSERT [dbo].[Products] ([Id], [Material_Type_Id], [Product_Type_Id], [Product_Type], [Product_Name], [Article_number], [Minimum_cost_for_a_partner], [Material]) VALUES (4, NULL, NULL, N'Ламинат', N'Ламинат Дуб серый 32 класс 8 мм с фаской', 7028748, 3890.41, NULL)
INSERT [dbo].[Products] ([Id], [Material_Type_Id], [Product_Type_Id], [Product_Type], [Product_Name], [Article_number], [Minimum_cost_for_a_partner], [Material]) VALUES (5, NULL, NULL, N'Пробковое покрытие', N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 5012543, 5450.59, NULL)
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Partners_import] FOREIGN KEY([Partner_name_Id])
REFERENCES [dbo].[Partners_import] ([Id])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Partners_import]
GO
ALTER TABLE [dbo].[Partner_products_import]  WITH CHECK ADD  CONSTRAINT [FK_Partner_products_import_Products] FOREIGN KEY([Proudct_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Partner_products_import] CHECK CONSTRAINT [FK_Partner_products_import_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Material_type_import] FOREIGN KEY([Material_Type_Id])
REFERENCES [dbo].[Material_type_import] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Material_type_import]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Product_type] FOREIGN KEY([Product_Type_Id])
REFERENCES [dbo].[Product_type] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Product_type]
GO
