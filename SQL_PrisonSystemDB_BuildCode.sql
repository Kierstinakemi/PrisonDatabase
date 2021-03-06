USE [PrisonProjectDB]
GO
/****** Object:  Table [dbo].[Attorney]    Script Date: 6/8/2018 7:11:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attorney](
	[AttorneyID] [int] NOT NULL,
	[LegalFirmID] [int] NULL,
	[Social] [char](9) NULL,
	[FirstName] [char](30) NULL,
	[LastName] [char](30) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
 CONSTRAINT [PK_Attorney] PRIMARY KEY CLUSTERED 
(
	[AttorneyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseOffences]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseOffences](
	[CaseId] [int] NOT NULL,
	[OffencesId] [int] NOT NULL,
 CONSTRAINT [PK_CaseOffences] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC,
	[OffencesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cases]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cases](
	[CaseID] [int] NOT NULL,
	[PrisonerID] [int] NULL,
	[CaseStatusID] [int] NULL,
	[AttorneyID] [int] NULL,
 CONSTRAINT [PK_Cases] PRIMARY KEY CLUSTERED 
(
	[CaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseStatus]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseStatus](
	[CaseStatusID] [int] NOT NULL,
	[CaseStatusDesc] [varchar](50) NULL,
 CONSTRAINT [PK_CaseStatus] PRIMARY KEY CLUSTERED 
(
	[CaseStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Court]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Court](
	[CourtID] [int] NOT NULL,
	[CourtName] [varchar](30) NULL,
	[Address] [varchar](50) NULL,
	[City] [char](50) NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
 CONSTRAINT [PK_Court] PRIMARY KEY CLUSTERED 
(
	[CourtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hearings]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hearings](
	[CaseHearingId] [int] NOT NULL,
	[CourtId] [int] NULL,
	[CaseId] [int] NULL,
	[HearingDate] [date] NULL,
	[HearingTime] [timestamp] NULL,
 CONSTRAINT [PK_Hearings] PRIMARY KEY CLUSTERED 
(
	[CaseHearingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LegalFirm]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalFirm](
	[LegalFirmID] [int] NOT NULL,
	[FirmName] [varchar](30) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
 CONSTRAINT [PK_LegalFirm] PRIMARY KEY CLUSTERED 
(
	[LegalFirmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OffenseGroups]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffenseGroups](
	[OffenseGroupID] [int] NOT NULL,
	[OffenseGroupDesc] [varchar](50) NULL,
 CONSTRAINT [PK_OffenseGroups] PRIMARY KEY CLUSTERED 
(
	[OffenseGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offenses]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offenses](
	[OffenseID] [int] NOT NULL,
	[OffenseGroupID] [int] NULL,
	[OffenseDesc] [varchar](50) NULL,
 CONSTRAINT [PK_Offenses] PRIMARY KEY CLUSTERED 
(
	[OffenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prison]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prison](
	[PrisonID] [int] NOT NULL,
	[PrisonName] [varchar](30) NULL,
	[PrisonCapacity] [char](10) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
 CONSTRAINT [PK_Prison] PRIMARY KEY CLUSTERED 
(
	[PrisonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prisoner]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prisoner](
	[PrisonerID] [int] NOT NULL,
	[FirstName] [char](30) NULL,
	[LastName] [char](30) NULL,
	[Social] [char](9) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [char](2) NULL,
	[Zip] [char](5) NULL,
 CONSTRAINT [PK_Prisoner] PRIMARY KEY CLUSTERED 
(
	[PrisonerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrisonerStatus]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrisonerStatus](
	[PrisonerStatusID] [int] NOT NULL,
	[PrisonerStatusDesc] [varchar](50) NULL,
 CONSTRAINT [PK_PrisonerStatus] PRIMARY KEY CLUSTERED 
(
	[PrisonerStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrisonEvents]    Script Date: 6/8/2018 7:11:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrisonEvents](
	[PrisonerId] [int] NOT NULL,
	[CaseId] [int] NOT NULL,
	[PrisonId] [int] NULL,
	[PrisonerStatusId] [int] NULL,
	[ArrivalDate] [datetime] NULL,
	[DepartureDate] [datetime] NULL,
 CONSTRAINT [PK_PrisonEvents] PRIMARY KEY CLUSTERED 
(
	[PrisonerId] ASC,
	[CaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CaseStatus] ([CaseStatusID], [CaseStatusDesc]) VALUES (1, N'In Progress')
INSERT [dbo].[CaseStatus] ([CaseStatusID], [CaseStatusDesc]) VALUES (2, N'Adjudicated')
INSERT [dbo].[CaseStatus] ([CaseStatusID], [CaseStatusDesc]) VALUES (3, N'In Appeal')
INSERT [dbo].[CaseStatus] ([CaseStatusID], [CaseStatusDesc]) VALUES (4, N'Complete')
INSERT [dbo].[PrisonerStatus] ([PrisonerStatusID], [PrisonerStatusDesc]) VALUES (1, N'Incarcerated ')
INSERT [dbo].[PrisonerStatus] ([PrisonerStatusID], [PrisonerStatusDesc]) VALUES (2, N'Sentence Completed')
INSERT [dbo].[PrisonerStatus] ([PrisonerStatusID], [PrisonerStatusDesc]) VALUES (3, N'Paroled')
INSERT [dbo].[PrisonerStatus] ([PrisonerStatusID], [PrisonerStatusDesc]) VALUES (4, N'Pardoned')
INSERT [dbo].[PrisonerStatus] ([PrisonerStatusID], [PrisonerStatusDesc]) VALUES (5, N'Died')
ALTER TABLE [dbo].[Attorney]  WITH CHECK ADD  CONSTRAINT [FK_Attorney_LegalFirm] FOREIGN KEY([LegalFirmID])
REFERENCES [dbo].[LegalFirm] ([LegalFirmID])
GO
ALTER TABLE [dbo].[Attorney] CHECK CONSTRAINT [FK_Attorney_LegalFirm]
GO
ALTER TABLE [dbo].[CaseOffences]  WITH CHECK ADD  CONSTRAINT [FK_CaseOffences_Cases] FOREIGN KEY([CaseId])
REFERENCES [dbo].[Cases] ([CaseID])
GO
ALTER TABLE [dbo].[CaseOffences] CHECK CONSTRAINT [FK_CaseOffences_Cases]
GO
ALTER TABLE [dbo].[CaseOffences]  WITH CHECK ADD  CONSTRAINT [FK_CaseOffences_Offenses] FOREIGN KEY([OffencesId])
REFERENCES [dbo].[Offenses] ([OffenseID])
GO
ALTER TABLE [dbo].[CaseOffences] CHECK CONSTRAINT [FK_CaseOffences_Offenses]
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD  CONSTRAINT [FK_Cases_Attorney] FOREIGN KEY([AttorneyID])
REFERENCES [dbo].[Attorney] ([AttorneyID])
GO
ALTER TABLE [dbo].[Cases] CHECK CONSTRAINT [FK_Cases_Attorney]
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD  CONSTRAINT [FK_Cases_CaseStatus] FOREIGN KEY([CaseStatusID])
REFERENCES [dbo].[CaseStatus] ([CaseStatusID])
GO
ALTER TABLE [dbo].[Cases] CHECK CONSTRAINT [FK_Cases_CaseStatus]
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD  CONSTRAINT [FK_Cases_Prisoner] FOREIGN KEY([PrisonerID])
REFERENCES [dbo].[Prisoner] ([PrisonerID])
GO
ALTER TABLE [dbo].[Cases] CHECK CONSTRAINT [FK_Cases_Prisoner]
GO
ALTER TABLE [dbo].[Hearings]  WITH CHECK ADD  CONSTRAINT [FK_Hearings_Cases] FOREIGN KEY([CaseId])
REFERENCES [dbo].[Cases] ([CaseID])
GO
ALTER TABLE [dbo].[Hearings] CHECK CONSTRAINT [FK_Hearings_Cases]
GO
ALTER TABLE [dbo].[Hearings]  WITH CHECK ADD  CONSTRAINT [FK_Hearings_Court] FOREIGN KEY([CourtId])
REFERENCES [dbo].[Court] ([CourtID])
GO
ALTER TABLE [dbo].[Hearings] CHECK CONSTRAINT [FK_Hearings_Court]
GO
ALTER TABLE [dbo].[Offenses]  WITH CHECK ADD  CONSTRAINT [FK_Offenses_OffenseGroups] FOREIGN KEY([OffenseGroupID])
REFERENCES [dbo].[OffenseGroups] ([OffenseGroupID])
GO
ALTER TABLE [dbo].[Offenses] CHECK CONSTRAINT [FK_Offenses_OffenseGroups]
GO
ALTER TABLE [dbo].[PrisonEvents]  WITH CHECK ADD  CONSTRAINT [FK_PrisonEvents_Cases] FOREIGN KEY([CaseId])
REFERENCES [dbo].[Cases] ([CaseID])
GO
ALTER TABLE [dbo].[PrisonEvents] CHECK CONSTRAINT [FK_PrisonEvents_Cases]
GO
ALTER TABLE [dbo].[PrisonEvents]  WITH CHECK ADD  CONSTRAINT [FK_PrisonEvents_Prison] FOREIGN KEY([PrisonId])
REFERENCES [dbo].[Prison] ([PrisonID])
GO
ALTER TABLE [dbo].[PrisonEvents] CHECK CONSTRAINT [FK_PrisonEvents_Prison]
GO
ALTER TABLE [dbo].[PrisonEvents]  WITH CHECK ADD  CONSTRAINT [FK_PrisonEvents_Prisoner] FOREIGN KEY([PrisonerId])
REFERENCES [dbo].[Prisoner] ([PrisonerID])
GO
ALTER TABLE [dbo].[PrisonEvents] CHECK CONSTRAINT [FK_PrisonEvents_Prisoner]
GO
ALTER TABLE [dbo].[PrisonEvents]  WITH CHECK ADD  CONSTRAINT [FK_PrisonEvents_PrisonerStatus] FOREIGN KEY([PrisonerStatusId])
REFERENCES [dbo].[PrisonerStatus] ([PrisonerStatusID])
GO
ALTER TABLE [dbo].[PrisonEvents] CHECK CONSTRAINT [FK_PrisonEvents_PrisonerStatus]
GO
