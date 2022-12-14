USE [test5]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[email] [varchar](255) NOT NULL,
	[pass] [varchar](150) NOT NULL,
	[role] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[serial] [tinyint] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[semester] [varchar](150) NOT NULL,
	[scode] [varchar](150) NOT NULL,
	[semail] [varchar](255) NOT NULL,
	[present] [bit] NOT NULL,
	[description] [varchar](150) NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[serial] ASC,
	[gname] ASC,
	[semester] ASC,
	[scode] ASC,
	[semail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[name] [varchar](150) NOT NULL,
	[semester] [varchar](150) NOT NULL,
	[scode] [varchar](150) NOT NULL,
	[lemail] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[name] ASC,
	[semester] ASC,
	[scode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[email] [varchar](255) NOT NULL,
	[username] [varchar](150) NOT NULL,
	[avatar] [varchar](150) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[room] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[gname] [varchar](150) NOT NULL,
	[semester] [varchar](150) NOT NULL,
	[scode] [varchar](150) NOT NULL,
	[serial] [tinyint] NOT NULL,
	[date] [date] NOT NULL,
	[slot] [tinyint] NOT NULL,
	[room] [varchar](150) NOT NULL,
	[attended] [bit] NOT NULL,
 CONSTRAINT [PK_Session1] PRIMARY KEY CLUSTERED 
(
	[gname] ASC,
	[semester] ASC,
	[scode] ASC,
	[serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[email] [varchar](255) NOT NULL,
	[username] [varchar](150) NOT NULL,
	[avatar] [varchar](150) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[email] [varchar](255) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[semester] [varchar](150) NOT NULL,
	[scode] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[email] ASC,
	[name] ASC,
	[semester] ASC,
	[scode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[scode] [varchar](150) NOT NULL,
	[name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject_1] PRIMARY KEY CLUSTERED 
(
	[scode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 07/11/2022 02:44:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[slot] [tinyint] NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[slot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'1', N'1', N'student')
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'admin', N'123', N'staff')
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'gura@gmail.com', N'gawr', N'student')
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'hanhnt84', N'123l', N'lecture')
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'huectm', N'123l', N'lecture')
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'laplus', N'la+', N'student')
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'longdq', N'123l', N'lecture')
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'nangnth', N'123l', N'lecture')
INSERT [dbo].[Account] ([email], [pass], [role]) VALUES (N'sonnt', N'123l', N'lecture')
GO
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (1, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (1, N'PRJ301.M3', N'FA22', N'PRJ301', N'laplus', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (1, N'SE1640', N'FA22', N'MAS291', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (2, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (2, N'SE1640', N'FA22', N'MAS291', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (3, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (3, N'SE1640', N'FA22', N'MAS291', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (4, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (5, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (5, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (6, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (6, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (7, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (7, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (8, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (8, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (9, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (9, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (10, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (10, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (11, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (11, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (12, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (12, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (13, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (13, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (14, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (14, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (15, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (15, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (16, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (16, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (17, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (17, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (18, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (18, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (19, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (19, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (20, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (20, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (21, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (21, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (22, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (22, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (23, N'1', N'1', N'1', N'1', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (23, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (24, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (24, N'PRJ301.M3', N'FA22', N'PRJ301', N'laplus', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (25, N'1', N'1', N'1', N'1', 1, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (25, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (26, N'1', N'1', N'1', N'1', 1, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (26, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (27, N'1', N'1', N'1', N'1', 1, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (27, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (28, N'1', N'1', N'1', N'1', 1, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (28, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (29, N'1', N'1', N'1', N'1', 1, NULL)
INSERT [dbo].[Attendance] ([serial], [gname], [semester], [scode], [semail], [present], [description]) VALUES (29, N'PRJ301.M3', N'FA22', N'PRJ301', N'gura@gmail.com', 0, NULL)
GO
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'1', N'1', N'1', N'1')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', N'sonnt')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'PRJ301.M3', N'SP23', N'PRJ301', N'sonnt')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'SE1626-NET', N'FA22', N'ITE302c', N'nangnth')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'SE1629-NET', N'FA22', N'SWR302', N'huectm')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'SE1629-NET', N'FA22', N'SWT301', N'hanhnt84')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'SE1640', N'FA22', N'MAS291', N'longdq')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'SE1640', N'FA22', N'PRJ301', N'nangnth')
GO
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'1', N'1', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'hanhnt84', N'Nguyen Thi Hanh', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'huectm', N'Chu Thi Minh Hue', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'longdq', N'Dang Quang Long', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'nangnth', N'Nguyen Thi Hai Nang', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'sonnt', N'Ngo Tung Son', NULL)
GO
INSERT [dbo].[Room] ([room]) VALUES (N'AL-101')
INSERT [dbo].[Room] ([room]) VALUES (N'AL-102')
INSERT [dbo].[Room] ([room]) VALUES (N'AL-103')
INSERT [dbo].[Room] ([room]) VALUES (N'AL-201')
INSERT [dbo].[Room] ([room]) VALUES (N'AL-202')
INSERT [dbo].[Room] ([room]) VALUES (N'BE-101')
INSERT [dbo].[Room] ([room]) VALUES (N'BE-102')
INSERT [dbo].[Room] ([room]) VALUES (N'BE-103')
INSERT [dbo].[Room] ([room]) VALUES (N'BE-201')
INSERT [dbo].[Room] ([room]) VALUES (N'BE-202')
INSERT [dbo].[Room] ([room]) VALUES (N'BE-203')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-101')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-102')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-103')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-201')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-202')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-203')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-204')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-301')
GO
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 1, CAST(N'2022-09-05' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 2, CAST(N'2022-09-07' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 3, CAST(N'2022-09-09' AS Date), 3, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 4, CAST(N'2022-09-12' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 5, CAST(N'2022-09-14' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 6, CAST(N'2022-09-16' AS Date), 3, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 7, CAST(N'2022-09-19' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 8, CAST(N'2022-09-21' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 9, CAST(N'2022-09-23' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 10, CAST(N'2022-09-26' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 11, CAST(N'2022-09-28' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 12, CAST(N'2022-09-30' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 13, CAST(N'2022-10-03' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 14, CAST(N'2022-10-05' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 15, CAST(N'2022-10-07' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 16, CAST(N'2022-10-10' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 17, CAST(N'2022-10-12' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 18, CAST(N'2022-10-14' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 19, CAST(N'2022-10-16' AS Date), 1, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 20, CAST(N'2022-10-16' AS Date), 2, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 21, CAST(N'2022-10-16' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 22, CAST(N'2022-10-17' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 23, CAST(N'2022-10-19' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 24, CAST(N'2022-10-21' AS Date), 3, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 25, CAST(N'2022-10-31' AS Date), 3, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 26, CAST(N'2022-11-02' AS Date), 3, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 27, CAST(N'2022-11-04' AS Date), 3, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 28, CAST(N'2022-11-07' AS Date), 3, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', 29, CAST(N'2022-11-09' AS Date), 3, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 1, CAST(N'2022-09-05' AS Date), 4, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 2, CAST(N'2022-09-07' AS Date), 4, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 3, CAST(N'2022-09-09' AS Date), 4, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 4, CAST(N'2022-09-12' AS Date), 4, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 5, CAST(N'2022-09-14' AS Date), 4, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 6, CAST(N'2022-09-16' AS Date), 4, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 7, CAST(N'2022-09-19' AS Date), 4, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 8, CAST(N'2022-09-21' AS Date), 4, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1640', N'FA22', N'MAS291', 9, CAST(N'2022-09-23' AS Date), 4, N'DE-204', 1)
GO
INSERT [dbo].[Student] ([email], [username], [avatar]) VALUES (N'1', N'tester', NULL)
INSERT [dbo].[Student] ([email], [username], [avatar]) VALUES (N'gura@gmail.com', N'Gawr Gura', NULL)
INSERT [dbo].[Student] ([email], [username], [avatar]) VALUES (N'laplus', N'Laplus Darkness', NULL)
GO
INSERT [dbo].[Student_Group] ([email], [name], [semester], [scode]) VALUES (N'1', N'1', N'1', N'1')
INSERT [dbo].[Student_Group] ([email], [name], [semester], [scode]) VALUES (N'gura@gmail.com', N'PRJ301.M3', N'FA22', N'PRJ301')
INSERT [dbo].[Student_Group] ([email], [name], [semester], [scode]) VALUES (N'gura@gmail.com', N'SE1626-NET', N'FA22', N'ITE302c')
INSERT [dbo].[Student_Group] ([email], [name], [semester], [scode]) VALUES (N'gura@gmail.com', N'SE1629-NET', N'FA22', N'SWR302')
INSERT [dbo].[Student_Group] ([email], [name], [semester], [scode]) VALUES (N'gura@gmail.com', N'SE1629-NET', N'FA22', N'SWT301')
INSERT [dbo].[Student_Group] ([email], [name], [semester], [scode]) VALUES (N'gura@gmail.com', N'SE1640', N'FA22', N'MAS291')
INSERT [dbo].[Student_Group] ([email], [name], [semester], [scode]) VALUES (N'laplus', N'PRJ301.M3', N'FA22', N'PRJ301')
GO
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'1', N'1')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'ITE302c', N'Ethics in IT')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'MAS291', N'Statistics and Probability')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'PRJ301', N'Java web ')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'SWR302', N'Software Requirement')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'SWT301', N'Software Testing')
GO
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (1, N'7:30-9:00')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (2, N'9:10-10:40')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (3, N'10:50-12:20')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (4, N'12:50-14:20')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (5, N'14:30-16:00')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (6, N'16:10-17:40')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (7, N'17:50-19:20')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (8, N'19:30-21:00')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student_Group] FOREIGN KEY([semail], [gname], [semester], [scode])
REFERENCES [dbo].[Student_Group] ([email], [name], [semester], [scode])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student_Group]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecture] FOREIGN KEY([lemail])
REFERENCES [dbo].[Lecture] ([email])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecture]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([scode])
REFERENCES [dbo].[Subject] ([scode])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Lecture]  WITH CHECK ADD  CONSTRAINT [FK_Lecture_Account] FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Lecture] CHECK CONSTRAINT [FK_Lecture_Account]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session1_Group] FOREIGN KEY([gname], [semester], [scode])
REFERENCES [dbo].[Group] ([name], [semester], [scode])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session1_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session1_Room] FOREIGN KEY([room])
REFERENCES [dbo].[Room] ([room])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session1_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session1_TimeSlot] FOREIGN KEY([slot])
REFERENCES [dbo].[TimeSlot] ([slot])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session1_TimeSlot]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account] FOREIGN KEY([email])
REFERENCES [dbo].[Account] ([email])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Account]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([name], [semester], [scode])
REFERENCES [dbo].[Group] ([name], [semester], [scode])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([email])
REFERENCES [dbo].[Student] ([email])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
