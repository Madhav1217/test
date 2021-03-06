CREATE PROCEDURE [dbo].[SP_BrokerUserMapping] 
	@UserName nvarchar(100), 
	@Email nvarchar(100), 
	@FirstName nvarchar(100), 
	@LastName nvarchar(100), 
	@BrokerID nvarchar(100),
	@DOB DateTime = null,
	@PersonalNPN nvarchar(10) = null
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserID bigint
	DECLARE @UserRoleAssociation bigint

   INSERT INTO Users(UserName,UserType,Email,IsEmailVerified,PasswordHash,TwoFactorEnabled,LockoutEnabled,AccessFailedCount,LastPasswordChangedDate,PortalId,NormalizedUserName,SecurityStamp,ConcurrencyStamp,PhoneNumberConfirmed,NormalizedEmail,CreatedBy,CreatedOn)
   SELECT @UserName,1,@Email,1,'',0,1,0,GETUTCDATE(),1,UPPER(@UserName),NEWID(),NEWID(),0,UPPER(@Email),1,GETUTCDATE()

   SET @UserID = SCOPE_IDENTITY()

   INSERT INTO UserRoleAssociation(RoleId,UserId,IsCustomPermission,CreatedBy,CreatedOn)
   SELECT 2,@UserID,1,1,GETUTCDATE()

    SET @UserRoleAssociation = SCOPE_IDENTITY()

   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,1,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,2,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,3,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,4,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,5,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,6,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,7,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,8,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,9,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,10,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,11,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,12,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,13,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,14,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,15,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,16,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,17,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,18,0,1,0,0,0,1,GETUTCDATE()
   INSERT INTO UserPermission(UserRoleAssociationId,PermissionDefinitionId,CanCreate,CanRead,CanUpdate,CanDelete,CanDownload,CreatedBy,CreatedOn)
   SELECT @UserRoleAssociation,19,0,1,0,0,0,1,GETUTCDATE()

   INSERT INTO Broker(UserId,Admin123Id,ExternalId,FirstName,LastName,DateOfBirth,PersonalNPN,BrokerTypeId,Status,IsActive,CreatedBy,CreatedOn)
   SELECT @UserID,@BrokerID,@BrokerID,@FirstName,@LastName,isnull(@DOB,'01/01/1900'),isnull(@PersonalNPN,@BrokerID),1,1,1,1,GETUTCDATE()

END
