USE [ProductionSchedulingSystem_DB]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[atid] [int] NOT NULL,
	[waid] [int] NULL,
	[actualquantity] [int] NULL,
	[alpha] [float] NULL,
	[note] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[dname] [nvarchar](100) NOT NULL,
	[type] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[ename] [nvarchar](100) NOT NULL,
	[did] [int] NULL,
	[phonenumber] [nvarchar](15) NULL,
	[address] [nvarchar](255) NULL,
	[sid] [int] NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[url] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanDetails]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanDetails](
	[pdid] [int] IDENTITY(1,1) NOT NULL,
	[phid] [int] NULL,
	[sid] [int] NULL,
	[date] [date] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK__PlanDeta__B7E745CD265F44B2] PRIMARY KEY CLUSTERED 
(
	[pdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlanHeaders]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanHeaders](
	[phid] [int] IDENTITY(1,1) NOT NULL,
	[plid] [int] NULL,
	[pid] [int] NULL,
	[quantity] [int] NULL,
	[estimatedeffort] [float] NULL,
 CONSTRAINT [PK__PlanHead__80E19250AEF340F1] PRIMARY KEY CLUSTERED 
(
	[phid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plans]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plans](
	[plid] [int] IDENTITY(1,1) NOT NULL,
	[plname] [nvarchar](100) NOT NULL,
	[startdate] [date] NOT NULL,
	[enddate] [date] NOT NULL,
	[did] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[plid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [nvarchar](100) NOT NULL,
	[description] [nvarchar](255) NULL,
	[price] [decimal](10, 2) NULL,
 CONSTRAINT [PK__Products__B40CC6ED36CCA5BF] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleFeatures]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleFeatures](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_RoleFeatures] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[rname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salaries]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salaries](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[slevel] [nvarchar](10) NOT NULL,
	[salary] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shifts]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shifts](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[sname] [nvarchar](10) NOT NULL,
	[starttime] [time](7) NOT NULL,
	[endtime] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[uid] [int] NOT NULL,
	[rid] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[uid] ASC,
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[eid] [int] NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkAssignments]    Script Date: 12/12/2024 10:33:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkAssignments](
	[waid] [int] IDENTITY(1,1) NOT NULL,
	[pdid] [int] NULL,
	[eid] [int] NULL,
	[quantity] [int] NOT NULL,
	[note] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[waid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([did], [dname], [type]) VALUES (1, N'Administration Department', N'Head Office')
INSERT [dbo].[Departments] ([did], [dname], [type]) VALUES (2, N'Human Resources Department', N'Head Office')
INSERT [dbo].[Departments] ([did], [dname], [type]) VALUES (3, N'Planning Department', N'Head Office')
INSERT [dbo].[Departments] ([did], [dname], [type]) VALUES (4, N'Accounting Department', N'Head Office')
INSERT [dbo].[Departments] ([did], [dname], [type]) VALUES (5, N'Production Workshop No. 1', N'Production')
INSERT [dbo].[Departments] ([did], [dname], [type]) VALUES (6, N'Production Workshop No. 2', N'Production')
INSERT [dbo].[Departments] ([did], [dname], [type]) VALUES (7, N'Production Workshop No. 3', N'Production')
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (1, N'Alice Johnson', 1, N'0123456789', N'123 Main St, City A', 1, 0, CAST(N'2004-10-20' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (2, N'Bob Smith', 2, N'0987654321', N'456 Elm St, City A', 2, 1, CAST(N'1980-09-02' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (3, N'Charlie Brown', 3, N'0112233445', N'789 Oak St, City A', 3, 1, CAST(N'1998-04-01' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (4, N'Diana Prince', 4, N'0223344556', N'101 Pine St, City A', 1, 0, CAST(N'1972-06-22' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (5, N'Eve Adams', 5, N'0334455667', N'111 Maple St, City B', 2, 0, CAST(N'2001-05-21' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (9, N'Henry Ford', 6, N'0778899001', N'555 Walnut St, City C', 2, 1, CAST(N'2000-03-29' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (13, N'Luke Skywalker', 7, N'1212233445', N'999 Ash St, City D', 3, 1, CAST(N'1999-02-11' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (18, N'Alice Smith', 5, N'0334455669', N'333 Pine St, City B', 2, 0, CAST(N'2003-01-23' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (19, N'Michael Brown', 5, N'0334455670', N'444 Cedar St, City B', 3, 1, CAST(N'2001-12-12' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (20, N'Laura Davis', 5, N'0334455671', N'555 Birch St, City B', 1, 0, CAST(N'1992-10-21' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (22, N'Sophia Wilson', 5, N'0334455673', N'777 Walnut St, City B', 3, 0, CAST(N'1993-07-02' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (23, N'James Martinez', 6, N'0344455674', N'888 Chestnut St, City C', 1, 1, CAST(N'1996-08-25' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (24, N'Isabella Clark', 6, N'0344455675', N'999 Redwood St, City C', 2, 0, CAST(N'2000-09-16' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (28, N'Emily Lee', 6, N'0344455679', N'1313 Cypress St, City C', 3, 0, CAST(N'2002-11-13' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (30, N'Alexander Young', 7, N'0354455681', N'1515 Olive St, City D', 2, 0, CAST(N'2005-10-10' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (35, N'Ethan Miller', 2, N'0312312312', N'Hola Park', 2, 1, CAST(N'1990-12-21' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (36, N'Olivia Johnson', 3, N'0312032123', N'CualaLamBua', 1, 0, CAST(N'1992-02-20' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (37, N'Liam Anderson', 1, N'0312332021', N'ThailandCity', 2, 0, CAST(N'1999-04-09' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (38, N'Sophia Williams', 6, N'0392821231', N'Husasa', 3, 0, CAST(N'2003-02-10' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (39, N'James Brown', 4, N'0329192313', N'Katanaba', 1, 1, CAST(N'2000-09-02' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (41, N'Lucas Martinez', 2, N'0983219282', N'Olivialy Mosco', 2, 1, CAST(N'1992-04-10' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (42, N'Isabella Garcia', 1, N'0988212317', N'MaocaoTq', 3, 0, CAST(N'1997-05-29' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (44, N'Mia Wilson', 3, N'0984288422', N'Suavaenu', 1, 0, CAST(N'2001-09-17' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (45, N'Chu Bo Doi', 1, N'0981439283', N'Thach Hoa', 1, 0, CAST(N'2024-10-26' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (46, N'Chu Bo Doi2', 1, N'098143132123', N'Thach Hoa1', 2, 0, CAST(N'2024-10-10' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (50, N'Chu Bo Doi1111', 1, N'0981439283', N'Thach Hoa', 2, 0, CAST(N'2024-10-09' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (51, N'Chu Bo Doi123', 1, N'09814392832231', N'Thach Hoa', 1, 0, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (53, N'Tran duc anh22', 1, N'092392192', N'HANOI', 3, 0, CAST(N'2024-10-12' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (54, N'Blue', 1, N'323121321312', N'HCM', 2, 1, CAST(N'2024-10-11' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (55, N'BlueDeptrai', 7, N'039284213', N'NhaTrang', 3, 1, CAST(N'2024-10-07' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (56, N'van ngon', 5, N'cuu be', N'jasss', 2, 1, CAST(N'2024-10-11' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (57, N'blc', 1, N'14241212', N'kdkask', 3, 1, CAST(N'2024-10-11' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (58, N'anhoicuuem', 6, N'2200256', N'Omachi', 1, 1, CAST(N'2024-10-11' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (59, N'Chu Bo Doi', 5, N'0981439283', N'Thach Hoa', 2, 1, CAST(N'2024-10-17' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (60, N'Chu Bo Doi', 5, N'0981439283', N'Thach Hoa', 2, 0, CAST(N'2024-10-13' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (62, N'Chu Bo Doi', 1, N'0981439283', N'Thach Hoa', 1, 0, CAST(N'2024-10-03' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (63, N'hoang', 5, N'012931212312', N'hanoi', 3, 1, CAST(N'2024-10-17' AS Date))
INSERT [dbo].[Employees] ([eid], [ename], [did], [phonenumber], [address], [sid], [gender], [dob]) VALUES (64, N'chiu', 5, N'1321013012', N'nb', 1, 1, CAST(N'2024-12-06' AS Date))
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (1, N'Create Employee', N'/employee/create')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (2, N'Update Employee', N'/employee/update')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (3, N'View Employee List', N'/employee/list')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (4, N'Delete Employee', N'/employee/delete')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (5, N'Create Production Plan', N'/productionplan/create')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (6, N'Update Production Plan', N'/productionplan/update')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (7, N'Delete Production Plan', N'/productionplan/delete')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (8, N'View Production Plan', N'/productionplan/list')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (9, N'View Efficiency Reports', N'/plan/report')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (10, N'Create Daily Production Plan', N'/plandetails/create')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (11, N'Update Daily Production Plan', N'/plandetails/update')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (12, N'View Daily Production Plan', N'/plandetails/view')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (13, N'Assign Work to Employee', N'/work/assign')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (14, N'Take Attendance', N'/attendance/take')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (15, N'Update Attendance', N'/attendance/update')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (16, N'View Attendance Report', N'/attendance/view')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (17, N'Generate Salary Report', N'/salary/report')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (18, N'Filter Employee', N'/employee/filter')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (19, N'Filter Production Plan', N'/productionplan/filter')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (20, N'Assignment Employee', N'/assignment/assign')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (21, N'Assignment Details', N'/assignment/details')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (22, N'Delete Employee Assignment', N'/assignment/delete')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (23, N'Production Plan Details', N'/productionplan/detail')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (25, N'Product Store', N'/productStore.html')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (26, N'Attendance', N'/view/attendance/attendance-dashboard.jsp')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (27, N'', N'')
INSERT [dbo].[Features] ([fid], [fname], [url]) VALUES (28, N'', N'')
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[PlanDetails] ON 

INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (1, 1, 1, CAST(N'2024-10-01' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (2, 2, 1, CAST(N'2024-10-01' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (3, 3, 1, CAST(N'2024-10-01' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (4, 1, 2, CAST(N'2024-10-01' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (5, 2, 2, CAST(N'2024-10-01' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (6, 3, 2, CAST(N'2024-10-01' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (7, 1, 3, CAST(N'2024-10-01' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (8, 2, 3, CAST(N'2024-10-01' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (9, 3, 3, CAST(N'2024-10-01' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (10, 27, 1, CAST(N'2024-10-12' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (11, 27, 1, CAST(N'2024-10-12' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (12, 28, 1, CAST(N'2024-10-12' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (13, 29, 1, CAST(N'2024-10-12' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (14, 1, 1, CAST(N'2024-10-02' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (15, 1, 1, CAST(N'2024-10-02' AS Date), 40)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (16, 2, 1, CAST(N'2024-10-02' AS Date), 20)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (17, 3, 1, CAST(N'2024-10-02' AS Date), 21)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (18, 1, 1, CAST(N'2024-10-02' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (19, 2, 1, CAST(N'2024-10-02' AS Date), 20)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (20, 3, 1, CAST(N'2024-10-02' AS Date), 21)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (21, 1, 1, CAST(N'2024-10-02' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (22, 2, 1, CAST(N'2024-10-02' AS Date), 20)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (23, 3, 1, CAST(N'2024-10-02' AS Date), 21)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (24, 27, 1, CAST(N'2024-10-12' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (25, 28, 1, CAST(N'2024-10-12' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (26, 29, 1, CAST(N'2024-10-12' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (27, 27, 2, CAST(N'2024-10-12' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (28, 28, 2, CAST(N'2024-10-12' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (29, 29, 2, CAST(N'2024-10-12' AS Date), 6)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (30, 27, 3, CAST(N'2024-10-12' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (31, 28, 3, CAST(N'2024-10-12' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (32, 29, 3, CAST(N'2024-10-12' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (33, 27, 1, CAST(N'2024-10-13' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (34, 28, 1, CAST(N'2024-10-13' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (35, 29, 1, CAST(N'2024-10-13' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (36, 27, 2, CAST(N'2024-10-13' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (37, 28, 2, CAST(N'2024-10-13' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (38, 29, 2, CAST(N'2024-10-13' AS Date), 6)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (39, 27, 3, CAST(N'2024-10-13' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (40, 28, 3, CAST(N'2024-10-13' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (41, 29, 3, CAST(N'2024-10-13' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (42, 1, 1, CAST(N'2024-10-02' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (43, 2, 1, CAST(N'2024-10-02' AS Date), 20)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (44, 3, 1, CAST(N'2024-10-02' AS Date), 21)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (45, 1, 2, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (46, 2, 2, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (47, 3, 2, CAST(N'2024-10-02' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (48, 1, 3, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (49, 2, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (50, 3, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (51, 11, 1, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (52, 11, 2, CAST(N'2024-10-03' AS Date), 22)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (53, 11, 3, CAST(N'2024-10-03' AS Date), 22)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (54, 1, 1, CAST(N'2024-10-02' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (55, 2, 1, CAST(N'2024-10-02' AS Date), 20)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (56, 3, 1, CAST(N'2024-10-02' AS Date), 21)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (57, 1, 2, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (58, 2, 2, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (59, 3, 2, CAST(N'2024-10-02' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (60, 1, 3, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (61, 2, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (62, 3, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (63, 1, 1, CAST(N'2024-10-02' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (64, 2, 1, CAST(N'2024-10-02' AS Date), 20)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (65, 3, 1, CAST(N'2024-10-02' AS Date), 21)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (66, 1, 2, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (67, 2, 2, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (68, 3, 2, CAST(N'2024-10-02' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (69, 1, 3, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (70, 2, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (71, 3, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (72, 1, 1, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (73, 2, 1, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (74, 3, 1, CAST(N'2024-10-03' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (75, 1, 2, CAST(N'2024-10-03' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (76, 2, 2, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (77, 3, 2, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (78, 1, 3, CAST(N'2024-10-03' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (79, 2, 3, CAST(N'2024-10-03' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (80, 3, 3, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (81, 1, 1, CAST(N'2024-10-02' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (82, 2, 1, CAST(N'2024-10-02' AS Date), 20)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (83, 3, 1, CAST(N'2024-10-02' AS Date), 21)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (84, 1, 2, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (85, 2, 2, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (86, 3, 2, CAST(N'2024-10-02' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (87, 1, 3, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (88, 2, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (89, 3, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (90, 1, 1, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (91, 2, 1, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (92, 3, 1, CAST(N'2024-10-03' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (93, 1, 2, CAST(N'2024-10-03' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (94, 2, 2, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (95, 3, 2, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (96, 1, 3, CAST(N'2024-10-03' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (97, 2, 3, CAST(N'2024-10-03' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (98, 3, 3, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (99, 1, 1, CAST(N'2024-10-02' AS Date), 1)
GO
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (100, 2, 1, CAST(N'2024-10-02' AS Date), 20)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (101, 3, 1, CAST(N'2024-10-02' AS Date), 21)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (102, 1, 2, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (103, 2, 2, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (104, 3, 2, CAST(N'2024-10-02' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (105, 1, 3, CAST(N'2024-10-02' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (106, 2, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (107, 3, 3, CAST(N'2024-10-02' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (108, 1, 1, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (109, 2, 1, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (110, 3, 1, CAST(N'2024-10-03' AS Date), 1)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (111, 1, 2, CAST(N'2024-10-03' AS Date), 3)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (112, 2, 2, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (113, 3, 2, CAST(N'2024-10-03' AS Date), 2)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (114, 1, 3, CAST(N'2024-10-03' AS Date), 4)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (115, 2, 3, CAST(N'2024-10-03' AS Date), 5)
INSERT [dbo].[PlanDetails] ([pdid], [phid], [sid], [date], [quantity]) VALUES (116, 3, 3, CAST(N'2024-10-03' AS Date), 2)
SET IDENTITY_INSERT [dbo].[PlanDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[PlanHeaders] ON 

INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (1, 1, 1, 100, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (2, 1, 2, 60, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (3, 1, 3, 50, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (4, 2, 1, 120, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (5, 2, 2, 130, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (8, 4, 1, 100, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (9, 4, 2, 200, 2)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (11, 6, 1, 10, 2)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (25, 13, 1, 22, 11)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (26, 13, 2, 12, 2)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (27, 14, 1, 11, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (28, 14, 2, 2, 2)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (29, 14, 3, 3, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (36, 17, 1, 22, 1)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (37, 17, 2, 21, 4)
INSERT [dbo].[PlanHeaders] ([phid], [plid], [pid], [quantity], [estimatedeffort]) VALUES (38, 17, 3, 31, 5)
SET IDENTITY_INSERT [dbo].[PlanHeaders] OFF
GO
SET IDENTITY_INSERT [dbo].[Plans] ON 

INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (1, N'Test Plan for 1st Week of October', CAST(N'2024-10-02' AS Date), CAST(N'2024-10-07' AS Date), 5)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (2, N'Test Plan for 2nd Week of October', CAST(N'2024-10-08' AS Date), CAST(N'2024-10-14' AS Date), 6)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (3, N'Test Plan for 3rd Week of October', CAST(N'2024-10-15' AS Date), CAST(N'2024-10-19' AS Date), 6)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (4, N'Plan Stupid for WS3', CAST(N'2024-10-17' AS Date), CAST(N'2024-10-19' AS Date), 7)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (5, N'Nguyen Giang Anh', CAST(N'2024-10-08' AS Date), CAST(N'2024-10-16' AS Date), 5)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (6, N'Chu Bo Doi', CAST(N'2024-10-03' AS Date), CAST(N'2024-10-17' AS Date), 5)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (8, N'Quoc Phong', CAST(N'2024-10-15' AS Date), CAST(N'2024-10-18' AS Date), 5)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (9, N'Tran Duc Minh', CAST(N'2024-10-25' AS Date), CAST(N'2024-10-09' AS Date), 6)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (11, N'Vu Thi Kim Dung', CAST(N'2024-10-11' AS Date), CAST(N'2024-10-27' AS Date), 6)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (13, N'Quoc Phong', CAST(N'2024-10-18' AS Date), CAST(N'2024-10-25' AS Date), 7)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (14, N'Blue', CAST(N'2024-10-12' AS Date), CAST(N'2024-10-13' AS Date), 5)
INSERT [dbo].[Plans] ([plid], [plname], [startdate], [enddate], [did]) VALUES (17, N'BlueeSensei', CAST(N'2024-12-12' AS Date), CAST(N'2024-12-28' AS Date), 6)
SET IDENTITY_INSERT [dbo].[Plans] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([pid], [pname], [description], [price]) VALUES (1, N'Product A', N'Good for health, high quality', CAST(1200.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([pid], [pname], [description], [price]) VALUES (2, N'Product B', N'Fast processor and smooth multitasking', CAST(700.00 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([pid], [pname], [description], [price]) VALUES (3, N'Product C', N'Premium build with durable materials', CAST(900.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (1, 3)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (1, 8)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (1, 9)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (1, 12)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (1, 16)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (1, 17)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (1, 26)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (2, 1)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (2, 2)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (2, 3)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (2, 4)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (2, 18)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (2, 26)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 5)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 6)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 7)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 8)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 9)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 19)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 20)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 21)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 22)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 23)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (3, 26)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (4, 3)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (4, 17)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (4, 26)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 8)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 10)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 11)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 12)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 13)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 14)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 15)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 16)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (5, 26)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (6, 3)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (6, 14)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (6, 23)
INSERT [dbo].[RoleFeatures] ([rid], [fid]) VALUES (6, 26)
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([rid], [rname]) VALUES (1, N'Administration Manager')
INSERT [dbo].[Roles] ([rid], [rname]) VALUES (2, N'HR Manager')
INSERT [dbo].[Roles] ([rid], [rname]) VALUES (3, N'Planning Manager')
INSERT [dbo].[Roles] ([rid], [rname]) VALUES (4, N'Accounting Manager')
INSERT [dbo].[Roles] ([rid], [rname]) VALUES (5, N'Production Workshop Manager')
INSERT [dbo].[Roles] ([rid], [rname]) VALUES (6, N'Employee')
INSERT [dbo].[Roles] ([rid], [rname]) VALUES (7, N'Customer')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Salaries] ON 

INSERT [dbo].[Salaries] ([sid], [slevel], [salary]) VALUES (1, N'Level 1', CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[Salaries] ([sid], [slevel], [salary]) VALUES (2, N'Level 2', CAST(7000.00 AS Decimal(10, 2)))
INSERT [dbo].[Salaries] ([sid], [slevel], [salary]) VALUES (3, N'Level 3', CAST(9000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Salaries] OFF
GO
SET IDENTITY_INSERT [dbo].[Shifts] ON 

INSERT [dbo].[Shifts] ([sid], [sname], [starttime], [endtime]) VALUES (1, N'K1', CAST(N'08:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[Shifts] ([sid], [sname], [starttime], [endtime]) VALUES (2, N'K2', CAST(N'16:00:00' AS Time), CAST(N'00:00:00' AS Time))
INSERT [dbo].[Shifts] ([sid], [sname], [starttime], [endtime]) VALUES (3, N'K3', CAST(N'00:00:00' AS Time), CAST(N'08:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Shifts] OFF
GO
INSERT [dbo].[UserRoles] ([uid], [rid]) VALUES (1, 1)
INSERT [dbo].[UserRoles] ([uid], [rid]) VALUES (2, 2)
INSERT [dbo].[UserRoles] ([uid], [rid]) VALUES (3, 3)
INSERT [dbo].[UserRoles] ([uid], [rid]) VALUES (4, 4)
INSERT [dbo].[UserRoles] ([uid], [rid]) VALUES (5, 5)
INSERT [dbo].[UserRoles] ([uid], [rid]) VALUES (6, 5)
INSERT [dbo].[UserRoles] ([uid], [rid]) VALUES (7, 5)
INSERT [dbo].[UserRoles] ([uid], [rid]) VALUES (13, 7)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (1, 1, N'admin', N'123', N'admin@example.com')
INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (2, 2, N'hr', N'123', N'hr@example.com')
INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (3, 3, N'plan', N'123', N'planning@example.com')
INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (4, 4, N'account', N'123', N'accounting@example.com')
INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (5, 5, N'workshop1', N'123', N'workshop1@example.com')
INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (6, 9, N'workshop2', N'123', N'workshop2@example.com')
INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (7, 13, N'workshop3', N'123', N'workshop3@example.com')
INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (12, 19, N'employee', N'123', N'employee@exam.net')
INSERT [dbo].[Users] ([uid], [eid], [username], [password], [email]) VALUES (13, 23, N'customer', N'123', N'customer@example.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[WorkAssignments] ON 

INSERT [dbo].[WorkAssignments] ([waid], [pdid], [eid], [quantity], [note]) VALUES (1, 1, 6, 2, NULL)
INSERT [dbo].[WorkAssignments] ([waid], [pdid], [eid], [quantity], [note]) VALUES (2, 1, 7, 2, NULL)
INSERT [dbo].[WorkAssignments] ([waid], [pdid], [eid], [quantity], [note]) VALUES (3, 1, 8, 1, NULL)
INSERT [dbo].[WorkAssignments] ([waid], [pdid], [eid], [quantity], [note]) VALUES (4, 2, 6, 1, NULL)
INSERT [dbo].[WorkAssignments] ([waid], [pdid], [eid], [quantity], [note]) VALUES (5, 2, 8, 2, NULL)
INSERT [dbo].[WorkAssignments] ([waid], [pdid], [eid], [quantity], [note]) VALUES (6, 3, 7, 1, NULL)
INSERT [dbo].[WorkAssignments] ([waid], [pdid], [eid], [quantity], [note]) VALUES (7, 3, 8, 1, NULL)
SET IDENTITY_INSERT [dbo].[WorkAssignments] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK6dotkott2kjsp8vw4d0m25fb7]    Script Date: 12/12/2024 10:33:03 AM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UK6dotkott2kjsp8vw4d0m25fb7] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UKr43af9ap4edm43mmtq01oddj6]    Script Date: 12/12/2024 10:33:03 AM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UKr43af9ap4edm43mmtq01oddj6] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__F3DBC5729C4CA9FD]    Script Date: 12/12/2024 10:33:03 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [FK__Employees__Depar__01142BA1] FOREIGN KEY([did])
REFERENCES [dbo].[Departments] ([did])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK__Employees__Depar__01142BA1]
GO
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  CONSTRAINT [FK_Employee_Salary] FOREIGN KEY([sid])
REFERENCES [dbo].[Salaries] ([sid])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employee_Salary]
GO
ALTER TABLE [dbo].[PlanDetails]  WITH CHECK ADD  CONSTRAINT [FK__PlanDetai__PlanH__0E6E26BF] FOREIGN KEY([phid])
REFERENCES [dbo].[PlanHeaders] ([phid])
GO
ALTER TABLE [dbo].[PlanDetails] CHECK CONSTRAINT [FK__PlanDetai__PlanH__0E6E26BF]
GO
ALTER TABLE [dbo].[PlanDetails]  WITH CHECK ADD  CONSTRAINT [FK_PlanDetails_Shifts] FOREIGN KEY([sid])
REFERENCES [dbo].[Shifts] ([sid])
GO
ALTER TABLE [dbo].[PlanDetails] CHECK CONSTRAINT [FK_PlanDetails_Shifts]
GO
ALTER TABLE [dbo].[PlanHeaders]  WITH CHECK ADD  CONSTRAINT [FK__PlanHeade__Produ__0B91BA14] FOREIGN KEY([pid])
REFERENCES [dbo].[Products] ([pid])
GO
ALTER TABLE [dbo].[PlanHeaders] CHECK CONSTRAINT [FK__PlanHeade__Produ__0B91BA14]
GO
ALTER TABLE [dbo].[PlanHeaders]  WITH CHECK ADD  CONSTRAINT [FK__PlanHeader__plid__5BE2A6F2] FOREIGN KEY([plid])
REFERENCES [dbo].[Plans] ([plid])
GO
ALTER TABLE [dbo].[PlanHeaders] CHECK CONSTRAINT [FK__PlanHeader__plid__5BE2A6F2]
GO
ALTER TABLE [dbo].[Plans]  WITH CHECK ADD FOREIGN KEY([did])
REFERENCES [dbo].[Departments] ([did])
GO
ALTER TABLE [dbo].[RoleFeatures]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleFeatures_Features] FOREIGN KEY([fid])
REFERENCES [dbo].[Features] ([fid])
GO
ALTER TABLE [dbo].[RoleFeatures] CHECK CONSTRAINT [FK_RoleFeatures_Features]
GO
ALTER TABLE [dbo].[RoleFeatures]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleFeatures_Roles] FOREIGN KEY([rid])
REFERENCES [dbo].[Roles] ([rid])
GO
ALTER TABLE [dbo].[RoleFeatures] CHECK CONSTRAINT [FK_RoleFeatures_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([rid])
REFERENCES [dbo].[Roles] ([rid])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([uid])
REFERENCES [dbo].[Users] ([uid])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Users]  WITH NOCHECK ADD FOREIGN KEY([eid])
REFERENCES [dbo].[Employees] ([eid])
GO
ALTER TABLE [dbo].[WorkAssignments]  WITH CHECK ADD  CONSTRAINT [FK__WorkAssig__PlanD__1332DBDC] FOREIGN KEY([pdid])
REFERENCES [dbo].[PlanDetails] ([pdid])
GO
ALTER TABLE [dbo].[WorkAssignments] CHECK CONSTRAINT [FK__WorkAssig__PlanD__1332DBDC]
GO
