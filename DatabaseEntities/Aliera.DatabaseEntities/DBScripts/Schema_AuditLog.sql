DROP TABLE IF EXISTS [dbo].[AuditLogs]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLogs](
	[AuditLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[Action] [nvarchar](100) NOT NULL,
	[ApplicationName] [nvarchar](100) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[AuditDate] [datetime] NOT NULL,
	[UserIPAddress] [nvarchar](30) NULL,
	[EntityType] [nvarchar](20) NULL,
	[EntityTypeId] [bigint] NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_AuditLogs_AuditLogId] PRIMARY KEY CLUSTERED 
(
	[AuditLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
