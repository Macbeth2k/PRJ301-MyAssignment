USE [test2]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 30/10/2022 22:01:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[email] [varchar](255) NOT NULL,
	[pass] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account1] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 30/10/2022 22:01:55 ******/
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
/****** Object:  Table [dbo].[Group]    Script Date: 30/10/2022 22:01:55 ******/
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
/****** Object:  Table [dbo].[Lecture]    Script Date: 30/10/2022 22:01:55 ******/
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
/****** Object:  Table [dbo].[Room]    Script Date: 30/10/2022 22:01:55 ******/
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
/****** Object:  Table [dbo].[Session]    Script Date: 30/10/2022 22:01:55 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 30/10/2022 22:01:55 ******/
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
/****** Object:  Table [dbo].[Student_Group]    Script Date: 30/10/2022 22:01:55 ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 30/10/2022 22:01:55 ******/
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
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 30/10/2022 22:01:55 ******/
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
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'ANM1702', N'SP23', N'DEC506', N'kaito@gmail.com')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'ANM1702', N'SP23', N'HOL101', N'anhnh@fpt.edu.vn')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'PRJ301.M3', N'FA22', N'PRJ301', N'sonnt@fpt.edu.vn')
INSERT [dbo].[Group] ([name], [semester], [scode], [lemail]) VALUES (N'SE1601', N'FA22', N'MAS291', N'sonnt@fpt.edu.vn')
GO
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'anhnh@fpt.edu.vn', N'Hoang Anh sensei ', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'conan@gmail.com', N'Conan', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'kaito@gmail.com', N'Kaitokid', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'missfptu@fpt.edu.vn', N'Miss FPTU', NULL)
INSERT [dbo].[Lecture] ([email], [username], [avatar]) VALUES (N'sonnt@fpt.edu.vn', N'sonnt', NULL)
GO
INSERT [dbo].[Room] ([room]) VALUES (N'AL-102')
INSERT [dbo].[Room] ([room]) VALUES (N'BE-101')
INSERT [dbo].[Room] ([room]) VALUES (N'DE-204')
GO
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'ANM1702', N'SP23', N'DEC506', 1, CAST(N'2022-10-30' AS Date), 1, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'ANM1702', N'SP23', N'DEC506', 2, CAST(N'2022-10-30' AS Date), 2, N'DE-204', 1)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'ANM1702', N'SP23', N'DEC506', 3, CAST(N'2022-10-31' AS Date), 1, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'ANM1702', N'SP23', N'DEC506', 4, CAST(N'2022-11-01' AS Date), 1, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'ANM1702', N'SP23', N'DEC506', 5, CAST(N'2022-11-02' AS Date), 3, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'ANM1702', N'SP23', N'DEC506', 6, CAST(N'2022-11-03' AS Date), 4, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'ANM1702', N'SP23', N'DEC506', 7, CAST(N'2022-11-04' AS Date), 5, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'ANM1702', N'SP23', N'DEC506', 8, CAST(N'2022-11-05' AS Date), 6, N'DE-204', 0)
INSERT [dbo].[Session] ([gname], [semester], [scode], [serial], [date], [slot], [room], [attended]) VALUES (N'SE1601', N'FA22', N'MAS291', 1, CAST(N'2022-10-30' AS Date), 1, N'DE-204', 1)
GO
INSERT [dbo].[Student] ([email], [username], [avatar]) VALUES (N'anhvdhe160063@fpt.edu.vn', N'Duc Anh', NULL)
INSERT [dbo].[Student] ([email], [username], [avatar]) VALUES (N'gura@fpt.edu.vn', N'Gura', NULL)
INSERT [dbo].[Student] ([email], [username], [avatar]) VALUES (N'iamhornry@fpt.edu.vn', N'Marine', NULL)
INSERT [dbo].[Student] ([email], [username], [avatar]) VALUES (N'kiara@fpt.edu.vn', N'Kiara', NULL)
INSERT [dbo].[Student] ([email], [username], [avatar]) VALUES (N'laplus@fpt.edu.vn', N'Laplus', NULL)
GO
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'DEC506', N'Dectective')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'HOL101', N'Hololive idol')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'MAS291', N'Statistics and Probability')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'PRJ301', N'	Java Web Application Development')
INSERT [dbo].[Subject] ([scode], [name]) VALUES (N'SED112', N'Sex Education')
GO
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (1, N'7:30-9:00')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (2, N'9:10-10:40')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (3, N'10:50-12:20')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (4, N'12:50-14:20')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (5, N'14:30-16:00')
INSERT [dbo].[TimeSlot] ([slot], [description]) VALUES (6, N'16:10-17:40')
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
