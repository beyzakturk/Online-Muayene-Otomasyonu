USE [ProjeHastane]
GO
/****** Object:  Table [dbo].[Tbl_Admin]    Script Date: 20.08.2020 18:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Admin](
	[Adminid] [tinyint] IDENTITY(1,1) NOT NULL,
	[AdminName] [varchar](30) NULL,
	[AdminTC] [char](11) NULL,
	[AdminPassword] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Brans]    Script Date: 20.08.2020 18:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Brans](
	[Branchid] [tinyint] NULL,
	[BranchName] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Dr]    Script Date: 20.08.2020 18:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Dr](
	[Drid] [tinyint] IDENTITY(1,1) NOT NULL,
	[DrName] [varchar](10) NULL,
	[DrSurname] [varchar](10) NULL,
	[DrBrans] [varchar](30) NULL,
	[DrTC] [varchar](11) NULL,
	[DrPassword] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_duyuru]    Script Date: 20.08.2020 18:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_duyuru](
	[announcementsid] [smallint] IDENTITY(1,1) NOT NULL,
	[announcements] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 20.08.2020 18:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[Patientid] [smallint] NULL,
	[PatientName] [varchar](10) NULL,
	[PatientSurname] [varchar](10) NULL,
	[PatientTC] [char](11) NULL,
	[PatientNumber] [varchar](15) NULL,
	[PatientPassword] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_randevu]    Script Date: 20.08.2020 18:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_randevu](
	[Appointmentid] [int] NULL,
	[AppointmentDate] [varchar](12) NULL,
	[AppointmentHour] [varchar](5) NULL,
	[AppointmentBranch] [varchar](30) NULL,
	[AppointmentDoctor] [varchar](20) NULL,
	[PatientTc] [char](11) NULL,
	[AppointmentSituation] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Admin] ON 

INSERT [dbo].[Tbl_Admin] ([Adminid], [AdminName], [AdminTC], [AdminPassword]) VALUES (1, N'Arzu Ak', N'22222222222', N'2222')
SET IDENTITY_INSERT [dbo].[Tbl_Admin] OFF
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Cardiology')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Dermatology')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'ENT')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Neurology')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Dietetics')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Eye Care')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'General Surgery')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Obstetrics and Gynaecology')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Urology')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Dental')
INSERT [dbo].[Tbl_Brans] ([Branchid], [BranchName]) VALUES (NULL, N'Psychiatry')
SET IDENTITY_INSERT [dbo].[Tbl_Dr] ON 

INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (1, N'mehmet', N'yüksel', N'Cardiology', N'12345678911', N'1234')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (2, N'fatoş ', N'aktürk', N'Dermatology', N'14444444444', N'4444')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (3, N'didar', N'bolat', N'ENT', N'22222222222', N'2222')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (4, N'bedirhan', N'polat', N'Neurology', N'55555555555', N'5555')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (5, N'bade', N'ak', N'Neurology', N'66666666666', N'6666')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (6, N'betül', N'karaman', N'Dietetics', N'14141414141', N'1414')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (7, N'bilge', N'akkaş', N'Eye Care', N'32323232323', N'2323')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (8, N'belinay', N'doğan', N'General Surgery', N'89898989899', N'8989')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (9, N'aydın', N'akçam', N'Obstetrics and Gynaecology', N'45454545455', N'4545')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (10, N'emine', N'pekcanlı', N'Urology', N'21212121212', N'2121')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (11, N'mustafa', N'aktaş', N'Dental', N'78787878788', N'7878')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (12, N'yavuz', N'duyuran', N'Psychiatry', N'16161616161', N'1616')
INSERT [dbo].[Tbl_Dr] ([Drid], [DrName], [DrSurname], [DrBrans], [DrTC], [DrPassword]) VALUES (13, N'mustafa', N'cansız', N'Urology', N'45698989523', N'3232')
SET IDENTITY_INSERT [dbo].[Tbl_Dr] OFF
SET IDENTITY_INSERT [dbo].[Tbl_duyuru] ON 

INSERT [dbo].[Tbl_duyuru] ([announcementsid], [announcements]) VALUES (1, N'Be in the meeting room at 8:30 tomorrow morning')
SET IDENTITY_INSERT [dbo].[Tbl_duyuru] OFF
INSERT [dbo].[Tbl_Hastalar] ([Patientid], [PatientName], [PatientSurname], [PatientTC], [PatientNumber], [PatientPassword]) VALUES (NULL, N'Ahmet', N'Aktürk', N'11111111111', N'(543) 555-6665', N'1234')
INSERT [dbo].[Tbl_Hastalar] ([Patientid], [PatientName], [PatientSurname], [PatientTC], [PatientNumber], [PatientPassword]) VALUES (NULL, N'pakize', N'ak', N'66666666666', N'(569) 875-2562', N'6565')
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (1, N'20.08.2020', N'16:00', N'ENT', N'didarbolat', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (2, N'20.09.2020', N'15:00', N'Eye Care', N'bilgeakkaş', N'11111111111', 1)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (3, N'19.08.2020', N'12:00', N'Neurology', N'bedirhanpolat', NULL, 1)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (4, N'19.08.2020', N'14:00', N'Neurology', N'bedirhanpolat', N'           ', 1)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (5, N'19.08.2020', N'14:00', N'Neurology', N'badeak', N'66666666666', 1)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (6, N'19.08.2020', N'12:00', N'Neurology', N'badeak', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (7, N'20.05.2021', N'10:10', N'Dietetics', N'betülkaraman', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (8, N'20.11.2020', N'09:00', N'Dietetics', N'betülkaraman', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (9, N'20.11.2020', N'10:00', N'Dietetics', N'betülkaraman', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (10, N'20.11.2020', N'15:00', N'Dietetics', N'betülkaraman', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (11, N'20.11.2020', N'11:00', N'Neurology', N'bedirhanpolat', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (NULL, N'20.11.2020', N'08:00', N'Neurology', N'bedirhanpolat', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (12, N'20.11.2020', N'09:00', N'Neurology', N'badeak', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (13, N'20.11.2020', N'11:00', N'Neurology', N'badeak', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (14, N'20.11.2020', N'11:00', N'Cardiology', N'mehmetyüksel', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (15, N'20.11.2020', N'14:00', N'Cardiology', N'mehmetyüksel', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (16, N'20.11.2020', N'13:00', N'Dermatology', N'fatoş aktürk', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (17, N'20.11.2020', N'08:00', N'Dermatology', N'fatoş aktürk', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (18, N'20.11.2020', N'08:00', N'ENT', N'didarbolat', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (19, N'20.11.2020', N'16:00', N'ENT', N'didarbolat', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (20, N'20.11.2020', N'14:00', N'Eye Care', N'bilgeakkaş', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (21, N'20.11.2020', N'14:00', N'General Surgery', N'belinaydoğan', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (22, N'20.11.2020', N'11:00', N'General Surgery', N'belinaydoğan', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (23, N'20.11.2020', N'11:00', N'Obstetrics and Gynaecology', N'aydınakçam', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (24, N'20.11.2020', N'13:00', N'Obstetrics and Gynaecology', N'aydınakçam', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (25, N'20.11.2020', N'12:00', N'Urology', N'eminepekcanlı', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (26, N'20.11.2020', N'15:00', N'Urology', N'mustafacansız', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (27, N'20.11.2020', N'10:00', N'Urology', N'mustafacansız', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (28, N'20.11.2020', N'09:00', N'Dental', N'mustafaaktaş', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (29, N'20.11.2020', N'13:00', N'Dental', N'mustafaaktaş', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (30, N'20.11.2020', N'13:00', N'Psychiatry', N'yavuzduyuran', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (31, N'20.11.2020', N'16:00', N'Psychiatry', N'yavuzduyuran', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (33, N'20.11.2020', N'11:00', N'Dietetics', N'betülkaraman', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (34, N'20.11.2020', N'15:00', N'Neurology', N'bedirhanpolat', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (NULL, N'20.11.2020', N'08:00', N'Neurology', N'bedirhanpolat', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (35, N'20.11.2020', N'13:00', N'Cardiology', N'mehmetyüksel', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (36, N'20.11.2020', N'09:00', N'ENT', N'didarbolat', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (37, N'20.11.2020', N'16:00', N'Eye Care', N'bilgeakkaş', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (38, N'20.11.2020', N'15:00', N'Eye Care', N'bilgeakkaş', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (39, N'20.11.2020', N'10:00', N'Obstetrics and Gynaecology', N'aydınakçam', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (40, N'20.11.2020', N'14:00', N'Obstetrics and Gynaecology', N'aydınakçam', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (41, N'20.11.2020', N'14:00', N'Urology', N'eminepekcanlı', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (42, N'20.11.2020', N'15:00', N'Urology', N'eminepekcanlı', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (43, N'20.11.2020', N'10:00', N'Dental', N'mustafaaktaş', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (44, N'20.11.2020', N'08:00', N'Dental', N'mustafaaktaş', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (45, N'20.11.2020', N'11:00', N'Psychiatry', N'yavuzduyuran', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (46, N'20.11.2020', N'10:00', N'Neurology', N'badeak', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (47, N'20.11.2020', N'14:00', N'Dermatology', N'fatoş aktürk', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (48, N'20.11.2020', N'10:00', N'General Surgery', N'belinaydoğan', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (49, N'20.11.2020', N'11:00', N'Urology', N'mustafacansız', NULL, 0)
INSERT [dbo].[Tbl_randevu] ([Appointmentid], [AppointmentDate], [AppointmentHour], [AppointmentBranch], [AppointmentDoctor], [PatientTc], [AppointmentSituation]) VALUES (50, N'20.11.2020', N'13:00', N'Psychiatry', N'mustafaaktaş', NULL, 0)
ALTER TABLE [dbo].[Tbl_randevu] ADD  CONSTRAINT [DF_Tbl_randevu_AppointmentSituation]  DEFAULT ((0)) FOR [AppointmentSituation]
GO
