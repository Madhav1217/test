ALTER TABLE MemberPaymentDetail
ADD PaymentNumber BIGINT
GO

ALTER TABLE MemberPaymentDetail
ADD DocumentId BIGINT
GO

ALTER TABLE [dbo].[Admin123Log]
ADD [Type] [int] 
CONSTRAINT DF_Admin123Log_Type DEFAULT 1 NOT NULL
GO

/* Start - DDL for Users table alter */
ALTER TABLE [dbo].[Users]
DROP COLUMN ResetPasswordAccessCode 
GO
ALTER TABLE [dbo].[Users]
DROP COLUMN ResetPasswordAccessCodeDateTime 
GO
ALTER TABLE [dbo].[Users]
ADD [Status] [int] 
CONSTRAINT DF_Users_Status DEFAULT 1 NOT NULL
GO

ALTER TABLE [dbo].[Users]
ADD [FirstName] nvarchar(200)
CONSTRAINT DF_Users_FirstName DEFAULT '' NOT NULL
GO

ALTER TABLE [dbo].[Users]
ADD [LastName] nvarchar(200) 
CONSTRAINT DF_Users_LastName DEFAULT '' NOT NULL
GO

ALTER TABLE [dbo].[Users]
ADD [IsFirstLogin] [bit] 
CONSTRAINT DF_Users_IsFirstLogin DEFAULT 0 NOT NULL
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSecurityQuestions]') AND type in (N'U'))
ALTER TABLE [dbo].[UserSecurityQuestions] DROP CONSTRAINT IF EXISTS [FK_UserSecurityQuestions_Users_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSecurityQuestions]') AND type in (N'U'))
ALTER TABLE [dbo].[UserSecurityQuestions] DROP CONSTRAINT IF EXISTS [FK_UserSecurityQuestions_SecurityQuestions_QuestionId]
GO

DROP TABLE IF EXISTS [dbo].[UserSecurityQuestions]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT IF EXISTS [FK_UserRoles_Roles_RoleId]
GO

DROP TABLE IF EXISTS [dbo].[UserRoles]
GO

DROP TABLE IF EXISTS [dbo].[UserClaims]
GO

DROP TABLE IF EXISTS [dbo].[MemberSubscribedPlanHistory]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[RoleClaims] DROP CONSTRAINT IF EXISTS [FK_RoleClaims_Roles_RoleId]
GO

DROP TABLE IF EXISTS [dbo].[RoleClaims]
GO

DROP TABLE IF EXISTS [dbo].[Roles]
GO

DROP TABLE IF EXISTS [dbo].[ExternalProviderUserTokens]
GO
DROP TABLE IF EXISTS [dbo].[ExternalProviderUserLogins]
GO


/* End - DDL for Users table alter */

/* [Member].[UserId] made Foreign key */
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type in (N'U'))
ALTER TABLE [dbo].[Member] DROP CONSTRAINT IF EXISTS [FK_Member_User_UserId]
GO

ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO

ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_User_UserId]
GO
/*End*/

/****Tables created for Id Card and Payment Receipt****/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateDetails](
	[TemplateDetailId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NOT NULL,
	[LanguageId] [int] NULL,
	[ProductId] [nvarchar](500) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[Html] [nvarchar](max) NULL,
	[ProviderNetworkId] INT NULL
 CONSTRAINT [PK_TemplateDetails] PRIMARY KEY CLUSTERED 
(
	[TemplateDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Templates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Templates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TemplateDetails]  WITH CHECK ADD  CONSTRAINT [FK_TemplateDetails_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([LanguageId])
GO
ALTER TABLE [dbo].[TemplateDetails] CHECK CONSTRAINT [FK_TemplateDetails_Language]
GO
ALTER TABLE [dbo].[TemplateDetails]  WITH CHECK ADD  CONSTRAINT [FK_TemplateDetails_Templates] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Templates] ([Id])
GO
ALTER TABLE [dbo].[TemplateDetails] CHECK CONSTRAINT [FK_TemplateDetails_Templates]
GO
/***End***/

/*****Alter Script for Product Table****/
ALTER TABLE Product ADD PCP NVARCHAR(500)
GO

ALTER TABLE Product ADD UrgentCare NVARCHAR(500)
GO

ALTER TABLE Product ADD Speciality NVARCHAR(500)
GO

ALTER TABLE Product ADD ER NVARCHAR(500)
GO
/***END***/

/****Alter Script for TemplateDetails table***/
ALTER TABLE [dbo].[TemplateDetails]  WITH CHECK ADD  CONSTRAINT [FK_TemplateDetails_ProviderNetwork] FOREIGN KEY([ProviderNetworkId])
REFERENCES [dbo].[ProviderNetwork] ([ProviderNetworkId])
GO

ALTER TABLE [dbo].[TemplateDetails] CHECK CONSTRAINT [FK_TemplateDetails_ProviderNetwork]
GO
/****END***/



 --POR 539 - Documents and Forms

 Alter Table [dbo].[DocumentCategory]  Add DocumentCategoryType int NOT NULL  DEFAULT 1
 GO
 Alter Table [dbo].[DocumentCategory]  Add IsDeleted bit NOT NULL  DEFAULT 0
 GO

 TRUNCATE TABLE [dbo].[DocumentAndForm]

 DROP TABLE [dbo].[DocumentAndForm]
 GO

 CREATE TABLE [dbo].[DocumentAndForm](
	[DocumentAndFormId] [int] IDENTITY(1,1) NOT NULL,
	[DocumentCategoryId] [int] NOT NULL,
	[DocumentName] [nvarchar](255) NOT NULL,
	[Ext] [nvarchar](10) NOT NULL,
	[Path] [nvarchar](255) NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[PortalId] [int] NOT NULL,
	[DocumentId] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL DEFAULT 0,
	[DocumentType] [int]  NOT NULL DEFAULT 3,
 CONSTRAINT [PK_DocumentAndForms_DocumentAndFormId] PRIMARY KEY CLUSTERED 
	(
		[DocumentAndFormId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
 GO

  --End POR 539 - Documents and Forms 

  --Start POR 674 - Unification of Documents

  SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductDocumentLink](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[DocumentAndFormId] [int] NOT NULL,
	[DocumentType] [int] NOT NULL,
 CONSTRAINT [PK_ProductDocumentLink_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
  --End POR 674 - Unification of Documents

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AgentProductApplicationFee](
	[BrokerId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ApplicationFee] [decimal](8, 2) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_AgentProductApplicationFee_BrokerId_ProductId] PRIMARY KEY CLUSTERED 
(
	[BrokerId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[AgentProductApplicationFee]  WITH CHECK ADD  CONSTRAINT [FK_AgentProductApplicationFee_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO

ALTER TABLE [dbo].[AgentProductApplicationFee] CHECK CONSTRAINT [FK_AgentProductApplicationFee_Broker_BrokerId]
GO

ALTER TABLE [dbo].[AgentProductApplicationFee]  WITH CHECK ADD  CONSTRAINT [FK_AgentProductApplicationFee_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO

ALTER TABLE [dbo].[AgentProductApplicationFee] CHECK CONSTRAINT [FK_AgentProductApplicationFee_Product_ProductId]
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE table_schema = 'dbo' AND table_name = 'State' AND column_name = 'ZipCodeRange')
BEGIN
 ALTER TABLE [dbo].[State] ADD ZipCodeRange VARCHAR(100) NULL
END
GO

ALTER TABLE MigratedMemberProductDetails ADD Program_SRA NVARCHAR(2000) NULL
GO

/****** Object:  Table [dbo].[CombinedProduct]    Script Date: 9/16/2019 12:10:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CombinedProduct](
	[CombinedProductId] [int] IDENTITY(1,1) NOT NULL,
	[PlanId] [nvarchar](500) NOT NULL,
	[ProductCode] [int] NOT NULL,
 CONSTRAINT [PK_CombinedProduct] PRIMARY KEY CLUSTERED 
(
	[CombinedProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommissionAllPayPeriodData](
	[Id] [bigint] NOT NULL,
	[MemberId] [bigint] NULL,
	[Subtype] [varchar](50) NULL,
	[Debit] [varchar](9) NULL,
	[Credit] [varchar](7) NULL,
	[StartDate] [varchar](25) NULL,
	[EndDate] [varchar](25) NULL,
	[MemberBrokerId] [bigint] NULL,
	[MemberExternalId] [varchar](10) NULL,
	[GroupId] [bigint] NULL,
	[GroupExternalId] [varchar](25) NULL,
	[MemberBrokerCompany] [varchar](100) NULL,
	[PayeeBrokerCompany] [varchar](100) NULL,
	[Refunds] [varchar](10) NULL,
	[Premium] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[Commission] [varchar](10) NULL,
	[PayeeBrokerId] [bigint] NULL,
	[PayeeExternalId] [varchar](25) NULL,
 CONSTRAINT [PK_CommissionAllPayPeriodData_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CommissionAllPayPeriodData]  WITH CHECK ADD  CONSTRAINT [FK_CommissionAllPayPeriodData_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
GO

ALTER TABLE [dbo].[CommissionAllPayPeriodData] CHECK CONSTRAINT [FK_CommissionAllPayPeriodData_Group_GroupId]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommissionPayPeriodData](
	[Id] [bigint] NOT NULL,
	[MemberId] [bigint] NULL,
	[Subtype] [varchar](50) NULL,
	[Debit] [varchar](9) NULL,
	[Credit] [varchar](7) NULL,
	[StartDate] [varchar](25) NULL,
	[EndDate] [varchar](25) NULL,
	[MemberBrokerId] [bigint] NULL,
	[MemberExternalId] [varchar](10) NULL,
	[GroupId] [bigint] NULL,
	[GroupExternalId] [varchar](25) NULL,
	[MemberBrokerCompany] [varchar](100) NULL,
	[PayeeBrokerCompany] [varchar](100) NULL,
	[Refunds] [varchar](10) NULL,
	[Premium] [varchar](10) NULL,
	[Status] [varchar](10) NULL,
	[Commission] [varchar](10) NULL,
	[PayeeBrokerId] [bigint] NULL,
	[PayeeExternalId] [varchar](25) NULL,
 CONSTRAINT [PK_CommissionPayPeriodData_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CommissionPayPeriodData]  WITH CHECK ADD  CONSTRAINT [FK_CommissionPayPeriodData_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
GO

ALTER TABLE [dbo].[CommissionPayPeriodData] CHECK CONSTRAINT [FK_CommissionPayPeriodData_Group_GroupId]
GO

ALTER TABLE Claims
DROP CONSTRAINT PK_Claims_ClaimsNumber
GO

ALTER TABLE Claims
ALTER COLUMN ClaimsNumber varchar(50) NOT NULL
GO

ALTER TABLE Claims
ADD ClaimID BIGINT IDENTITY(1,1) NOT NULL PRIMARY KEY
GO

ALTER TABLE Claims
ADD Admin123Id nvarchar(50) NOT NULL
GO
--Auth
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPermission]') AND type in (N'U'))
ALTER TABLE [dbo].[UserPermission] DROP CONSTRAINT IF EXISTS [UserPermission_UserRoleAssociationId_fk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPermission]') AND type in (N'U'))
ALTER TABLE [dbo].[UserPermission] DROP CONSTRAINT IF EXISTS [UserPermission_permissiondefinition_fk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePermission]') AND type in (N'U'))
ALTER TABLE [dbo].[RolePermission] DROP CONSTRAINT IF EXISTS [FK_RolePermission_PortalRoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePermission]') AND type in (N'U'))
ALTER TABLE [dbo].[RolePermission] DROP CONSTRAINT IF EXISTS [FK_RolePermission_PermissionDefinition_PermissionDefinitionId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortalRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[PortalRoles] DROP CONSTRAINT IF EXISTS [FK_PortalRoles_PortalRoleTypes_PortalRoleTypeId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionDefinition]') AND type in (N'U'))
ALTER TABLE [dbo].[PermissionDefinition] DROP CONSTRAINT IF EXISTS [FK_PermissionDefinition_PermissionGroup_PermissionGroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortalRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[PortalRoles] DROP CONSTRAINT IF EXISTS [DF_PortalRoles_IsCustomRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoleAssociation]') AND type in (N'U'))
ALTER TABLE [dbo].[UserRoleAssociation] DROP CONSTRAINT IF EXISTS [UserRoleAssociation_role_fk]
GO

DROP TABLE IF EXISTS [dbo].[UserPermission]
GO
DROP TABLE IF EXISTS [dbo].[RolePermission]
GO
DROP TABLE IF EXISTS [dbo].[PortalRoleTypes]
GO
DROP TABLE IF EXISTS [dbo].[PortalRoles]
GO
DROP TABLE IF EXISTS [dbo].[PermissionGroup]
GO
DROP TABLE IF EXISTS [dbo].[PermissionDefinition]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionDefinition](
	[PermissionDefinitionId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](500) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[PermissionGroupId] [int] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_PermissionDefinition_PermissionDefinitionId] PRIMARY KEY CLUSTERED 
(
	[PermissionDefinitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionGroup](
	[PermissionGroupId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](500) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_PermissionGroup_PermissionGroupId] PRIMARY KEY CLUSTERED 
(
	[PermissionGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortalRoles](
	[PortalRoleId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](500) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[IsCustomRole] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[PortalRoleTypeId] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PortalRoles_PortalRoleId] PRIMARY KEY CLUSTERED 
(
	[PortalRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortalRoleTypes](
	[PortalRoleTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PortalRoleTypes_PortalRoleTypeId] PRIMARY KEY CLUSTERED 
(
	[PortalRoleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermission](
	[RolePermissionId] [int] IDENTITY(1,1) NOT NULL,
	[PortalRoleId] [int] NOT NULL,
	[PermissionDefinitionId] [int] NOT NULL,
	[CanCreate] [int] NOT NULL,
	[CanRead] [int] NOT NULL,
	[CanUpdate] [int] NOT NULL,
	[CanDelete] [int] NOT NULL,
	[CanDownload] [int] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_RolePermission_RolePermissionId] PRIMARY KEY CLUSTERED 
(
	[RolePermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermission](
	[UserPermissionId] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleAssociationId] [int] NOT NULL,
	[PermissionDefinitionId] [int] NOT NULL,
	[CanCreate] [int] NOT NULL,
	[CanRead] [int] NOT NULL,
	[CanUpdate] [int] NOT NULL,
	[CanDelete] [int] NOT NULL,
	[CanDownload] [int] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_UserPermission_UserPermissionId] PRIMARY KEY CLUSTERED 
(
	[UserPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sp_rename 'dbo.UserRoleAssociation.RoleId', 'PortalRoleId', 'COLUMN'
GO

ALTER TABLE [dbo].[PortalRoles] ADD  CONSTRAINT [DF_PortalRoles_IsCustomRole]  DEFAULT ((0)) FOR [IsCustomRole]
GO
ALTER TABLE [dbo].[PermissionDefinition]  WITH CHECK ADD  CONSTRAINT [FK_PermissionDefinition_PermissionGroup_PermissionGroupId] FOREIGN KEY([PermissionGroupId])
REFERENCES [dbo].[PermissionGroup] ([PermissionGroupId])
GO
ALTER TABLE [dbo].[PermissionDefinition] CHECK CONSTRAINT [FK_PermissionDefinition_PermissionGroup_PermissionGroupId]
GO
ALTER TABLE [dbo].[PortalRoles]  WITH CHECK ADD  CONSTRAINT [FK_PortalRoles_PortalRoleTypes_PortalRoleTypeId] FOREIGN KEY([PortalRoleTypeId])
REFERENCES [dbo].[PortalRoleTypes] ([PortalRoleTypeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PortalRoles] CHECK CONSTRAINT [FK_PortalRoles_PortalRoleTypes_PortalRoleTypeId]
GO
ALTER TABLE [dbo].[RolePermission]  WITH CHECK ADD  CONSTRAINT [FK_RolePermission_PermissionDefinition_PermissionDefinitionId] FOREIGN KEY([PermissionDefinitionId])
REFERENCES [dbo].[PermissionDefinition] ([PermissionDefinitionId])
GO
ALTER TABLE [dbo].[RolePermission] CHECK CONSTRAINT [FK_RolePermission_PermissionDefinition_PermissionDefinitionId]
GO
ALTER TABLE [dbo].[RolePermission]  WITH CHECK ADD  CONSTRAINT [FK_RolePermission_PortalRoleId] FOREIGN KEY([PortalRoleId])
REFERENCES [dbo].[PortalRoles] ([PortalRoleId])
GO
ALTER TABLE [dbo].[RolePermission] CHECK CONSTRAINT [FK_RolePermission_PortalRoleId]
GO
ALTER TABLE [dbo].[UserPermission]  WITH CHECK ADD  CONSTRAINT [UserPermission_permissiondefinition_fk] FOREIGN KEY([PermissionDefinitionId])
REFERENCES [dbo].[PermissionDefinition] ([PermissionDefinitionId])
GO
ALTER TABLE [dbo].[UserPermission] CHECK CONSTRAINT [UserPermission_permissiondefinition_fk]
GO
ALTER TABLE [dbo].[UserPermission]  WITH CHECK ADD  CONSTRAINT [UserPermission_UserRoleAssociationId_fk] FOREIGN KEY([UserRoleAssociationId])
REFERENCES [dbo].[UserRoleAssociation] ([UserRoleAssociationId])
GO
ALTER TABLE [dbo].[UserPermission] CHECK CONSTRAINT [UserPermission_UserRoleAssociationId_fk]
GO
DROP TABLE IF EXISTS [dbo].[__EFMigrationsHistory]
GO

ALTER TABLE [dbo].[MemberDependentQuestionAnswer] 
ALTER COLUMN [DependentAnswer] nvarchar(500) NULL
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_BrokerHierarchy_ParentBrokerId') DROP INDEX [BrokerHierarchy].[IX_BrokerHierarchy_ParentBrokerId]
GO
CREATE NONCLUSTERED INDEX [IX_BrokerHierarchy_ParentBrokerId] ON [dbo].[BrokerHierarchy]
(
	[ParentBrokerId] ASC
)
INCLUDE ([BrokerId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_MasterData_Key') DROP INDEX [MasterData].[IX_MasterData_Key]
GO
CREATE NONCLUSTERED INDEX [IX_MasterData_Key] ON [dbo].[MasterData]
(
	[Key] ASC
)
INCLUDE ([Value]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MemberFeedback] ADD InquiryTypeEmail nvarchar(256) NULL
GO

ALTER TABLE [dbo].[MemberFeedback] ADD InquiryType nvarchar(50) NULL
GO

GO
IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_MemberSubscription_BrokerId') DROP INDEX [MemberSubscription].[IX_MemberSubscription_BrokerId]
GO
CREATE NONCLUSTERED INDEX [IX_MemberSubscription_BrokerId] ON [dbo].[MemberSubscription]
(
	[BrokerId] ASC
)
INCLUDE ( 	[MemberSubscriptionId],
	[MemberId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_BrokerHierarchy_brokerid') DROP INDEX [BrokerHierarchy].[IX_BrokerHierarchy_brokerid]
GO
CREATE NONCLUSTERED INDEX [IX_BrokerHierarchy_brokerid] ON [dbo].[BrokerHierarchy]
(
	[BrokerId] ASC
)
INCLUDE ( 	[ParentBrokerId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MemberPaymentDetail] DROP COLUMN DocumentId
GO