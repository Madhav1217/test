DROP PROCEDURE IF EXISTS [dbo].[spGetBrokerTree]
GO
DROP PROCEDURE IF EXISTS [dbo].[SP_GetCommissionsforRespectivePayPeriod]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSecurityQuestions]') AND type in (N'U'))
ALTER TABLE [dbo].[UserSecurityQuestions] DROP CONSTRAINT IF EXISTS [FK_UserSecurityQuestions_Users_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSecurityQuestions]') AND type in (N'U'))
ALTER TABLE [dbo].[UserSecurityQuestions] DROP CONSTRAINT IF EXISTS [FK_UserSecurityQuestions_SecurityQuestions_QuestionId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSecurityQuestionAnswers]') AND type in (N'U'))
ALTER TABLE [dbo].[UserSecurityQuestionAnswers] DROP CONSTRAINT IF EXISTS [FK_UserSecurityQuestionAnswers_Users_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserSecurityQuestionAnswers]') AND type in (N'U'))
ALTER TABLE [dbo].[UserSecurityQuestionAnswers] DROP CONSTRAINT IF EXISTS [FK_UserSecurityQuestionAnswers_SecurityQuestions_SecurityQuestionId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT IF EXISTS [FK_UserRoles_Roles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoleAssociation]') AND type in (N'U'))
ALTER TABLE [dbo].[UserRoleAssociation] DROP CONSTRAINT IF EXISTS [UserRoleAssociation_role_fk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoleAssociation]') AND type in (N'U'))
ALTER TABLE [dbo].[UserRoleAssociation] DROP CONSTRAINT IF EXISTS [rolepermission_user_fk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPermission]') AND type in (N'U'))
ALTER TABLE [dbo].[UserPermission] DROP CONSTRAINT IF EXISTS [UserPermission_UserRoleAssociationId_fk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserPermission]') AND type in (N'U'))
ALTER TABLE [dbo].[UserPermission] DROP CONSTRAINT IF EXISTS [UserPermission_permissiondefinition_fk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subgroup]') AND type in (N'U'))
ALTER TABLE [dbo].[Subgroup] DROP CONSTRAINT IF EXISTS [FK_Subgroup_Group_GroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePermission]') AND type in (N'U'))
ALTER TABLE [dbo].[RolePermission] DROP CONSTRAINT IF EXISTS [rolepermission_role_fk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolePermission]') AND type in (N'U'))
ALTER TABLE [dbo].[RolePermission] DROP CONSTRAINT IF EXISTS [rolepermission_permissiondefinition_fk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[RoleClaims] DROP CONSTRAINT IF EXISTS [FK_RoleClaims_Roles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductProviderNetwork]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductProviderNetwork] DROP CONSTRAINT IF EXISTS [FK__ProviderNetwork__ProviderNetworkId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductProviderNetwork]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductProviderNetwork] DROP CONSTRAINT IF EXISTS [FK__Product__ProductId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFee]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductFee] DROP CONSTRAINT IF EXISTS [FK_ProductFee_Product_ProductId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductFee]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductFee] DROP CONSTRAINT IF EXISTS [FK_ProductFee_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductAccumulator]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductAccumulator] DROP CONSTRAINT IF EXISTS [FK_ProductAccumulator_ProductId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductAccumulator]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductAccumulator] DROP CONSTRAINT IF EXISTS [FK_ProductAccumulator_AccumulatorId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT IF EXISTS [FK_Product_ProductSubCategory_ProductSubCategoryId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT IF EXISTS [FK_Product_ProductCategory_ProductCategoryId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlanPremium]') AND type in (N'U'))
ALTER TABLE [dbo].[PlanPremium] DROP CONSTRAINT IF EXISTS [FK_PlanPremium_Plan_PlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlanPackage]') AND type in (N'U'))
ALTER TABLE [dbo].[PlanPackage] DROP CONSTRAINT IF EXISTS [FK_PlanPackage_Plan_PlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plan]') AND type in (N'U'))
ALTER TABLE [dbo].[Plan] DROP CONSTRAINT IF EXISTS [FK_Plan_Product_ProductId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PermissionDefinition]') AND type in (N'U'))
ALTER TABLE [dbo].[PermissionDefinition] DROP CONSTRAINT IF EXISTS [FK_PermissionDefinition_PermissionGroup_PermissionGroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MigratedMemberProductDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[MigratedMemberProductDetails] DROP CONSTRAINT IF EXISTS [FK_MigratedMemberProductDetails_MemberSubscribedPlan_MemberSubscribedPlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT IF EXISTS [FK_Messages_Portals]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberSubscription]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberSubscription] DROP CONSTRAINT IF EXISTS [FK_MemberSubscription_Subgroup_SubgroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberSubscription]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberSubscription] DROP CONSTRAINT IF EXISTS [FK_MemberSubscription_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberSubscription]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberSubscription] DROP CONSTRAINT IF EXISTS [FK_MemberSubscription_Group_GroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberSubscription]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberSubscription] DROP CONSTRAINT IF EXISTS [FK_MemberSubscription_Division_DivisionId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberSubscription]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberSubscription] DROP CONSTRAINT IF EXISTS [FK_MemberSubscription_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberSubscribedPlanHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberSubscribedPlanHistory] DROP CONSTRAINT IF EXISTS [FK_MemberSubscribedPlanHistory_MemberSubscribedPlan_MemberSubscribedPlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberSubscribedPlan]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberSubscribedPlan] DROP CONSTRAINT IF EXISTS [FK_MemberSubscribedPlan_Plan_PlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberSubscribedPlan]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberSubscribedPlan] DROP CONSTRAINT IF EXISTS [FK_MemberSubscribedPlan_MemberSubscription_MemberSubscriptionId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberStatusHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberStatusHistory] DROP CONSTRAINT IF EXISTS [FK_MemberStatusHistory_MemberSubscribedPlan_MemberSubscribedPlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberQuestionAnswer]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberQuestionAnswer] DROP CONSTRAINT IF EXISTS [FK_MemberQuestionAnswer_MemberQuestionnaire_MemberQuestionnaireId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberQuestionAnswer]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberQuestionAnswer] DROP CONSTRAINT IF EXISTS [FK_MemberQuestionAnswer_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPaymentDetail]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPaymentDetail] DROP CONSTRAINT IF EXISTS [FK_MemberPaymentDetail_Product_ProductId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPaymentDetail]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPaymentDetail] DROP CONSTRAINT IF EXISTS [FK_MemberPaymentDetail_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDetail]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDetail] DROP CONSTRAINT IF EXISTS [FK_MemberDetail_Language_LanguageId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependentStatusHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependentStatusHistory] DROP CONSTRAINT IF EXISTS [FK_MemberDependentStatusHistory_MemberSubscribedPlan_MemberSubscribedPlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependentStatusHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependentStatusHistory] DROP CONSTRAINT IF EXISTS [FK_MemberDependentStatusHistory_MemberDetail_MemberDetailId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependentStatusHistory]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependentStatusHistory] DROP CONSTRAINT IF EXISTS [FK_MemberDependentStatusHistory_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependentQuestionAnswer]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependentQuestionAnswer] DROP CONSTRAINT IF EXISTS [FK_MemberDependentQuestionAnswer_MemberDetail_MemberDetailId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependentQuestionAnswer]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependentQuestionAnswer] DROP CONSTRAINT IF EXISTS [FK_MemberDependentQuestionAnswer_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependentAddress]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependentAddress] DROP CONSTRAINT IF EXISTS [FK_MemberDependentAddress_MemberDetail_MemberDetailId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependentAddress]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependentAddress] DROP CONSTRAINT IF EXISTS [FK_MemberDependentAddress_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependent]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependent] DROP CONSTRAINT IF EXISTS [FK_MemberDependent_MemberDetail_MemberDetailId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependent]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependent] DROP CONSTRAINT IF EXISTS [FK_MemberDependent_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberAddress]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberAddress] DROP CONSTRAINT IF EXISTS [FK_MemberAddress_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberAccumulatorDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberAccumulatorDetails] DROP CONSTRAINT IF EXISTS [FK_MemberAccumulatorDetails_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberAccumulatorDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberAccumulatorDetails] DROP CONSTRAINT IF EXISTS [FK_MemberAccumulatorDetails_MemberDetailId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberAccumulatorDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberAccumulatorDetails] DROP CONSTRAINT IF EXISTS [FK_MemberAccumulator_Accumulator_AccumulatorId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type in (N'U'))
ALTER TABLE [dbo].[Member] DROP CONSTRAINT IF EXISTS [FK_Member_MemberDetail_MemberDetailId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type in (N'U'))
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT IF EXISTS [FK_Invoices_Group_GroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceAging]') AND type in (N'U'))
ALTER TABLE [dbo].[InvoiceAging] DROP CONSTRAINT IF EXISTS [FK_InvoiceAging_Group_GroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GroupAddress]') AND type in (N'U'))
ALTER TABLE [dbo].[GroupAddress] DROP CONSTRAINT IF EXISTS [FK_GroupAddress_Group_GroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAQ]') AND type in (N'U'))
ALTER TABLE [dbo].[FAQ] DROP CONSTRAINT IF EXISTS [FK_FAQ_Portals_PortalId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FAQ]') AND type in (N'U'))
ALTER TABLE [dbo].[FAQ] DROP CONSTRAINT IF EXISTS [FK_FAQ_FAQCategory_FAQCategoryId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EODetails]') AND type in (N'U'))
ALTER TABLE [dbo].[EODetails] DROP CONSTRAINT IF EXISTS [FK_EODetails_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DocumentAndForm]') AND type in (N'U'))
ALTER TABLE [dbo].[DocumentAndForm] DROP CONSTRAINT IF EXISTS [FK_DocumentAndForm_Portals_PortalId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Division]') AND type in (N'U'))
ALTER TABLE [dbo].[Division] DROP CONSTRAINT IF EXISTS [FK_Division_Subgroup_SubgroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConsentMemberQuestionAnswer]') AND type in (N'U'))
ALTER TABLE [dbo].[ConsentMemberQuestionAnswer] DROP CONSTRAINT IF EXISTS [FK_ConsentMemberQuestionAnswer_MemberQuestionnaire_MemberQuestionnaireId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConsentMemberQuestionAnswer]') AND type in (N'U'))
ALTER TABLE [dbo].[ConsentMemberQuestionAnswer] DROP CONSTRAINT IF EXISTS [FK_ConsentMemberQuestionAnswer_Member_MemberId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CommissionReport]') AND type in (N'U'))
ALTER TABLE [dbo].[CommissionReport] DROP CONSTRAINT IF EXISTS [FK_CommissionReport_Member_[Member ID]]]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CommissionReport]') AND type in (N'U'))
ALTER TABLE [dbo].[CommissionReport] DROP CONSTRAINT IF EXISTS [FK_CommissionReport_Group_GroupId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CommissionReport]') AND type in (N'U'))
ALTER TABLE [dbo].[CommissionReport] DROP CONSTRAINT IF EXISTS [FK_CommissionReport_Broker_[Payee Agent ID]]]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CommissionReport]') AND type in (N'U'))
ALTER TABLE [dbo].[CommissionReport] DROP CONSTRAINT IF EXISTS [FK_CommissionReport_Broker_[Member Agent ID]]]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Claims]') AND type in (N'U'))
ALTER TABLE [dbo].[Claims] DROP CONSTRAINT IF EXISTS [FK_Claims_ClaimsStatus_ClaimsStatusID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerProduct]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerProduct] DROP CONSTRAINT IF EXISTS [FK_BrokerProduct_Product_ProductId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerProduct]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerProduct] DROP CONSTRAINT IF EXISTS [FK_BrokerProduct_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerPayPeriod]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerPayPeriod] DROP CONSTRAINT IF EXISTS [FK_PayPeriod_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerHierarchy]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerHierarchy] DROP CONSTRAINT IF EXISTS [FK_BrokerHierarchy_Broker_ParentBrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerHierarchy]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerHierarchy] DROP CONSTRAINT IF EXISTS [FK_BrokerHierarchy_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerDocument]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerDocument] DROP CONSTRAINT IF EXISTS [FK_BrokerDocument_DocumentCategoryId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerDocument]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerDocument] DROP CONSTRAINT IF EXISTS [FK_BrokerDocument_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerContact]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerContact] DROP CONSTRAINT IF EXISTS [FK_BrokerContact_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerAddress]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerAddress] DROP CONSTRAINT IF EXISTS [FK_BrokerAddress_Broker_BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Broker]') AND type in (N'U'))
ALTER TABLE [dbo].[Broker] DROP CONSTRAINT IF EXISTS [FK_Broker_BrokerType_BrokerTypeId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentCommission]') AND type in (N'U'))
ALTER TABLE [dbo].[AgentCommission] DROP CONSTRAINT IF EXISTS [FK_AgentCommission_Product_ProductId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentCommission]') AND type in (N'U'))
ALTER TABLE [dbo].[AgentCommission] DROP CONSTRAINT IF EXISTS [FK_AgentCommission_Broker_PayToAgentId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentCommission]') AND type in (N'U'))
ALTER TABLE [dbo].[AgentCommission] DROP CONSTRAINT IF EXISTS [FK_AgentCommission_Broker_AgentId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AddOnPlan]') AND type in (N'U'))
ALTER TABLE [dbo].[AddOnPlan] DROP CONSTRAINT IF EXISTS [FK_AddOnPlan_Plan_PlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoleAssociation]') AND type in (N'U'))
ALTER TABLE [dbo].[UserRoleAssociation] DROP CONSTRAINT IF EXISTS [DF_UserRoleAssociation_IsCustomPermission]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategory]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductCategory] DROP CONSTRAINT IF EXISTS [DF__ProductCategory__IsMigrated]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategory]') AND type in (N'U'))
ALTER TABLE [dbo].[ProductCategory] DROP CONSTRAINT IF EXISTS [DF_ProductCategory_IsPrimary]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT IF EXISTS [DF_Product_IsPolicyTerm]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT IF EXISTS [DF_Product_IsGroupProduct]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT IF EXISTS [DF_Product_CanPayNextDay]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT IF EXISTS [DF_Product_TobaccoUserFee]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
ALTER TABLE [dbo].[Product] DROP CONSTRAINT IF EXISTS [DF_Product_FamilyRiderFee]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortalRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[PortalRoles] DROP CONSTRAINT IF EXISTS [DF_PortalRoles_IsCustomRole]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlanPackage]') AND type in (N'U'))
ALTER TABLE [dbo].[PlanPackage] DROP CONSTRAINT IF EXISTS [DF_PlanPackage_IsMigrated]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MigratedMemberProductDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[MigratedMemberProductDetails] DROP CONSTRAINT IF EXISTS [DF_MigratedMemberProductDetails_MemberSubscribedPlanId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
ALTER TABLE [dbo].[Messages] DROP CONSTRAINT IF EXISTS [DF_Messages_IsRead]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_IsSpouse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_IsChild]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_MinAge]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_MaxAge]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_MemberAge]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_PrimaFamilyIndicator]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_NonPrimaFamilyIndicator]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_NoOfTobaccoUser]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberPlanParameter]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberPlanParameter] DROP CONSTRAINT IF EXISTS [DF_MemberPlanParameter_NoOfDependents]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MemberDependent]') AND type in (N'U'))
ALTER TABLE [dbo].[MemberDependent] DROP CONSTRAINT IF EXISTS [DF_MemberDependent_IsTobaccoUser]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type in (N'U'))
ALTER TABLE [dbo].[Member] DROP CONSTRAINT IF EXISTS [DF_Member_IsFamilyRiderOn]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Member]') AND type in (N'U'))
ALTER TABLE [dbo].[Member] DROP CONSTRAINT IF EXISTS [DF_Member_IsTobaccoUser]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerContact]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerContact] DROP CONSTRAINT IF EXISTS [DF_BrokerContract_EmailId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BrokerContact]') AND type in (N'U'))
ALTER TABLE [dbo].[BrokerContact] DROP CONSTRAINT IF EXISTS [DF_BrokerContact_DoNotCall]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentUserBridge]') AND type in (N'U'))
ALTER TABLE [dbo].[AgentUserBridge] DROP CONSTRAINT IF EXISTS [FK__AgentUserBridge__Broker__BrokerId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgentUserBridge]') AND type in (N'U'))
ALTER TABLE [dbo].[AgentUserBridge] DROP CONSTRAINT IF EXISTS [FK__AgentUserBridge__User__UserId]
GO
DROP INDEX IF EXISTS [IX_Users_NormalizedUserName] ON [dbo].[Users]
GO
DROP INDEX IF EXISTS [IX_UserRoleAssociation_UserId_IsCustomPermission] ON [dbo].[UserRoleAssociation]
GO
DROP INDEX IF EXISTS [IX_UserRoleAssociation_UserId] ON [dbo].[UserRoleAssociation]
GO
DROP INDEX IF EXISTS [IX_Tokens_UserId] ON [dbo].[Tokens]
GO
DROP INDEX IF EXISTS [IX_ProductFee_ProductId] ON [dbo].[ProductFee]
GO
DROP INDEX IF EXISTS [IX_ProductFee_BrokerId] ON [dbo].[ProductFee]
GO
DROP INDEX IF EXISTS [IX_Messages_RecipientId_PortalId] ON [dbo].[Messages]
GO
DROP INDEX IF EXISTS [IX_Messages_RecipientId_IsRead_PortalId_MessageSentTime] ON [dbo].[Messages]
GO
DROP INDEX IF EXISTS [IX_MemberSubscription_MemberId] ON [dbo].[MemberSubscription]
GO
DROP INDEX IF EXISTS [IX_MemberSubscription_BrokerId] ON [dbo].[MemberSubscription]
GO
DROP INDEX IF EXISTS [IX_MemberSubscribedPlan_PlanId] ON [dbo].[MemberSubscribedPlan]
GO
DROP INDEX IF EXISTS [IX_MemberSubscribedPlan_MemberSubscriptionId1] ON [dbo].[MemberSubscribedPlan]
GO
DROP INDEX IF EXISTS [IX_MemberSubscribedPlan_MemberSubscriptionId] ON [dbo].[MemberSubscribedPlan]
GO
DROP INDEX IF EXISTS [IX_MemberStatusHistory_MemberSubscribedPlanId_InActiveDate_ActiveDate] ON [dbo].[MemberStatusHistory]
GO
DROP INDEX IF EXISTS [IX_MemberStatusHistory_MemberSubscribedPlanId] ON [dbo].[MemberStatusHistory]
GO
DROP INDEX IF EXISTS [IX_MemberStatusHistory_MemberId] ON [dbo].[MemberStatusHistory]
GO
DROP INDEX IF EXISTS [IX_MemberStatusHistory_InActiveDate_ActiveDate] ON [dbo].[MemberStatusHistory]
GO
DROP INDEX IF EXISTS [IX_MemberStatusHistory_ActiveDate_InActiveDate] ON [dbo].[MemberStatusHistory]
GO
DROP INDEX IF EXISTS [IX_MemberPaymentDetail_MemberId] ON [dbo].[MemberPaymentDetail]
GO
DROP INDEX IF EXISTS [IX_MemberDetail_DateOfBirth] ON [dbo].[MemberDetail]
GO
DROP INDEX IF EXISTS [IX_MemberDependentAddress_MemberDetailId] ON [dbo].[MemberDependentAddress]
GO
DROP INDEX IF EXISTS [IX_MemberDependent_MemberDetailId] ON [dbo].[MemberDependent]
GO
DROP INDEX IF EXISTS [IX_Member_Status_ExternalId] ON [dbo].[Member]
GO
DROP INDEX IF EXISTS [IX_Member_Status_CreatedOn] ON [dbo].[Member]
GO
DROP INDEX IF EXISTS [IX_Member_Status] ON [dbo].[Member]
GO
DROP INDEX IF EXISTS [IX_Member_MemberDetailId_Status] ON [dbo].[Member]
GO
DROP INDEX IF EXISTS [IX_Member_MemberDetailId] ON [dbo].[Member]
GO
DROP INDEX IF EXISTS [IX_Member_ExternalId] ON [dbo].[Member]
GO
DROP INDEX IF EXISTS [IX_Member_CreatedOn] ON [dbo].[Member]
GO
DROP INDEX IF EXISTS [IX_Invoices_GroupId] ON [dbo].[Invoices]
GO
DROP INDEX IF EXISTS [IX_Group_BrokerId] ON [dbo].[Group]
GO
DROP INDEX IF EXISTS [IX_Group_Admin123Id] ON [dbo].[Group]
GO
DROP INDEX IF EXISTS [IX_CommissionReport_Payee Agent ID_Posted Date] ON [dbo].[CommissionReport]
GO
DROP INDEX IF EXISTS [IX_CommissionReport_Payee Agent ID_Member Agent ID] ON [dbo].[CommissionReport]
GO
DROP INDEX IF EXISTS [IX_CommissionReport_Payee Agent ID] ON [dbo].[CommissionReport]
GO
DROP INDEX IF EXISTS [IX_BrokerProduct_ProductId] ON [dbo].[BrokerProduct]
GO
DROP INDEX IF EXISTS [IX_BrokerPayPeriod_BrokerId] ON [dbo].[BrokerPayPeriod]
GO
DROP INDEX IF EXISTS [IX_BrokerLicense_StateCode_ExpiryDate] ON [dbo].[BrokerLicense]
GO
DROP INDEX IF EXISTS [IX_BrokerLicense_StateCode] ON [dbo].[BrokerLicense]
GO
DROP INDEX IF EXISTS [IX_BrokerLicense_BrokerId_ActiveDate_ExpiryDate] ON [dbo].[BrokerLicense]
GO
DROP INDEX IF EXISTS [IX_BrokerHierarchy_parentbrokerid] ON [dbo].[BrokerHierarchy]
GO
DROP INDEX IF EXISTS [IX_BrokerHierarchy_brokerid] ON [dbo].[BrokerHierarchy]
GO
DROP INDEX IF EXISTS [IX_BrokerContact_BrokerId] ON [dbo].[BrokerContact]
GO
DROP INDEX IF EXISTS [IX_BrokerAddress_BrokerId] ON [dbo].[BrokerAddress]
GO
DROP INDEX IF EXISTS [IX_Broker_Status_PersonalNPN] ON [dbo].[Broker]
GO
DROP INDEX IF EXISTS [IX_Broker_Status] ON [dbo].[Broker]
GO
DROP INDEX IF EXISTS [IX_Broker_PersonalNPN] ON [dbo].[Broker]
GO
DROP INDEX IF EXISTS [IX_Broker_ExternalId] ON [dbo].[Broker]
GO
DROP INDEX IF EXISTS [IX_Broker_Admin123Id] ON [dbo].[Broker]
GO
DROP INDEX IF EXISTS [IX_AgentCommission_AgentId_AgentActive_ProductId_PayToAgentActive] ON [dbo].[AgentCommission]
GO
DROP INDEX IF EXISTS [IX_AgentCommission_AgentId_AgentActive_PayToAgentActive_ProductId] ON [dbo].[AgentCommission]
GO
DROP TABLE IF EXISTS [dbo].[UserSecurityQuestions]
GO
DROP TABLE IF EXISTS [dbo].[UserSecurityQuestionAnswers]
GO
DROP TABLE IF EXISTS [dbo].[Users]
GO
DROP TABLE IF EXISTS [dbo].[UserRoles]
GO
DROP TABLE IF EXISTS [dbo].[UserRoleAssociation]
GO
DROP TABLE IF EXISTS [dbo].[UserPermission]
GO
DROP TABLE IF EXISTS [dbo].[UserClaims]
GO
DROP TABLE IF EXISTS [dbo].[Tokens]
GO
DROP TABLE IF EXISTS [dbo].[Subgroup]
GO
DROP TABLE IF EXISTS [dbo].[State]
GO
DROP TABLE IF EXISTS [dbo].[SecurityQuestions]
GO
DROP TABLE IF EXISTS [dbo].[Roles]
GO
DROP TABLE IF EXISTS [dbo].[RolePermission]
GO
DROP TABLE IF EXISTS [dbo].[RoleClaims]
GO
DROP TABLE IF EXISTS [dbo].[RecipientCategory]
GO
DROP TABLE IF EXISTS [dbo].[ProviderNetwork]
GO
DROP TABLE IF EXISTS [dbo].[ProductSubCategory]
GO
DROP TABLE IF EXISTS [dbo].[ProductProviderNetwork]
GO
DROP TABLE IF EXISTS [dbo].[ProductFee]
GO
DROP TABLE IF EXISTS [dbo].[ProductCategory]
GO
DROP TABLE IF EXISTS [dbo].[ProductAccumulator]
GO
DROP TABLE IF EXISTS [dbo].[Product]
GO
DROP TABLE IF EXISTS [dbo].[Portals]
GO
DROP TABLE IF EXISTS [dbo].[PortalRoles]
GO
DROP TABLE IF EXISTS [dbo].[PlanPremium]
GO
DROP TABLE IF EXISTS [dbo].[PlanPackage]
GO
DROP TABLE IF EXISTS [dbo].[PlanBenefit]
GO
DROP TABLE IF EXISTS [dbo].[Plan]
GO
DROP TABLE IF EXISTS [dbo].[PermissionGroup]
GO
DROP TABLE IF EXISTS [dbo].[PermissionDefinition]
GO
DROP TABLE IF EXISTS [dbo].[Notification]
GO
DROP TABLE IF EXISTS [dbo].[MigratedMemberProductDetails]
GO
DROP TABLE IF EXISTS [dbo].[Messages]
GO
DROP TABLE IF EXISTS [dbo].[MemberSubscribedPlanHistory]
GO
DROP TABLE IF EXISTS [dbo].[MemberSubscribedPlan]
GO
DROP TABLE IF EXISTS [dbo].[MemberStatusHistory]
GO
DROP TABLE IF EXISTS [dbo].[MemberQuestionnaire]
GO
DROP TABLE IF EXISTS [dbo].[MemberQuestionAnswer]
GO
DROP TABLE IF EXISTS [dbo].[MemberPlanParameter]
GO
DROP TABLE IF EXISTS [dbo].[MemberPaymentDetail]
GO
DROP TABLE IF EXISTS [dbo].[MemberFeedback]
GO
DROP TABLE IF EXISTS [dbo].[MemberDetail]
GO
DROP TABLE IF EXISTS [dbo].[MemberDependentStatusHistory]
GO
DROP TABLE IF EXISTS [dbo].[MemberDependentQuestionAnswer]
GO
DROP TABLE IF EXISTS [dbo].[MemberDependentAddress]
GO
DROP TABLE IF EXISTS [dbo].[MemberDependent]
GO
DROP TABLE IF EXISTS [dbo].[MemberAddress]
GO
DROP TABLE IF EXISTS [dbo].[MemberAccumulatorDetails]
GO
DROP TABLE IF EXISTS [dbo].[MasterData]
GO
DROP TABLE IF EXISTS [dbo].[Logs]
GO
DROP TABLE IF EXISTS [dbo].[Language]
GO
DROP TABLE IF EXISTS [dbo].[Invoices]
GO
DROP TABLE IF EXISTS [dbo].[InvoiceAging]
GO
DROP TABLE IF EXISTS [dbo].[GroupAddress]
GO
DROP TABLE IF EXISTS [dbo].[Group]
GO
DROP TABLE IF EXISTS [dbo].[FAQCategory]
GO
DROP TABLE IF EXISTS [dbo].[FAQ]
GO
DROP TABLE IF EXISTS [dbo].[ExternalProviderUserTokens]
GO
DROP TABLE IF EXISTS [dbo].[ExternalProviderUserLogins]
GO
DROP TABLE IF EXISTS [dbo].[EODetails]
GO
DROP TABLE IF EXISTS [dbo].[DocumentCategory]
GO
DROP TABLE IF EXISTS [dbo].[DocumentAndForm]
GO
DROP TABLE IF EXISTS [dbo].[Division]
GO
DROP TABLE IF EXISTS [dbo].[ConsentMemberQuestionAnswer]
GO
DROP TABLE IF EXISTS [dbo].[CommissionReport]
GO
DROP TABLE IF EXISTS [dbo].[ClaimsStatus]
GO
DROP TABLE IF EXISTS [dbo].[Claims]
GO
DROP TABLE IF EXISTS [dbo].[BulletinBoardNews]
GO
DROP TABLE IF EXISTS [dbo].[BrokerProduct]
GO
DROP TABLE IF EXISTS [dbo].[BrokerPayPeriod]
GO
DROP TABLE IF EXISTS [dbo].[BrokerLicense]
GO
DROP TABLE IF EXISTS [dbo].[BrokerDocument]
GO
DROP TABLE IF EXISTS [dbo].[BrokerContact]
GO
DROP TABLE IF EXISTS [dbo].[BrokerAddress]
GO
DROP TABLE IF EXISTS [dbo].[Benefit]
GO
DROP TABLE IF EXISTS [dbo].[AgentCommission]
GO
DROP TABLE IF EXISTS [dbo].[Admin123MasterData]
GO
DROP TABLE IF EXISTS [dbo].[Admin123Log]
GO
DROP TABLE IF EXISTS [dbo].[AddOnPlan]
GO
DROP TABLE IF EXISTS [dbo].[Accumulator]
GO
DROP TABLE IF EXISTS [dbo].[__EFMigrationsHistory]
GO
DROP VIEW IF EXISTS [dbo].[VW_BROKERS]
GO
DROP TABLE IF EXISTS [dbo].[BrokerHierarchy]
GO
DROP TABLE IF EXISTS [dbo].[MemberSubscription]
GO
DROP TABLE IF EXISTS [dbo].[Member]
GO
DROP TABLE IF EXISTS [dbo].[BrokerType]
GO
DROP TABLE IF EXISTS [dbo].[Broker]
GO
DROP TABLE IF EXISTS [dbo].[AgentUserBridge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Broker](
	[BrokerId] [bigint] IDENTITY(1,1) NOT NULL,	
	[Admin123Id] [nvarchar](50) NULL,
	[ExternalId] [nvarchar](50) NULL,
	[Salutation] [nvarchar](10) NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Alias] [nvarchar](100) NULL,
	[Suffix] [nvarchar](10) NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[PersonalNPN] [nvarchar](10) NULL,
	[BrokerTypeId] [int] NULL,
	[Company] [nvarchar](100) NULL,
	[Status] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsWebsiteActive] [bit] NULL,
	[TrainingDate] [datetimeoffset](7) NULL,
	[TermDate] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[TaxId] [varchar](20) NULL,
	[IsVoiceVerification] [bit] NOT NULL,
 CONSTRAINT [PK_Broker_BrokerId] PRIMARY KEY CLUSTERED 
(
	[BrokerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerType](
	[BrokerTypeId] [int] IDENTITY(1,1) NOT NULL,
	[BrokerTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BrokerType_BrokerTypeId] PRIMARY KEY CLUSTERED 
(
	[BrokerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentUserBridge](
	[AgentId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK__AgentUserBridge__UserId] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberDetailId] [bigint] NOT NULL,
	[Status] [int] NOT NULL,
	[ExternalId] [nvarchar](50) NULL,
	[Admin123Id] [nvarchar](50) NULL,
	[IsTobaccoUser] [bit] NOT NULL,
	[IsFamilyRiderOn] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[UserId] [bigint] NULL,
	[DigitalIDCardId] [bigint] NULL,
 CONSTRAINT [PK_Member_MemberId] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberSubscription](
	[MemberSubscriptionId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[TotalPremium] [decimal](8, 2) NULL,
	[EffectiveDate] [datetime] NULL,
	[FirstPaymentDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[NotificationEmail] [nvarchar](510) NULL,
	[NotificationPhone] [nvarchar](40) NULL,
	[NotificationDate] [datetime] NULL,
	[PaymentType] [int] NULL,
	[SignedDate] [datetime] NULL,
	[RoutingNumber] [nvarchar](50) NULL,
	[CardOrAccountNumber] [nvarchar](50) NULL,
	[VerificationCode] [nvarchar](50) NULL,
	[Browser] [nvarchar](100) NULL,
	[IPAddress] [nvarchar](50) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[GroupId] [bigint] NULL,
	[SubgroupId] [bigint] NULL,
	[DivisionId] [bigint] NULL,
	[CardType] [int] NULL,
	[DocumentID] [bigint] NULL,
 CONSTRAINT [PK_MemberSubscription_MemberSubscriptionId] PRIMARY KEY CLUSTERED 
(
	[MemberSubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerHierarchy](
	[BrokerHierarchyId] [int] IDENTITY(1,1) NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[ParentBrokerId] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_BrokerHierarchy_BrokerHierarchyId] PRIMARY KEY CLUSTERED 
(
	[BrokerHierarchyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_BROKERS]
AS   

WITH Brokers (
 BrokerId,  
 FirstName, 
 MiddleName, 
 LastName,  
 IsWebsiteActive,  
 IsActive,  
 BrokerTypeId,   
 RootId,  
 Tree,   
 IsChild,  
 TermDate,  
 Company,  
 PersonalNPN,
 ExternalId,
 [Status]
 )   

AS  

(  
 SELECT  
  B.BrokerId,   
  FirstName,   
  MiddleName, 
  LastName,   
  b.IsWebsiteActive,  
  B.IsActive, 
  B.BrokerTypeId,  
  B.BrokerId AS RootId,   
  0 AS Tree,   
  0 as IsChild,  
  B.TermDate, 
  Company,  
  PersonalNPN,
  B.ExternalId,
  B.[Status]
 FROM [dbo].Broker B  
  LEFT OUTER JOIN [dbo].BrokerHierarchy BH  
   ON (B.BrokerId = BH.BrokerId  
      and BH.BrokerId != bh.ParentBrokerId)  
)  

SELECT  
 BS.BrokerId, 
 BS.FirstName,  
 MiddleName,  
 LastName,  
 BT.BrokerTypeName,  
 S.CumulativeChildren,    
ISNULL((SELECT COUNT(*) FROM [dbo].[MemberSubscription] mps
INNER JOIN [dbo].MEMBER MB ON mps.[MemberId] = MB.[MemberId]
WHERE mps.BROKERID = BS.BrokerId),0)AS MemberCount,
 IsWebsiteActive,   
 IsActive,  
 TermDate,  
 Company,  
 PersonalNPN,
 BS.ExternalId,
 BS.[Status]
FROM Brokers BS  
 LEFT OUTER JOIN [dbo].BrokerType BT  
  ON BT.BrokerTypeId = BS.BrokerTypeId 
 LEFT OUTER JOIN (SELECT RootID,  
      SUM(IsChild) AS CumulativeChildren  
     FROM Brokers BS  
     GROUP BY RootID) AS S  
  ON S.RootId = BS.BrokerId  
 LEFT OUTER JOIN [dbo].MemberSubscription MPS   
  ON MPS.BrokerId = BS.BrokerId  
GROUP BY   
 BS.BrokerId,   
 BS.FirstName,   
 MiddleName,   
 LastName,   
 BT.BrokerTypeName,   
 S.CumulativeChildren,  
 IsWebsiteActive,   
 IsActive,  
 TermDate,  
 Company,  
 PersonalNPN, 
 BS.ExternalId,
 BS.[Status];  
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accumulator](
	[AccumulatorId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Accumulator] PRIMARY KEY CLUSTERED 
(
	[AccumulatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddOnPlan](
	[AddOnPlanId] [int] IDENTITY(1,1) NOT NULL,
	[PlanId] [int] NOT NULL,
	[AddOnPlanIds] [nvarchar](500) NULL,
 CONSTRAINT [PK_AddOnPlan_AddOnPlanId] PRIMARY KEY CLUSTERED 
(
	[AddOnPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin123Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[Content] [varchar](max) NOT NULL,
	[Response] [varchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Admin123Log_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin123MasterData](
	[Admin123MasterDataId] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](250) NOT NULL,
	[Value] [int] NULL,
 CONSTRAINT [PK_Admin123MasterData_Admin123MasterDataId] PRIMARY KEY CLUSTERED 
(
	[Admin123MasterDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentCommission](
	[AgentCommissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[Parent] [varchar](58) NULL,
	[AgentId] [bigint] NULL,
	[AgentLabel] [varchar](77) NULL,
	[AgentActive] [varchar](3) NULL,
	[LastName] [varchar](21) NULL,
	[FirstName] [varchar](19) NULL,
	[Company] [varchar](77) NULL,
	[TreeCount] [varchar](5) NULL,
	[ProductId] [int] NULL,
	[ProductLabel] [varchar](81) NULL,
	[Commissionable] [varchar](3) NULL,
	[PayToAgentId] [bigint] NULL,
	[PayToAgentLabel] [varchar](77) NULL,
	[PayToAgentActive] [bit] NULL,
	[Amount] [varchar](7) NULL,
	[AmountType] [varchar](7) NULL,
	[PriceTypes] [varchar](15) NULL,
	[PriceIds] [varchar](20) NULL,
	[MemberActiveStartDate] [date] NULL,
	[MemberActiveEndDate] [date] NULL,
	[BillingStartDate] [date] NULL,
	[BillingEndDate] [date] NULL,
	[TransactionStartDate] [date] NULL,
	[TransactionEndDate] [date] NULL,
	[Advancement] [varchar](3) NULL,
	[AdvancementMonths] [varchar](5) NULL,
	[PayOnPaymentNumber] [varchar](10) NULL,
	[IncludeforPaymentNumber] [varchar](24) NULL,
	[ExcludeforPaymentNumber] [varchar](26) NULL,
	[IncludePriceTypes] [varchar](10) NULL,
	[ExcludePriceTypes] [varchar](10) NULL,
	[IncludeAllPriceTypes] [varchar](10) NULL,
	[ExcludeAllPriceTypes] [varchar](10) NULL,
	[WebsiteDisplayActive] [varchar](3) NULL,
	[CommissionStart] [date] NULL,
	[CommissionEnd] [date] NULL,
 CONSTRAINT [PK_AgentCommission_AgentCommissionId] PRIMARY KEY CLUSTERED 
(
	[AgentCommissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefit](
	[BenefitId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Benefit_BenefitId] PRIMARY KEY CLUSTERED 
(
	[BenefitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerAddress](
	[BrokerAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[AddressLine1] [nvarchar](500) NULL,
	[AddressLine2] [nvarchar](500) NULL,
	[City] [nvarchar](100) NULL,
	[StateCode] [nvarchar](2) NOT NULL,
	[ZipCode] [nvarchar](20) NULL,
	[CountryCode] [nvarchar](10) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_BrokerAddress_BrokerAddressId] PRIMARY KEY CLUSTERED 
(
	[BrokerAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerContact](
	[BrokerContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Ext] [nvarchar](6) NULL,
	[PhoneNumberAlternate] [nvarchar](20) NULL,
	[BestTimeToCall] [nvarchar](15) NULL,
	[FaxNumber] [nvarchar](10) NULL,
	[EmailId] [nvarchar](255) NULL,
	[EmailIdAlternate] [nvarchar](255) NULL,
	[Website] [nvarchar](500) NULL,
	[DoNotCall] [bit] NULL,
	[EmailOptOut] [bit] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_BrokerContactInfo_BrokerContactId] PRIMARY KEY CLUSTERED 
(
	[BrokerContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerDocument](
	[BrokerDocumentId] [int] IDENTITY(1,1) NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[DocumentCreatedDate] [datetimeoffset](7) NOT NULL,
	[DocumentCategoryId] [int] NOT NULL,
	[DisplayDocumentName] [nvarchar](300) NOT NULL,
	[DocumentName] [nvarchar](300) NOT NULL,
	[DocumentLabel] [nvarchar](100) NULL,
	[DocumentNotes] [nvarchar](3000) NULL,
	[IsSecuredDocument] [bit] NOT NULL,
	[DocumentType] [nvarchar](10) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[DocumentId] [bigint] NULL,
	[DocumentId_123] [nvarchar](50) NULL,
 CONSTRAINT [PK_BrokerDocument_BrokerDocumentId] PRIMARY KEY CLUSTERED 
(
	[BrokerDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerLicense](
	[LicenseNumber] [nvarchar](50) NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[StateCode] [nvarchar](2) NOT NULL,
	[ActiveDate] [datetime] NOT NULL,
	[ExpiryDate] [datetime] NOT NULL,
	[LicenseType] [nvarchar](60) NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Composite_BrokerLicense_LicenseNumber_BrokerId] PRIMARY KEY NONCLUSTERED 
(
	[LicenseNumber] ASC,
	[BrokerId] ASC,
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerPayPeriod](
	[PayPeriodId] [int] IDENTITY(1,1) NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[PayPeriod] [int] NULL,
	[StartPeriod] [varchar](50) NULL,
	[EndPeriod] [varchar](50) NULL,
 CONSTRAINT [PK_BrokerPayPeriod_PayPeriodId] PRIMARY KEY CLUSTERED 
(
	[PayPeriodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrokerProduct](
	[BrokerId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ApplicationFee] [decimal](12, 2) NULL,
	[NoSaleStates] [nvarchar](2000) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Composite_BrokerProduct_BrokerId_ProductId] PRIMARY KEY NONCLUSTERED 
(
	[BrokerId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BulletinBoardNews](
	[BulletinBoardNewsId] [bigint] IDENTITY(1,1) NOT NULL,
	[News] [nvarchar](max) NOT NULL,
	[NewsCreateTime] [datetime] NULL,
	[CreatorId] [bigint] NULL,
 CONSTRAINT [PK_BulletinBoardNews_BulletinBoardNewsId] PRIMARY KEY CLUSTERED 
(
	[BulletinBoardNewsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claims](
	[ClaimsNumber] [bigint] NOT NULL,
	[MemberExternalID] [varchar](100) NOT NULL,
	[ClaimsStatusID] [int] NOT NULL,
	[ClaimsTypeID] [int] NOT NULL,
	[ServiceStartDate] [datetime] NOT NULL,
	[ServiceDescription] [nvarchar](max) NOT NULL,
	[PlanDiscountedRate] [decimal](10, 2) NOT NULL,
	[BilledAmount] [decimal](10, 2) NOT NULL,
	[PlanPaidAmount] [decimal](10, 2) NOT NULL,
	[DueAmount] [decimal](10, 2) NOT NULL,
	[MSRAAmount] [decimal](10, 2) NOT NULL,
	[FacilityName] [nvarchar](max) NOT NULL,
	[DocumentID] [bigint] NULL,
	[ProcessingDate] [datetime] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ServiceEndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Claims_ClaimsNumber] PRIMARY KEY CLUSTERED 
(
	[ClaimsNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimsStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_ClaimsStatus_Id] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommissionReport](
	[Posted Date] [datetime] NULL,
	[Created Date] [datetime] NULL,
	[Type] [varchar](7) NULL,
	[Subtype] [varchar](50) NULL,
	[Notes] [varchar](82) NULL,
	[Credit] [varchar](7) NULL,
	[Debit] [varchar](9) NULL,
	[Total] [varchar](10) NULL,
	[Payee Agent ID] [bigint] NULL,
	[Payee Agent Label] [varchar](77) NULL,
	[Payee Address 1] [varchar](43) NULL,
	[Payee Address 2] [varchar](30) NULL,
	[Payee City] [varchar](20) NULL,
	[Payee State] [varchar](2) NULL,
	[Payee Zipcode] [varchar](10) NULL,
	[Member ID] [bigint] NULL,
	[Member Company] [varchar](100) NULL,
	[Member First Name] [varchar](50) NULL,
	[Member Last Name] [varchar](50) NULL,
	[Member Agent ID] [bigint] NULL,
	[Member Agent Label] [varchar](77) NULL,
	[Member Agent Category] [varchar](28) NULL,
	[Member Source Detail] [varchar](1) NULL,
	[Member Lead Status] [varchar](19) NULL,
	[Product ID] [varchar](5) NULL,
	[Product Label] [varchar](70) NULL,
	[Product Category] [varchar](25) NULL,
	[Product Category 2] [varchar](6) NULL,
	[Product Code] [varchar](7) NULL,
	[Product Created Date] [varchar](9) NULL,
	[Product Active Date] [varchar](9) NULL,
	[Transaction ID] [varchar](8) NULL,
	[Transaction Amount] [varchar](10) NULL,
	[Transaction Type] [varchar](10) NULL,
	[Transaction Payment] [varchar](2) NULL,
	[Transaction Paid Through Start] [varchar](9) NULL,
	[Transaction Paid Through End] [varchar](9) NULL,
	[Commissionable Amount] [varchar](10) NULL,
	[ Payout] [varchar](8) NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupId] [bigint] NULL,
 CONSTRAINT [PK_CommissionReport_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsentMemberQuestionAnswer](
	[ConsentMemberQuestionAnswerId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[MemberQuestionnaireId] [int] NOT NULL,
	[MemberAnswer] [nvarchar](max) NOT NULL,
	[ChangedDateTime] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
 CONSTRAINT [PK_ConsentMemberQuestionAnswer_ConsentMemberQuestionAnswerId] PRIMARY KEY CLUSTERED 
(
	[ConsentMemberQuestionAnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division](
	[DivisionId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[SubgroupId] [bigint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Division_DivisionId] PRIMARY KEY CLUSTERED 
(
	[DivisionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentAndForm](
	[DocumentAndFormId] [int] IDENTITY(1,1) NOT NULL,
	[SectionDisplayName] [nvarchar](100) NOT NULL,
	[Section] [nvarchar](100) NOT NULL,
	[FileName] [nvarchar](255) NOT NULL,
	[Ext] [nvarchar](10) NOT NULL,
	[Path] [nvarchar](255) NOT NULL,
	[LastUpdatedOn] [datetime] NOT NULL,
	[PortalId] [int] NOT NULL,
	[DocumentId] [bigint] NULL,
 CONSTRAINT [PK_DocumentAndForm_DocumentAndFormId] PRIMARY KEY CLUSTERED 
(
	[DocumentAndFormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentCategory](
	[DocumentCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[DocumentCategoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DocumentCategory_DocumentCategoryId] PRIMARY KEY CLUSTERED 
(
	[DocumentCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EODetails](
	[EOId] [int] IDENTITY(1,1) NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[EOcarrier] [nvarchar](100) NULL,
	[EOPolicyNumber] [nvarchar](100) NULL,
	[IsEOcoverage] [bit] NULL,
	[EOExpirationDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[EOAmount] [decimal](18, 0) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_EODetails_EOId] PRIMARY KEY CLUSTERED 
(
	[EOId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProviderUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_Composite_ExternalProviderUserLoginsLoginProvider_ProviderKey] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProviderUserTokens](
	[UserId] [bigint] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Composite_ExternalProviderUserTokens_UserId_LoginProvider_Name] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[FAQId] [int] IDENTITY(1,1) NOT NULL,
	[FAQCategoryId] [int] NOT NULL,
	[FAQQuestion] [varchar](1000) NOT NULL,
	[FAQAnswer] [varchar](max) NOT NULL,
	[PortalId] [int] NOT NULL,
 CONSTRAINT [PK_FAQ_FAQId] PRIMARY KEY CLUSTERED 
(
	[FAQId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQCategory](
	[FAQCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [varchar](100) NOT NULL,
	[Product] [varchar](100) NULL,
	[PortalId] [int] NULL,
 CONSTRAINT [PK_FAQCategory_FAQCategoryId] PRIMARY KEY CLUSTERED 
(
	[FAQCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupId] [bigint] IDENTITY(1,1) NOT NULL,
	[Admin123Id] [nvarchar](10) NULL,
	[BrokerId] [bigint] NULL,
	[GroupLabel] [nvarchar](100) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Company] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[AlternatePhone] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[EmailId] [nvarchar](255) NULL,
	[AlternateEmailId] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[ActiveDate] [datetime] NULL,
	[InactiveDate] [datetime] NULL,
	[RenewalDate] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Group_GroupId] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupAddress](
	[GroupAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupId] [bigint] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[AddressLine1] [nvarchar](60) NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NULL,
	[StateCode] [nvarchar](2) NULL,
	[ZipCode] [nvarchar](20) NULL,
	[CountryCode] [nvarchar](10) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_GroupAddress_GroupAddressId] PRIMARY KEY CLUSTERED 
(
	[GroupAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceAging](
	[InvoiceAgingId] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceTo] [nvarchar](200) NOT NULL,
	[GroupId] [bigint] NOT NULL,
	[BrokerId] [bigint] NOT NULL,
	[TotalDue] [decimal](18, 2) NOT NULL,
	[Days30] [decimal](18, 2) NOT NULL,
	[Days60] [decimal](18, 2) NOT NULL,
	[Days90] [decimal](18, 2) NOT NULL,
	[DayMoreThan90] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_InvoiceAging_InvoiceAgingId] PRIMARY KEY CLUSTERED 
(
	[InvoiceAgingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[InvoiceId] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupId] [bigint] NOT NULL,
	[InvoiceNumber] [nvarchar](20) NOT NULL,
	[InvoiceTo] [nvarchar](200) NOT NULL,
	[Method] [nvarchar](50) NULL,
	[Delivery] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[NumberOfProducts] [int] NOT NULL,
	[NumberOfMembers] [int] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Due] [decimal](18, 2) NOT NULL,
	[Paid] [decimal](18, 2) NOT NULL,
	[PastDue] [decimal](18, 2) NOT NULL,
	[PayDate] [datetime] NULL,
	[FileId] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Invoices_InvoiceId] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Language_LanguageId] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[MessageTemplate] [nvarchar](max) NULL,
	[Level] [nvarchar](128) NULL,
	[TimeStamp] [datetime] NOT NULL,
	[Exception] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
 CONSTRAINT [PK_Logs_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterData](
	[MasterDataId] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MasterData_MasterDataId] PRIMARY KEY CLUSTERED 
(
	[MasterDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAccumulatorDetails](
	[MemberAccumulatorDetailsId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[MemberDetailId] [bigint] NOT NULL,
	[AccumulatorType] [nvarchar](50) NOT NULL,
	[AllocatedAmount] [decimal](18, 0) NOT NULL,
	[ConsumedAmount] [decimal](18, 0) NOT NULL,
	[IsFamilyAccumulator] [bit] NOT NULL,
	[NetworkTier] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ProvisionText] [nvarchar](max) NOT NULL,
	[EffectiveStartDate] [datetime2](7) NOT NULL,
	[EffectiveEndDate] [datetime2](7) NOT NULL,
	[AccumulatorId] [bigint] NOT NULL,
 CONSTRAINT [PK_MemberAccumulatorDetails] PRIMARY KEY CLUSTERED 
(
	[MemberAccumulatorDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberAddress](
	[MemberId] [bigint] NOT NULL,
	[AddressTypeId] [int] NOT NULL,
	[AddressLine1] [nvarchar](500) NULL,
	[AddressLine2] [nvarchar](500) NULL,
	[City] [nvarchar](100) NULL,
	[StateCode] [nvarchar](2) NOT NULL,
	[ZipCode] [nvarchar](20) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_MemberAddress_MemberId] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[AddressTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDependent](
	[MemberId] [bigint] NOT NULL,
	[MemberDetailId] [bigint] NOT NULL,
	[IsTobaccoUser] [bit] NOT NULL,
	[ExternalId] [nvarchar](50) NULL,
	[Admin123Id] [nvarchar](50) NULL,
	[RelationshipId] [int] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[UserId] [bigint] NULL,
	[DeactiveDate] [datetime] NULL,
	[DigitalIDCardId] [bigint] NULL,
 CONSTRAINT [PK_MemberDependent_MemberId] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[MemberDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDependentAddress](
	[MemberId] [bigint] NOT NULL,
	[MemberDetailId] [bigint] NOT NULL,
	[AddressTypeId] [int] NOT NULL,
	[AddressLine1] [nvarchar](1000) NULL,
	[AddressLine2] [nvarchar](1000) NULL,
	[City] [nvarchar](60) NULL,
	[StateCode] [nvarchar](2) NOT NULL,
	[ZipCode] [nvarchar](20) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_MemberDependentAddress_MemberId] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[MemberDetailId] ASC,
	[AddressTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDependentQuestionAnswer](
	[MemberId] [bigint] NOT NULL,
	[MemberDetailId] [bigint] NOT NULL,
	[DepenedentQuestionnaireId] [int] NOT NULL,
	[DependentAnswer] [nvarchar](150) NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MemberDependentQuestionAnswer_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDependentStatusHistory](
	[MemberDependentStatusHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[MemberDetailId] [bigint] NOT NULL,
	[MemberSubscribedPlanId] [bigint] NOT NULL,
	[ActiveDate] [datetime] NULL,
	[InActiveDate] [datetime] NULL,
	[ActiveDateComment] [nvarchar](1000) NULL,
	[InActiveDateComment] [nvarchar](1000) NULL,
	[OnHoldDateComment] [nvarchar](1000) NULL,
	[HoldDate] [datetime] NULL,
	[CancelDate] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MemberDependentStatusHistory_MemberStatusHistoryId] PRIMARY KEY CLUSTERED 
(
	[MemberDependentStatusHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberDetail](
	[MemberDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[Salutation] [nvarchar](10) NULL,
	[FirstName] [nvarchar](100) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Suffix] [nvarchar](10) NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Ext] [nvarchar](6) NULL,
	[EmailId] [nvarchar](255) NOT NULL,
	[SSN] [nvarchar](11) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[PreferredLanguageId] [int] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[AvatarImageId] [bigint] NULL,
	[MemberId_123] [nvarchar](50) NULL,
	[MemberDependentId_123] [nvarchar](50) NULL,
 CONSTRAINT [PK_MemberDetail_MemberDetailId] PRIMARY KEY CLUSTERED 
(
	[MemberDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberFeedback](
	[MemberFeedbackId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Message] [nvarchar](max) NULL,
	[SourceId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
 CONSTRAINT [PK_MemberFeedback_MemberFeedbackId] PRIMARY KEY CLUSTERED 
(
	[MemberFeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPaymentDetail](
	[MemberPaymentDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[InvoiceId] [nvarchar](50) NULL,
	[TransactionId] [nvarchar](50) NULL,
	[BillDate] [datetime] NULL,
	[PaidDate] [datetime] NULL,
	[InvoicedAmount] [decimal](5, 2) NULL,
	[PaidAmount] [decimal](6, 2) NULL,
	[Processor] [nvarchar](300) NULL,
	[Method] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Information] [nvarchar](1000) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[ProductId] [int] NULL,	
 CONSTRAINT [PK_MemberPaymentDetail_MemberPaymentDetailId] PRIMARY KEY CLUSTERED 
(
	[MemberPaymentDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberPlanParameter](
	[MemberId] [bigint] NOT NULL,
	[NoOfDependents] [int] NOT NULL,
	[NoOfTobaccoUser] [int] NOT NULL,
	[NonPrimaFamilyIndicator] [int] NOT NULL,
	[PrimaFamilyIndicator] [int] NOT NULL,
	[MemberAge] [int] NOT NULL,
	[MaxAge] [int] NOT NULL,
	[MinAge] [int] NOT NULL,
	[IsChild] [bit] NOT NULL,
	[IsSpouse] [bit] NOT NULL,
 CONSTRAINT [PK_MemberPlanParameter_MemberId] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberQuestionAnswer](
	[MemberId] [bigint] NOT NULL,
	[MemberQuestionnaireId] [int] NOT NULL,
	[MemberAnswer] [nvarchar](max) NULL,
 CONSTRAINT [PK_Composite_MemberQuestionAnswer_MemberId_MemberQuestionnaireId] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC,
	[MemberQuestionnaireId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberQuestionnaire](
	[MemberQuestionnaireId] [int] IDENTITY(1,1) NOT NULL,
	[MemberQuestionnaireType] [int] NOT NULL,
	[MemberQuestionDependentId] [int] NULL,
	[MemberQuestionnaire] [nvarchar](max) NOT NULL,
	[MemberQuestionAnswer] [nvarchar](max) NULL,
 CONSTRAINT [PK_MemberQuestionnaire_MemberQuestionnaireId] PRIMARY KEY CLUSTERED 
(
	[MemberQuestionnaireId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberStatusHistory](
	[MemberStatusHistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberId] [bigint] NOT NULL,
	[MemberSubscribedPlanId] [bigint] NOT NULL,
	[ActiveDate] [datetime] NULL,
	[InActiveDate] [datetime] NULL,
	[ActiveDateComment] [nvarchar](1000) NULL,
	[InActiveDateComment] [nvarchar](1000) NULL,
	[OnHoldDateComment] [nvarchar](1000) NULL,
	[HoldDate] [datetime] NULL,
	[CancelDate] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MemberStatusHistory_MemberStatusHistoryId] PRIMARY KEY CLUSTERED 
(
	[MemberStatusHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberSubscribedPlan](
	[MemberSubscribedPlanId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberSubscriptionId] [bigint] NOT NULL,
	[PolicyNumber] [nvarchar](50) NULL,
	[PlanId] [int] NOT NULL,
	[PlanType] [int] NOT NULL,
	[Premium] [decimal](6, 2) NOT NULL,
	[ApplicationFee] [decimal](5, 2) NULL,
	[TobaccoRider] [decimal](5, 2) NULL,
	[FamilyRider] [decimal](5, 2) NULL,
	[Status] [int] NOT NULL,
	[CancelDate] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[FamilyIndicator] [int] NOT NULL,
	[PolicyTerm] [int] NULL,
	[FullfillmentDate] [datetime] NULL,
	[NextBillingDate] [datetime] NULL,
	[ActiveDate] [datetime] NULL,
	[InactiveDate] [datetime] NULL,
 CONSTRAINT [PK_MemberSubscribedPlan_MemberSubscribedPlanId] PRIMARY KEY CLUSTERED 
(
	[MemberSubscribedPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberSubscribedPlanHistory](
	[HistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberSubscribedPlanId] [bigint] NOT NULL,
	[Event] [int] NULL,
	[Effective] [datetime] NULL,
	[Comment] [nvarchar](1000) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MemberSubscribedPlanHistory_HistoryId] PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageId] [bigint] IDENTITY(1,1) NOT NULL,
	[RecipientId] [bigint] NOT NULL,
	[RecipientGroupId] [int] NULL,
	[Message] [nvarchar](1000) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[MessageSentTime] [datetime] NOT NULL,
	[SenderId] [bigint] NOT NULL,
	[IsArchived] [bit] NULL,
	[PortalId] [int] NOT NULL,
 CONSTRAINT [PK_Message_BrokerMessageId] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MigratedMemberProductDetails](
	[MaximumTermSharingCV] [nvarchar](1000) NULL,
	[CareVanMSRA] [nvarchar](1000) NULL,
	[CarePlusMSRA] [nvarchar](1000) NULL,
	[MaximumTermSharingCPNT] [nvarchar](1000) NULL,
	[MaximumTermSharingECP] [nvarchar](1000) NULL,
	[EvermedMSRA] [nvarchar](1000) NULL,
	[MSRAAlieraCareSPA] [nvarchar](1000) NULL,
	[$500KAdd-onSPA] [nvarchar](1000) NULL,
	[HealthShareMSRA] [nvarchar](1000) NULL,
	[CatastrophicMSRA] [nvarchar](1000) NULL,
	[MaximumTermSharingCP] [nvarchar](1000) NULL,
	[MSRAAlieraCare] [nvarchar](1000) NULL,
	[$500KAdd-on] [nvarchar](1000) NULL,
	[MSRASTM] [nvarchar](1000) NULL,
	[PolicyTerm] [nvarchar](1000) NULL,
	[GroupId] [bigint] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[MemberSubscribedPlanId] [bigint] NOT NULL,
 CONSTRAINT [PK_MemberSubscribedPlanId] PRIMARY KEY CLUSTERED 
(
	[MemberSubscribedPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[Type] [int] NOT NULL,
	[Subject] [nvarchar](100) NULL,
	[Content] [ntext] NULL,
	[From] [nvarchar](50) NULL,
 CONSTRAINT [PK_Notification_Type] PRIMARY KEY CLUSTERED 
(
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
CREATE TABLE [dbo].[Plan](
	[PlanId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Name] [nvarchar](1000) NOT NULL,
	[PlanRating] [float] NOT NULL,
	[Type] [int] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[MSRA] [nvarchar](50) NULL,
	[CoverageLimit] [nvarchar](50) NULL,
	[CoverageDuration] [nvarchar](50) NULL,
	[RelatedPlanIds] [nvarchar](1000) NULL,
	[CategoryWisePlanRating] [float] NOT NULL,
 CONSTRAINT [PK_Plan_PlanId] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanBenefit](
	[PlanId] [int] NOT NULL,
	[BenefitId] [int] NOT NULL,
	[Value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Composite_PlanBenefit_PlanId_BenefitId] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC,
	[BenefitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanPackage](
	[PlanPackageId] [int] IDENTITY(1,1) NOT NULL,
	[PlanId] [int] NOT NULL,
	[PackagedPlanIds] [nvarchar](500) NULL,
	[IsMigrated] [bit] NOT NULL,
 CONSTRAINT [PK_PlanPackage_PlanId] PRIMARY KEY CLUSTERED 
(
	[PlanPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlanPremium](
	[PlanId] [int] NOT NULL,
	[MinAge] [int] NOT NULL,
	[MaxAge] [int] NOT NULL,
	[MSRA] [decimal](8, 2) NULL,
	[FamilyIndicator] [int] NOT NULL,
	[Premium] [decimal](8, 2) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Composite_PlanPremium_PlanId_MaxAge_FamilyIndicator] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC,
	[MaxAge] ASC,
	[FamilyIndicator] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortalRoles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](500) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[IsCustomRole] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_PortalRoles_RoleId] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portals](
	[PortalId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Portals_PortalId] PRIMARY KEY CLUSTERED 
(
	[PortalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ProductCategoryId] [int] NULL,
	[ProductSubCategoryId] [int] NULL,
	[StartDate] [datetime] NOT NULL,
	[TermDate] [datetime] NULL,
	[ProductLogo] [nvarchar](1000) NULL,
	[ExcludedSaleStates] [nvarchar](500) NULL,
	[ApplicationFee] [decimal](5, 2) NULL,
	[ProductCode] [int] NULL,
	[DocumentPath] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[DocumentID] [bigint] NULL,
	[FamilyRiderFee] [decimal](8, 2) NOT NULL,
	[TobaccoUserFee] [decimal](8, 2) NOT NULL,
	[ShellSheetName] [nvarchar](100) NULL,
	[CanPayNextDay] [bit] NOT NULL,
	[IsGroupProduct] [bit] NOT NULL,
	[ProductLabel] [nvarchar](50) NULL,
	[IsPolicyTerm] [bit] NOT NULL,
 CONSTRAINT [PK_Product_ProductId] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAccumulator](
	[ProductAccumulatorId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccumulatorId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductAccumulator] PRIMARY KEY CLUSTERED 
(
	[ProductAccumulatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCategoryName] [nvarchar](100) NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PlanCategory] [nvarchar](8) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsMigrated] [bit] NOT NULL,
 CONSTRAINT [PK_ProductCategory_ProductCategoryId] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductFee](
	[ProductId] [int] NOT NULL,
	[Fee] [decimal](12, 2) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[BenefitLevel] [int] NOT NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BrokerId] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductFee_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductProviderNetwork](
	[ProductProviderNetworkId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProviderNetworkId] [int] NOT NULL,
 CONSTRAINT [PK__ProductProviderNetwork__ProductProviderNetworkId] PRIMARY KEY CLUSTERED 
(
	[ProductProviderNetworkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSubCategory](
	[ProductSubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ProductSubCategoryName] [nvarchar](100) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_ProductSubCategory_ProductSubCategoryId] PRIMARY KEY CLUSTERED 
(
	[ProductSubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderNetwork](
	[ProviderNetworkId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__ProviderNetwork__ProviderNetworkId] PRIMARY KEY CLUSTERED 
(
	[ProviderNetworkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipientCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_RecipientCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermission](
	[RolePermissionId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
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
 CONSTRAINT [PK_RolePermission_RolePermission_Id] PRIMARY KEY CLUSTERED 
(
	[RolePermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityQuestions](
	[SecurityQuestionId] [int] IDENTITY(1,1) NOT NULL,
	[SecurityQuestion] [nvarchar](max) NULL,
 CONSTRAINT [PK_SecurityQuestion_SecurityQuestionId] PRIMARY KEY CLUSTERED 
(
	[SecurityQuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateCode] [nvarchar](2) NOT NULL,
	[StateName] [nvarchar](50) NOT NULL,
	[Timezone] [nvarchar](50) NOT NULL,
	[ZipCodeRange] [varchar](100) NOT NULL,
 CONSTRAINT [PK_State_StateCode] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subgroup](
	[SubgroupId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[GroupId] [bigint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Subgroup_SubgroupId] PRIMARY KEY CLUSTERED 
(
	[SubgroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tokens](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[AccessToken] [nvarchar](max) NULL,
	[Validity] [datetime2](7) NOT NULL,
	[IpAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tokens_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleAssociation](
	[UserRoleAssociationId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[IsCustomPermission] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_UserRoleAssociation_UserRoleAssociationId] PRIMARY KEY CLUSTERED 
(
	[UserRoleAssociationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_UserRoles_UserId] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](500) NOT NULL,
	[UserType] [int] NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[IsEmailVerified] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[LastPasswordChangedDate] [datetime2](7) NOT NULL,
	[PortalId] [int] NOT NULL,
	[LastLogin] [datetimeoffset](7) NULL,
	[CurrentLogin] [datetimeoffset](7) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[ResetPasswordAccessCode] [nvarchar](max) NULL,
	[ResetPasswordAccessCodeDateTime] [datetime] NULL,
 CONSTRAINT [PK_Users_UserId] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Users_Username] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSecurityQuestionAnswers](
	[UserId] [bigint] NOT NULL,
	[SecurityQuestionId] [int] NOT NULL,
	[Answer] [nvarchar](max) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UserSecurityQuestionAnswers_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSecurityQuestions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Answer] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserSecurityQuestions_id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_AgentCommission_AgentId_AgentActive_PayToAgentActive_ProductId] ON [dbo].[AgentCommission]
(
	[AgentId] ASC,
	[AgentActive] ASC,
	[PayToAgentActive] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_AgentCommission_AgentId_AgentActive_ProductId_PayToAgentActive] ON [dbo].[AgentCommission]
(
	[AgentId] ASC,
	[AgentActive] ASC,
	[ProductId] ASC,
	[PayToAgentActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Broker_Admin123Id] ON [dbo].[Broker]
(
	[Admin123Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Broker_ExternalId] ON [dbo].[Broker]
(
	[ExternalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Broker_PersonalNPN] ON [dbo].[Broker]
(
	[PersonalNPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Broker_Status] ON [dbo].[Broker]
(
	[Status] ASC
)
INCLUDE ( 	
	[DateOfBirth],
	[PersonalNPN]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Broker_Status_PersonalNPN] ON [dbo].[Broker]
(
	[Status] ASC,	
	[PersonalNPN] ASC
)
INCLUDE ( 	[DateOfBirth]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BrokerAddress_BrokerId] ON [dbo].[BrokerAddress]
(
	[BrokerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_BrokerContact_BrokerId] ON [dbo].[BrokerContact]
(
	[BrokerId] ASC
)
INCLUDE ( 	[PhoneNumber],
	[Ext],
	[PhoneNumberAlternate],
	[BestTimeToCall],
	[FaxNumber],
	[EmailId],
	[EmailIdAlternate],
	[Website],
	[DoNotCall],
	[EmailOptOut],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BrokerHierarchy_brokerid] ON [dbo].[BrokerHierarchy]
(
	[BrokerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BrokerHierarchy_parentbrokerid] ON [dbo].[BrokerHierarchy]
(
	[ParentBrokerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BrokerLicense_BrokerId_ActiveDate_ExpiryDate] ON [dbo].[BrokerLicense]
(
	[BrokerId] ASC,
	[ActiveDate] ASC,
	[ExpiryDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_BrokerLicense_StateCode] ON [dbo].[BrokerLicense]
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_BrokerLicense_StateCode_ExpiryDate] ON [dbo].[BrokerLicense]
(
	[StateCode] ASC,
	[ExpiryDate] ASC
)
INCLUDE ( 	[LicenseNumber],
	[BrokerId],
	[ActiveDate],
	[LicenseType],
	[Description],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_BrokerPayPeriod_BrokerId] ON [dbo].[BrokerPayPeriod]
(
	[BrokerId] ASC
)
INCLUDE ( 	[PayPeriod],
	[StartPeriod],
	[EndPeriod]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_BrokerProduct_ProductId] ON [dbo].[BrokerProduct]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_CommissionReport_Payee Agent ID] ON [dbo].[CommissionReport]
(
	[Payee Agent ID] ASC
)
INCLUDE ( 	[Posted Date],
	[Created Date],
	[Type],
	[Subtype],
	[Notes],
	[Credit],
	[Debit],
	[Total],
	[Payee Agent Label],
	[Payee Address 1],
	[Payee Address 2],
	[Payee City],
	[Payee State],
	[Payee Zipcode],
	[Member ID],
	[Member Company],
	[Member First Name],
	[Member Last Name],
	[Member Agent ID],
	[Member Agent Label],
	[Member Agent Category],
	[Member Source Detail],
	[Member Lead Status],
	[Product ID],
	[Product Label],
	[Product Category],
	[Product Category 2],
	[Product Code],
	[Product Created Date],
	[Product Active Date],
	[Transaction ID],
	[Transaction Amount],
	[Transaction Type],
	[Transaction Payment],
	[Transaction Paid Through Start],
	[Transaction Paid Through End],
	[Commissionable Amount],
	[ Payout],
	[GroupId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_CommissionReport_Payee Agent ID_Member Agent ID] ON [dbo].[CommissionReport]
(
	[Payee Agent ID] ASC,
	[Member Agent ID] ASC
)
INCLUDE ( 	[Posted Date],
	[Type]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_CommissionReport_Payee Agent ID_Posted Date] ON [dbo].[CommissionReport]
(
	[Payee Agent ID] ASC,
	[Posted Date] ASC
)
INCLUDE ( 	[Created Date],
	[Type],
	[Subtype],
	[Notes],
	[Credit],
	[Debit],
	[Total],
	[Payee Agent Label],
	[Payee Address 1],
	[Payee Address 2],
	[Payee City],
	[Payee State],
	[Payee Zipcode],
	[Member ID],
	[Member Company],
	[Member First Name],
	[Member Last Name],
	[Member Agent ID],
	[Member Agent Label],
	[Member Agent Category],
	[Member Source Detail],
	[Member Lead Status],
	[Product ID],
	[Product Label],
	[Product Category],
	[Product Category 2],
	[Product Code],
	[Product Created Date],
	[Product Active Date],
	[Transaction ID],
	[Transaction Amount],
	[Transaction Type],
	[Transaction Payment],
	[Transaction Paid Through Start],
	[Transaction Paid Through End],
	[Commissionable Amount],
	[ Payout],
	[GroupId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Group_Admin123Id] ON [dbo].[Group]
(
	[Admin123Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Group_BrokerId] ON [dbo].[Group]
(
	[BrokerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Invoices_GroupId] ON [dbo].[Invoices]
(
	[GroupId] ASC
)
INCLUDE ( 	[InvoiceNumber],
	[InvoiceTo],
	[Method],
	[Delivery],
	[CreatedOn],
	[InvoiceDate],
	[StartDate],
	[EndDate],
	[NumberOfProducts],
	[NumberOfMembers],
	[Total],
	[Due],
	[Paid],
	[PastDue],
	[PayDate],
	[FileId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Member_CreatedOn] ON [dbo].[Member]
(
	[CreatedOn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Member_ExternalId] ON [dbo].[Member]
(
	[ExternalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Member_MemberDetailId] ON [dbo].[Member]
(
	[MemberDetailId] ASC
)
INCLUDE ( 	[Status],
	[ExternalId],
	[Admin123Id],
	[IsTobaccoUser],
	[IsFamilyRiderOn],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn],
	[UserId],
	[DigitalIDCardId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Member_MemberDetailId_Status] ON [dbo].[Member]
(
	[MemberDetailId] ASC,
	[Status] ASC
)
INCLUDE ( 	[ExternalId],
	[Admin123Id],
	[IsTobaccoUser],
	[IsFamilyRiderOn],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn],
	[UserId],
	[DigitalIDCardId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Member_Status] ON [dbo].[Member]
(
	[Status] ASC
)
INCLUDE ( 	[ExternalId],
	[CreatedOn]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Member_Status_CreatedOn] ON [dbo].[Member]
(
	[Status] ASC,
	[CreatedOn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Member_Status_ExternalId] ON [dbo].[Member]
(
	[Status] ASC,
	[ExternalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberDependent_MemberDetailId] ON [dbo].[MemberDependent]
(
	[MemberDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberDependentAddress_MemberDetailId] ON [dbo].[MemberDependentAddress]
(
	[MemberDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberDetail_DateOfBirth] ON [dbo].[MemberDetail]
(
	[DateOfBirth] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_MemberPaymentDetail_MemberId] ON [dbo].[MemberPaymentDetail]
(
	[MemberId] ASC
)
INCLUDE ( 	[InvoiceId],
	[TransactionId],
	[BillDate],
	[PaidDate],
	[InvoicedAmount],
	[PaidAmount],
	[Processor],
	[Method],
	[Status],
	[Information],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn],
	[ProductId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberStatusHistory_ActiveDate_InActiveDate] ON [dbo].[MemberStatusHistory]
(
	[ActiveDate] ASC,
	[InActiveDate] ASC
)
INCLUDE ( 	[MemberSubscribedPlanId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberStatusHistory_InActiveDate_ActiveDate] ON [dbo].[MemberStatusHistory]
(
	[InActiveDate] ASC,
	[ActiveDate] ASC
)
INCLUDE ( 	[MemberSubscribedPlanId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberStatusHistory_MemberId] ON [dbo].[MemberStatusHistory]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberStatusHistory_MemberSubscribedPlanId] ON [dbo].[MemberStatusHistory]
(
	[MemberSubscribedPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberStatusHistory_MemberSubscribedPlanId_InActiveDate_ActiveDate] ON [dbo].[MemberStatusHistory]
(
	[MemberSubscribedPlanId] ASC,
	[InActiveDate] ASC,
	[ActiveDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberSubscribedPlan_MemberSubscriptionId] ON [dbo].[MemberSubscribedPlan]
(
	[MemberSubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_MemberSubscribedPlan_MemberSubscriptionId1] ON [dbo].[MemberSubscribedPlan]
(
	[MemberSubscriptionId] ASC
)
INCLUDE ( 	[PolicyNumber],
	[PlanId],
	[PlanType],
	[Premium],
	[ApplicationFee],
	[TobaccoRider],
	[FamilyRider],
	[Status],
	[CancelDate],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn],
	[FamilyIndicator]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_MemberSubscribedPlan_PlanId] ON [dbo].[MemberSubscribedPlan]
(
	[PlanId] ASC
)
INCLUDE ( 	[MemberSubscriptionId],
	[PolicyNumber],
	[PlanType],
	[Premium],
	[ApplicationFee],
	[TobaccoRider],
	[FamilyRider],
	[Status],
	[CancelDate],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn],
	[FamilyIndicator]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberSubscription_BrokerId] ON [dbo].[MemberSubscription]
(
	[BrokerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MemberSubscription_MemberId] ON [dbo].[MemberSubscription]
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Messages_RecipientId_IsRead_PortalId_MessageSentTime] ON [dbo].[Messages]
(
	[RecipientId] ASC,
	[IsRead] ASC,
	[PortalId] ASC,
	[MessageSentTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Messages_RecipientId_PortalId] ON [dbo].[Messages]
(
	[RecipientId] ASC,
	[PortalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProductFee_BrokerId] ON [dbo].[ProductFee]
(
	[BrokerId] ASC
)
INCLUDE ( 	[ProductId],
	[Fee],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn],
	[BenefitLevel]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProductFee_ProductId] ON [dbo].[ProductFee]
(
	[ProductId] ASC
)
INCLUDE ( 	[Fee],
	[CreatedBy],
	[CreatedOn],
	[ModifiedBy],
	[ModifiedOn],
	[BenefitLevel],
	[BrokerId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tokens_UserId] ON [dbo].[Tokens]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserRoleAssociation_UserId] ON [dbo].[UserRoleAssociation]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserRoleAssociation_UserId_IsCustomPermission] ON [dbo].[UserRoleAssociation]
(
	[UserId] ASC,
	[IsCustomPermission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Users_NormalizedUserName] ON [dbo].[Users]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Broker] ADD  CONSTRAINT [DF_Broker_IsVoiceVerification]  DEFAULT ((0)) FOR [IsVoiceVerification]
GO
ALTER TABLE [dbo].[BrokerContact] ADD  CONSTRAINT [DF_BrokerContact_DoNotCall]  DEFAULT ((0)) FOR [DoNotCall]
GO
ALTER TABLE [dbo].[BrokerContact] ADD  CONSTRAINT [DF_BrokerContract_EmailId]  DEFAULT ((0)) FOR [EmailOptOut]
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_IsTobaccoUser]  DEFAULT ((0)) FOR [IsTobaccoUser]
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_IsFamilyRiderOn]  DEFAULT ((0)) FOR [IsFamilyRiderOn]
GO
ALTER TABLE [dbo].[MemberDependent] ADD  CONSTRAINT [DF_MemberDependent_IsTobaccoUser]  DEFAULT ((0)) FOR [IsTobaccoUser]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_NoOfDependents]  DEFAULT ((0)) FOR [NoOfDependents]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_NoOfTobaccoUser]  DEFAULT ((0)) FOR [NoOfTobaccoUser]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_NonPrimaFamilyIndicator]  DEFAULT ((0)) FOR [NonPrimaFamilyIndicator]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_PrimaFamilyIndicator]  DEFAULT ((0)) FOR [PrimaFamilyIndicator]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_MemberAge]  DEFAULT ((0)) FOR [MemberAge]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_MaxAge]  DEFAULT ((0)) FOR [MaxAge]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_MinAge]  DEFAULT ((0)) FOR [MinAge]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_IsChild]  DEFAULT ((0)) FOR [IsChild]
GO
ALTER TABLE [dbo].[MemberPlanParameter] ADD  CONSTRAINT [DF_MemberPlanParameter_IsSpouse]  DEFAULT ((0)) FOR [IsSpouse]
GO
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[MigratedMemberProductDetails] ADD  CONSTRAINT [DF_MigratedMemberProductDetails_MemberSubscribedPlanId]  DEFAULT ((0)) FOR [MemberSubscribedPlanId]
GO
ALTER TABLE [dbo].[PlanPackage] ADD  CONSTRAINT [DF_PlanPackage_IsMigrated]  DEFAULT ((0)) FOR [IsMigrated]
GO
ALTER TABLE [dbo].[PortalRoles] ADD  CONSTRAINT [DF_PortalRoles_IsCustomRole]  DEFAULT ((0)) FOR [IsCustomRole]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_FamilyRiderFee]  DEFAULT ((0)) FOR [FamilyRiderFee]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_TobaccoUserFee]  DEFAULT ((0)) FOR [TobaccoUserFee]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CanPayNextDay]  DEFAULT ((0)) FOR [CanPayNextDay]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsGroupProduct]  DEFAULT ((0)) FOR [IsGroupProduct]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsPolicyTerm]  DEFAULT ((0)) FOR [IsPolicyTerm]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_IsPrimary]  DEFAULT ((0)) FOR [IsPrimary]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF__ProductCategory__IsMigrated]  DEFAULT ((0)) FOR [IsMigrated]
GO
ALTER TABLE [dbo].[UserRoleAssociation] ADD  CONSTRAINT [DF_UserRoleAssociation_IsCustomPermission]  DEFAULT ((0)) FOR [IsCustomPermission]
GO
ALTER TABLE [dbo].[AddOnPlan]  WITH CHECK ADD  CONSTRAINT [FK_AddOnPlan_Plan_PlanId] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plan] ([PlanId])
GO
ALTER TABLE [dbo].[AddOnPlan] CHECK CONSTRAINT [FK_AddOnPlan_Plan_PlanId]
GO
ALTER TABLE [dbo].[AgentCommission]  WITH CHECK ADD  CONSTRAINT [FK_AgentCommission_Broker_AgentId] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[AgentCommission] CHECK CONSTRAINT [FK_AgentCommission_Broker_AgentId]
GO
ALTER TABLE [dbo].[AgentCommission]  WITH CHECK ADD  CONSTRAINT [FK_AgentCommission_Broker_PayToAgentId] FOREIGN KEY([PayToAgentId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[AgentCommission] CHECK CONSTRAINT [FK_AgentCommission_Broker_PayToAgentId]
GO
ALTER TABLE [dbo].[AgentCommission]  WITH CHECK ADD  CONSTRAINT [FK_AgentCommission_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[AgentCommission] CHECK CONSTRAINT [FK_AgentCommission_Product_ProductId]
GO
ALTER TABLE [dbo].[Broker]  WITH CHECK ADD  CONSTRAINT [FK_Broker_BrokerType_BrokerTypeId] FOREIGN KEY([BrokerTypeId])
REFERENCES [dbo].[BrokerType] ([BrokerTypeId])
GO
ALTER TABLE [dbo].[Broker] CHECK CONSTRAINT [FK_Broker_BrokerType_BrokerTypeId]
GO
ALTER TABLE [dbo].[BrokerAddress]  WITH CHECK ADD  CONSTRAINT [FK_BrokerAddress_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[BrokerAddress] CHECK CONSTRAINT [FK_BrokerAddress_Broker_BrokerId]
GO
ALTER TABLE [dbo].[BrokerContact]  WITH CHECK ADD  CONSTRAINT [FK_BrokerContact_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[BrokerContact] CHECK CONSTRAINT [FK_BrokerContact_Broker_BrokerId]
GO
ALTER TABLE [dbo].[BrokerDocument]  WITH CHECK ADD  CONSTRAINT [FK_BrokerDocument_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[BrokerDocument] CHECK CONSTRAINT [FK_BrokerDocument_Broker_BrokerId]
GO
ALTER TABLE [dbo].[BrokerDocument]  WITH CHECK ADD  CONSTRAINT [FK_BrokerDocument_DocumentCategoryId] FOREIGN KEY([DocumentCategoryId])
REFERENCES [dbo].[DocumentCategory] ([DocumentCategoryId])
GO
ALTER TABLE [dbo].[BrokerDocument] CHECK CONSTRAINT [FK_BrokerDocument_DocumentCategoryId]
GO
ALTER TABLE [dbo].[BrokerHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_BrokerHierarchy_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[BrokerHierarchy] CHECK CONSTRAINT [FK_BrokerHierarchy_Broker_BrokerId]
GO
ALTER TABLE [dbo].[BrokerHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_BrokerHierarchy_Broker_ParentBrokerId] FOREIGN KEY([ParentBrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[BrokerHierarchy] CHECK CONSTRAINT [FK_BrokerHierarchy_Broker_ParentBrokerId]
GO
ALTER TABLE [dbo].[BrokerPayPeriod]  WITH CHECK ADD  CONSTRAINT [FK_PayPeriod_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[BrokerPayPeriod] CHECK CONSTRAINT [FK_PayPeriod_Broker_BrokerId]
GO
ALTER TABLE [dbo].[BrokerProduct]  WITH CHECK ADD  CONSTRAINT [FK_BrokerProduct_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[BrokerProduct] CHECK CONSTRAINT [FK_BrokerProduct_Broker_BrokerId]
GO
ALTER TABLE [dbo].[BrokerProduct]  WITH CHECK ADD  CONSTRAINT [FK_BrokerProduct_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[BrokerProduct] CHECK CONSTRAINT [FK_BrokerProduct_Product_ProductId]
GO
ALTER TABLE [dbo].[Claims]  WITH CHECK ADD  CONSTRAINT [FK_Claims_ClaimsStatus_ClaimsStatusID] FOREIGN KEY([ClaimsStatusID])
REFERENCES [dbo].[ClaimsStatus] ([ID])
GO
ALTER TABLE [dbo].[Claims] CHECK CONSTRAINT [FK_Claims_ClaimsStatus_ClaimsStatusID]
GO
ALTER TABLE [dbo].[CommissionReport]  WITH CHECK ADD  CONSTRAINT [FK_CommissionReport_Broker_[Member Agent ID]]] FOREIGN KEY([Member Agent ID])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[CommissionReport] CHECK CONSTRAINT [FK_CommissionReport_Broker_[Member Agent ID]]]
GO
ALTER TABLE [dbo].[CommissionReport]  WITH CHECK ADD  CONSTRAINT [FK_CommissionReport_Broker_[Payee Agent ID]]] FOREIGN KEY([Payee Agent ID])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[CommissionReport] CHECK CONSTRAINT [FK_CommissionReport_Broker_[Payee Agent ID]]]
GO
ALTER TABLE [dbo].[CommissionReport]  WITH CHECK ADD  CONSTRAINT [FK_CommissionReport_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
GO
ALTER TABLE [dbo].[CommissionReport] CHECK CONSTRAINT [FK_CommissionReport_Group_GroupId]
GO
ALTER TABLE [dbo].[CommissionReport]  WITH CHECK ADD  CONSTRAINT [FK_CommissionReport_Member_[Member ID]]] FOREIGN KEY([Member ID])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[CommissionReport] CHECK CONSTRAINT [FK_CommissionReport_Member_[Member ID]]]
GO
ALTER TABLE [dbo].[ConsentMemberQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_ConsentMemberQuestionAnswer_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[ConsentMemberQuestionAnswer] CHECK CONSTRAINT [FK_ConsentMemberQuestionAnswer_Member_MemberId]
GO
ALTER TABLE [dbo].[ConsentMemberQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_ConsentMemberQuestionAnswer_MemberQuestionnaire_MemberQuestionnaireId] FOREIGN KEY([MemberQuestionnaireId])
REFERENCES [dbo].[MemberQuestionnaire] ([MemberQuestionnaireId])
GO
ALTER TABLE [dbo].[ConsentMemberQuestionAnswer] CHECK CONSTRAINT [FK_ConsentMemberQuestionAnswer_MemberQuestionnaire_MemberQuestionnaireId]
GO
ALTER TABLE [dbo].[Division]  WITH CHECK ADD  CONSTRAINT [FK_Division_Subgroup_SubgroupId] FOREIGN KEY([SubgroupId])
REFERENCES [dbo].[Subgroup] ([SubgroupId])
GO
ALTER TABLE [dbo].[Division] CHECK CONSTRAINT [FK_Division_Subgroup_SubgroupId]
GO
ALTER TABLE [dbo].[DocumentAndForm]  WITH CHECK ADD  CONSTRAINT [FK_DocumentAndForm_Portals_PortalId] FOREIGN KEY([PortalId])
REFERENCES [dbo].[Portals] ([PortalId])
GO
ALTER TABLE [dbo].[DocumentAndForm] CHECK CONSTRAINT [FK_DocumentAndForm_Portals_PortalId]
GO
ALTER TABLE [dbo].[EODetails]  WITH CHECK ADD  CONSTRAINT [FK_EODetails_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[EODetails] CHECK CONSTRAINT [FK_EODetails_Broker_BrokerId]
GO
ALTER TABLE [dbo].[FAQ]  WITH CHECK ADD  CONSTRAINT [FK_FAQ_FAQCategory_FAQCategoryId] FOREIGN KEY([FAQCategoryId])
REFERENCES [dbo].[FAQCategory] ([FAQCategoryId])
GO
ALTER TABLE [dbo].[FAQ] CHECK CONSTRAINT [FK_FAQ_FAQCategory_FAQCategoryId]
GO
ALTER TABLE [dbo].[FAQ]  WITH CHECK ADD  CONSTRAINT [FK_FAQ_Portals_PortalId] FOREIGN KEY([PortalId])
REFERENCES [dbo].[Portals] ([PortalId])
GO
ALTER TABLE [dbo].[FAQ] CHECK CONSTRAINT [FK_FAQ_Portals_PortalId]
GO
ALTER TABLE [dbo].[GroupAddress]  WITH CHECK ADD  CONSTRAINT [FK_GroupAddress_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
GO
ALTER TABLE [dbo].[GroupAddress] CHECK CONSTRAINT [FK_GroupAddress_Group_GroupId]
GO
ALTER TABLE [dbo].[InvoiceAging]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceAging_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
GO
ALTER TABLE [dbo].[InvoiceAging] CHECK CONSTRAINT [FK_InvoiceAging_Group_GroupId]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Group_GroupId]
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_MemberDetail_MemberDetailId] FOREIGN KEY([MemberDetailId])
REFERENCES [dbo].[MemberDetail] ([MemberDetailId])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_MemberDetail_MemberDetailId]
GO
ALTER TABLE [dbo].[MemberAccumulatorDetails]  WITH CHECK ADD  CONSTRAINT [FK_MemberAccumulator_Accumulator_AccumulatorId] FOREIGN KEY([AccumulatorId])
REFERENCES [dbo].[Accumulator] ([AccumulatorId])
GO
ALTER TABLE [dbo].[MemberAccumulatorDetails] CHECK CONSTRAINT [FK_MemberAccumulator_Accumulator_AccumulatorId]
GO
ALTER TABLE [dbo].[MemberAccumulatorDetails]  WITH CHECK ADD  CONSTRAINT [FK_MemberAccumulatorDetails_MemberDetailId] FOREIGN KEY([MemberDetailId])
REFERENCES [dbo].[MemberDetail] ([MemberDetailId])
GO
ALTER TABLE [dbo].[MemberAccumulatorDetails] CHECK CONSTRAINT [FK_MemberAccumulatorDetails_MemberDetailId]
GO
ALTER TABLE [dbo].[MemberAccumulatorDetails]  WITH CHECK ADD  CONSTRAINT [FK_MemberAccumulatorDetails_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberAccumulatorDetails] CHECK CONSTRAINT [FK_MemberAccumulatorDetails_MemberId]
GO
ALTER TABLE [dbo].[MemberAddress]  WITH CHECK ADD  CONSTRAINT [FK_MemberAddress_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberAddress] CHECK CONSTRAINT [FK_MemberAddress_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberDependent]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependent_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberDependent] CHECK CONSTRAINT [FK_MemberDependent_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberDependent]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependent_MemberDetail_MemberDetailId] FOREIGN KEY([MemberDetailId])
REFERENCES [dbo].[MemberDetail] ([MemberDetailId])
GO
ALTER TABLE [dbo].[MemberDependent] CHECK CONSTRAINT [FK_MemberDependent_MemberDetail_MemberDetailId]
GO
ALTER TABLE [dbo].[MemberDependentAddress]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependentAddress_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberDependentAddress] CHECK CONSTRAINT [FK_MemberDependentAddress_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberDependentAddress]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependentAddress_MemberDetail_MemberDetailId] FOREIGN KEY([MemberDetailId])
REFERENCES [dbo].[MemberDetail] ([MemberDetailId])
GO
ALTER TABLE [dbo].[MemberDependentAddress] CHECK CONSTRAINT [FK_MemberDependentAddress_MemberDetail_MemberDetailId]
GO
ALTER TABLE [dbo].[MemberDependentQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependentQuestionAnswer_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberDependentQuestionAnswer] CHECK CONSTRAINT [FK_MemberDependentQuestionAnswer_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberDependentQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependentQuestionAnswer_MemberDetail_MemberDetailId] FOREIGN KEY([MemberDetailId])
REFERENCES [dbo].[MemberDetail] ([MemberDetailId])
GO
ALTER TABLE [dbo].[MemberDependentQuestionAnswer] CHECK CONSTRAINT [FK_MemberDependentQuestionAnswer_MemberDetail_MemberDetailId]
GO
ALTER TABLE [dbo].[MemberDependentStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependentStatusHistory_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberDependentStatusHistory] CHECK CONSTRAINT [FK_MemberDependentStatusHistory_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberDependentStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependentStatusHistory_MemberDetail_MemberDetailId] FOREIGN KEY([MemberDetailId])
REFERENCES [dbo].[MemberDetail] ([MemberDetailId])
GO
ALTER TABLE [dbo].[MemberDependentStatusHistory] CHECK CONSTRAINT [FK_MemberDependentStatusHistory_MemberDetail_MemberDetailId]
GO
ALTER TABLE [dbo].[MemberDependentStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_MemberDependentStatusHistory_MemberSubscribedPlan_MemberSubscribedPlanId] FOREIGN KEY([MemberSubscribedPlanId])
REFERENCES [dbo].[MemberSubscribedPlan] ([MemberSubscribedPlanId])
GO
ALTER TABLE [dbo].[MemberDependentStatusHistory] CHECK CONSTRAINT [FK_MemberDependentStatusHistory_MemberSubscribedPlan_MemberSubscribedPlanId]
GO
ALTER TABLE [dbo].[MemberDetail]  WITH CHECK ADD  CONSTRAINT [FK_MemberDetail_Language_LanguageId] FOREIGN KEY([PreferredLanguageId])
REFERENCES [dbo].[Language] ([LanguageId])
GO
ALTER TABLE [dbo].[MemberDetail] CHECK CONSTRAINT [FK_MemberDetail_Language_LanguageId]
GO
ALTER TABLE [dbo].[MemberPaymentDetail]  WITH CHECK ADD  CONSTRAINT [FK_MemberPaymentDetail_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberPaymentDetail] CHECK CONSTRAINT [FK_MemberPaymentDetail_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberPaymentDetail]  WITH CHECK ADD  CONSTRAINT [FK_MemberPaymentDetail_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[MemberPaymentDetail] CHECK CONSTRAINT [FK_MemberPaymentDetail_Product_ProductId]
GO
ALTER TABLE [dbo].[MemberQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_MemberQuestionAnswer_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberQuestionAnswer] CHECK CONSTRAINT [FK_MemberQuestionAnswer_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberQuestionAnswer]  WITH CHECK ADD  CONSTRAINT [FK_MemberQuestionAnswer_MemberQuestionnaire_MemberQuestionnaireId] FOREIGN KEY([MemberQuestionnaireId])
REFERENCES [dbo].[MemberQuestionnaire] ([MemberQuestionnaireId])
GO
ALTER TABLE [dbo].[MemberQuestionAnswer] CHECK CONSTRAINT [FK_MemberQuestionAnswer_MemberQuestionnaire_MemberQuestionnaireId]
GO
ALTER TABLE [dbo].[MemberStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK_MemberStatusHistory_MemberSubscribedPlan_MemberSubscribedPlanId] FOREIGN KEY([MemberSubscribedPlanId])
REFERENCES [dbo].[MemberSubscribedPlan] ([MemberSubscribedPlanId])
GO
ALTER TABLE [dbo].[MemberStatusHistory] CHECK CONSTRAINT [FK_MemberStatusHistory_MemberSubscribedPlan_MemberSubscribedPlanId]
GO
ALTER TABLE [dbo].[MemberSubscribedPlan]  WITH CHECK ADD  CONSTRAINT [FK_MemberSubscribedPlan_MemberSubscription_MemberSubscriptionId] FOREIGN KEY([MemberSubscriptionId])
REFERENCES [dbo].[MemberSubscription] ([MemberSubscriptionId])
GO
ALTER TABLE [dbo].[MemberSubscribedPlan] CHECK CONSTRAINT [FK_MemberSubscribedPlan_MemberSubscription_MemberSubscriptionId]
GO
ALTER TABLE [dbo].[MemberSubscribedPlan]  WITH CHECK ADD  CONSTRAINT [FK_MemberSubscribedPlan_Plan_PlanId] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plan] ([PlanId])
GO
ALTER TABLE [dbo].[MemberSubscribedPlan] CHECK CONSTRAINT [FK_MemberSubscribedPlan_Plan_PlanId]
GO
ALTER TABLE [dbo].[MemberSubscribedPlanHistory]  WITH CHECK ADD  CONSTRAINT [FK_MemberSubscribedPlanHistory_MemberSubscribedPlan_MemberSubscribedPlanId] FOREIGN KEY([MemberSubscribedPlanId])
REFERENCES [dbo].[MemberSubscribedPlan] ([MemberSubscribedPlanId])
GO
ALTER TABLE [dbo].[MemberSubscribedPlanHistory] CHECK CONSTRAINT [FK_MemberSubscribedPlanHistory_MemberSubscribedPlan_MemberSubscribedPlanId]
GO
ALTER TABLE [dbo].[MemberSubscription]  WITH CHECK ADD  CONSTRAINT [FK_MemberSubscription_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[MemberSubscription] CHECK CONSTRAINT [FK_MemberSubscription_Broker_BrokerId]
GO
ALTER TABLE [dbo].[MemberSubscription]  WITH CHECK ADD  CONSTRAINT [FK_MemberSubscription_Division_DivisionId] FOREIGN KEY([DivisionId])
REFERENCES [dbo].[Division] ([DivisionId])
GO
ALTER TABLE [dbo].[MemberSubscription] CHECK CONSTRAINT [FK_MemberSubscription_Division_DivisionId]
GO
ALTER TABLE [dbo].[MemberSubscription]  WITH CHECK ADD  CONSTRAINT [FK_MemberSubscription_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
GO
ALTER TABLE [dbo].[MemberSubscription] CHECK CONSTRAINT [FK_MemberSubscription_Group_GroupId]
GO
ALTER TABLE [dbo].[MemberSubscription]  WITH CHECK ADD  CONSTRAINT [FK_MemberSubscription_Member_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Member] ([MemberId])
GO
ALTER TABLE [dbo].[MemberSubscription] CHECK CONSTRAINT [FK_MemberSubscription_Member_MemberId]
GO
ALTER TABLE [dbo].[MemberSubscription]  WITH CHECK ADD  CONSTRAINT [FK_MemberSubscription_Subgroup_SubgroupId] FOREIGN KEY([SubgroupId])
REFERENCES [dbo].[Subgroup] ([SubgroupId])
GO
ALTER TABLE [dbo].[MemberSubscription] CHECK CONSTRAINT [FK_MemberSubscription_Subgroup_SubgroupId]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Portals] FOREIGN KEY([PortalId])
REFERENCES [dbo].[Portals] ([PortalId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Portals]
GO
ALTER TABLE [dbo].[MigratedMemberProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_MigratedMemberProductDetails_MemberSubscribedPlan_MemberSubscribedPlanId] FOREIGN KEY([MemberSubscribedPlanId])
REFERENCES [dbo].[MemberSubscribedPlan] ([MemberSubscribedPlanId])
GO
ALTER TABLE [dbo].[MigratedMemberProductDetails] CHECK CONSTRAINT [FK_MigratedMemberProductDetails_MemberSubscribedPlan_MemberSubscribedPlanId]
GO
ALTER TABLE [dbo].[PermissionDefinition]  WITH CHECK ADD  CONSTRAINT [FK_PermissionDefinition_PermissionGroup_PermissionGroupId] FOREIGN KEY([PermissionGroupId])
REFERENCES [dbo].[PermissionGroup] ([PermissionGroupId])
GO
ALTER TABLE [dbo].[PermissionDefinition] CHECK CONSTRAINT [FK_PermissionDefinition_PermissionGroup_PermissionGroupId]
GO
ALTER TABLE [dbo].[Plan]  WITH CHECK ADD  CONSTRAINT [FK_Plan_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Plan] CHECK CONSTRAINT [FK_Plan_Product_ProductId]
GO
ALTER TABLE [dbo].[PlanPackage]  WITH CHECK ADD  CONSTRAINT [FK_PlanPackage_Plan_PlanId] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plan] ([PlanId])
GO
ALTER TABLE [dbo].[PlanPackage] CHECK CONSTRAINT [FK_PlanPackage_Plan_PlanId]
GO
ALTER TABLE [dbo].[PlanPremium]  WITH CHECK ADD  CONSTRAINT [FK_PlanPremium_Plan_PlanId] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plan] ([PlanId])
GO
ALTER TABLE [dbo].[PlanPremium] CHECK CONSTRAINT [FK_PlanPremium_Plan_PlanId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory_ProductCategoryId] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory_ProductCategoryId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductSubCategory_ProductSubCategoryId] FOREIGN KEY([ProductSubCategoryId])
REFERENCES [dbo].[ProductSubCategory] ([ProductSubCategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductSubCategory_ProductSubCategoryId]
GO
ALTER TABLE [dbo].[ProductAccumulator]  WITH CHECK ADD  CONSTRAINT [FK_ProductAccumulator_AccumulatorId] FOREIGN KEY([AccumulatorId])
REFERENCES [dbo].[Accumulator] ([AccumulatorId])
GO
ALTER TABLE [dbo].[ProductAccumulator] CHECK CONSTRAINT [FK_ProductAccumulator_AccumulatorId]
GO
ALTER TABLE [dbo].[ProductAccumulator]  WITH CHECK ADD  CONSTRAINT [FK_ProductAccumulator_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductAccumulator] CHECK CONSTRAINT [FK_ProductAccumulator_ProductId]
GO
ALTER TABLE [dbo].[ProductFee]  WITH CHECK ADD  CONSTRAINT [FK_ProductFee_Broker_BrokerId] FOREIGN KEY([BrokerId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[ProductFee] CHECK CONSTRAINT [FK_ProductFee_Broker_BrokerId]
GO
ALTER TABLE [dbo].[ProductFee]  WITH CHECK ADD  CONSTRAINT [FK_ProductFee_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductFee] CHECK CONSTRAINT [FK_ProductFee_Product_ProductId]
GO
ALTER TABLE [dbo].[ProductProviderNetwork]  WITH CHECK ADD  CONSTRAINT [FK__Product__ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductProviderNetwork] CHECK CONSTRAINT [FK__Product__ProductId]
GO
ALTER TABLE [dbo].[ProductProviderNetwork]  WITH CHECK ADD  CONSTRAINT [FK__ProviderNetwork__ProviderNetworkId] FOREIGN KEY([ProviderNetworkId])
REFERENCES [dbo].[ProviderNetwork] ([ProviderNetworkId])
GO
ALTER TABLE [dbo].[ProductProviderNetwork] CHECK CONSTRAINT [FK__ProviderNetwork__ProviderNetworkId]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[RolePermission]  WITH CHECK ADD  CONSTRAINT [rolepermission_permissiondefinition_fk] FOREIGN KEY([PermissionDefinitionId])
REFERENCES [dbo].[PermissionDefinition] ([PermissionDefinitionId])
GO
ALTER TABLE [dbo].[RolePermission] CHECK CONSTRAINT [rolepermission_permissiondefinition_fk]
GO
ALTER TABLE [dbo].[RolePermission]  WITH CHECK ADD  CONSTRAINT [rolepermission_role_fk] FOREIGN KEY([RoleId])
REFERENCES [dbo].[PortalRoles] ([RoleId])
GO
ALTER TABLE [dbo].[RolePermission] CHECK CONSTRAINT [rolepermission_role_fk]
GO
ALTER TABLE [dbo].[Subgroup]  WITH CHECK ADD  CONSTRAINT [FK_Subgroup_Group_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
GO
ALTER TABLE [dbo].[Subgroup] CHECK CONSTRAINT [FK_Subgroup_Group_GroupId]
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
ALTER TABLE [dbo].[UserRoleAssociation]  WITH CHECK ADD  CONSTRAINT [rolepermission_user_fk] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserRoleAssociation] CHECK CONSTRAINT [rolepermission_user_fk]
GO
ALTER TABLE [dbo].[UserRoleAssociation]  WITH CHECK ADD  CONSTRAINT [UserRoleAssociation_role_fk] FOREIGN KEY([RoleId])
REFERENCES [dbo].[PortalRoles] ([RoleId])
GO
ALTER TABLE [dbo].[UserRoleAssociation] CHECK CONSTRAINT [UserRoleAssociation_role_fk]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserSecurityQuestionAnswers]  WITH CHECK ADD  CONSTRAINT [FK_UserSecurityQuestionAnswers_SecurityQuestions_SecurityQuestionId] FOREIGN KEY([SecurityQuestionId])
REFERENCES [dbo].[SecurityQuestions] ([SecurityQuestionId])
GO
ALTER TABLE [dbo].[UserSecurityQuestionAnswers] CHECK CONSTRAINT [FK_UserSecurityQuestionAnswers_SecurityQuestions_SecurityQuestionId]
GO
ALTER TABLE [dbo].[UserSecurityQuestionAnswers]  WITH CHECK ADD  CONSTRAINT [FK_UserSecurityQuestionAnswers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserSecurityQuestionAnswers] CHECK CONSTRAINT [FK_UserSecurityQuestionAnswers_Users_UserId]
GO
ALTER TABLE [dbo].[UserSecurityQuestions]  WITH CHECK ADD  CONSTRAINT [FK_UserSecurityQuestions_SecurityQuestions_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[SecurityQuestions] ([SecurityQuestionId])
GO
ALTER TABLE [dbo].[UserSecurityQuestions] CHECK CONSTRAINT [FK_UserSecurityQuestions_SecurityQuestions_QuestionId]
GO
ALTER TABLE [dbo].[UserSecurityQuestions]  WITH CHECK ADD  CONSTRAINT [FK_UserSecurityQuestions_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserSecurityQuestions] CHECK CONSTRAINT [FK_UserSecurityQuestions_Users_UserId]
GO
ALTER TABLE [dbo].[AgentUserBridge]  WITH CHECK ADD  CONSTRAINT [FK__AgentUserBridge__Broker__BrokerId] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Broker] ([BrokerId])
GO
ALTER TABLE [dbo].[AgentUserBridge] CHECK CONSTRAINT [FK__AgentUserBridge__Broker__BrokerId]
GO
ALTER TABLE [dbo].[AgentUserBridge]  WITH CHECK ADD  CONSTRAINT [FK__AgentUserBridge__User__UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[AgentUserBridge] CHECK CONSTRAINT [FK__AgentUserBridge__User__UserId]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetCommissionsforRespectivePayPeriod]
	-- Add the parameters for the stored procedure here
	@FromDate DATETIME, 
	@ToDate DATETIME,
	@BrokerId BIGINT,
	@Status VARCHAR(10) = null,
	@PayPeriod VARCHAR(50) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  CONVERT(date, [Posted Date]) as PostedDate
      , CONVERT(date, [Created Date]) as CreatedDate
      ,[Type] as Type
      ,[Subtype] as Subtype
      ,[Notes] as Notes
      ,cast([Credit] as decimal(18,2)) as Credit
      ,cast([Debit] as decimal(18,2)) as Debit
      ,cast([Total] as decimal(18,2)) as Total
      ,payeeAgent.ExternalId as PayeeAgentId
      ,[Payee Agent Label] as PayeeAgentLabel
      ,[Payee Address 1] as PayeeAddress1
      ,[Payee Address 2] as PayeeAddress2
      ,[Payee City] as PayeeCity
      ,[Payee State] as PayeeState
      ,[Payee Zipcode] as PayeeZipcode
      ,member.ExternalId as MemberId
      ,[Member Company] as MemberCompany
	  ,memberAgent.Company as MemberAgentCompany
      ,[Member First Name] as MemberFirstName
      ,[Member Last Name] as MemberLastName
      ,memberAgent.ExternalId as MemberAgentId
      ,[Member Agent Label] as MemberAgentLabel
      ,[Member Agent Category] as MemberAgentCategory
      ,[Member Source Detail] as MemberSourceDetail
      ,[Member Lead Status] as MemberLeadStatus
      ,[Product ID] as ProductId
      ,[Product Label] as ProductLabel
      ,[Product Category] as ProductCategory
      ,[Product Category 2] as ProductCategory2
      ,[Product Code] as ProductCode
      ,[Product Created Date] as ProductCreatedDate
      ,[Product Active Date] as ProductActiveDate
      ,[Transaction ID] as TransactionId
      ,[Transaction Amount] as TransactionAmount
      ,[Transaction Type] as TransactionType
      ,[Transaction Payment] as TransactionPayment
      ,[Transaction Paid Through Start] as TransactionPaidThroughStart
      ,[Transaction Paid Through End] as TransactionPaidThroughEnd
      ,[Commissionable Amount] as CommissionableAmount
      ,[ Payout] as Payout
      ,[Id] as Id
	  ,payeeAgent.Company as PayeeBrokerCompany
	  ,grp.Admin123Id as 'GroupId'
	  ,@PayPeriod as PayPeriod
	  ,@Status as 'Status'

  FROM [dbo].[CommissionReport] c
  JOIN [dbo].[Broker] payeeAgent on [Payee Agent ID] = payeeAgent.BrokerId
  LEFT JOIN [dbo].[Group] grp on c.GroupId = grp.GroupId
  LEFT JOIN [dbo].[Broker] memberAgent on [Member Agent ID] = memberAgent.BrokerId
  JOIN [dbo].Member member on [Member ID] = member.MemberId
  WHERE  ([Posted Date] >= @FromDate and [Posted Date] < DATEADD(day, 1, @ToDate)) and [Payee Agent ID] = @BrokerId
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--DROP PROCEDURE [dbo].[spGetBrokerTree] 
-- =============================================  
-- Author:  Paras Matta  
-- Create date: 11 Jan 2019  
-- Description: Stored Proc to get Broker Tree data  
-- Exec script: EXEC spGetBrokerTree 2
-- Modified History  

-- =============================================  

-- Modified On:   
-- Modified On: 
-- Modified On:  
-- Modified on:   

-- =============================================  

  

CREATE PROC [dbo].[spGetBrokerTree] 
@BrokerId BIGINT  
WITH RECOMPILE 
AS  

BEGIN  

  

WITH BROKER_MEMBER_COUNT AS (  

 SELECT   
  B.BrokerId,  
  B.FirstName,  
  B.MiddleName,  
  B.LastName,   
  B.BrokerTypeName,   
 -- B.CumulativeChildren,   
  B.MemberCount,  
  B.IsWebsiteActive,  
  B.IsActive,   
  B.BrokerId as RootId,  
  ISNULL(BH.ParentBrokerId,0) AS ParentID,  
  0 AS IsChild, 
  B.TermDate,  
  B.Company,  
  B.PersonalNPN,  
  B.ExternalId,
  B.[Status]
 FROM   
  VW_BROKERS B  
  LEFT OUTER JOIN BrokerHierarchy BH  
   ON (B.BrokerId = BH.BrokerId 
      and BH.BrokerId != BH.ParentBrokerId)

      --Following condition added to return only the immediate child records  
      --Following condition modified to allow returning all and immediate child records  
      --and bh.ParentBrokerId = @BrokerId  
      --AND bh.ParentBrokerId = CASE WHEN @ShowAll = 0 THEN @BrokerId ELSE bh.ParentBrokerId END        
 --WHERE B.BrokerId = @BrokerId

 UNION ALL 

 SELECT   
  B.BrokerId,  
  B.FirstName,  
  B.MiddleName,  
  B.LastName,   
  B.BrokerTypeName,   
  --B.CumulativeChildren,   
  B.MemberCount,  
  B.IsWebsiteActive,  
  B.IsActive,  
  BMC.RootId,  
  ISNULL(BH.ParentBrokerId,0) AS ParentID,  
  1 AS IsChild, 
  B.TermDate,  
  B.Company,  
  B.PersonalNPN,  
  B.ExternalId,
  B.[Status]
 FROM   

  VW_BROKERS B  
  JOIN BrokerHierarchy BH  
   ON B.BrokerId = BH.BrokerId  
  JOIN BROKER_MEMBER_COUNT BMC   
   ON (BH.ParentBrokerId = BMC.BrokerId  
    and BMC.BrokerId != bh.BrokerId)
)
    --Following condition added to return only the immediate child records  
    --Following condition modified to allow returning all and immediate child records  
       --and bh.ParentBrokerId = @BrokerId  
       --AND bh.ParentBrokerId = CASE WHEN @ShowAll = 0 THEN @BrokerId ELSE bh.ParentBrokerId END  
  

 

SELECT 
 BrokerId,  
 FirstName,  
 MiddleName,   
 LastName,   
 BrokerTypeName,   
 S.CumulativeChildren,   
 MemberCount,   
 --TreeMembersCount,  
 --Modified the following statement to deduct Broker's personal member count from the TreeMembersCount  
 CASE WHEN TreeMembersCount > 0 THEN TreeMembersCount - MemberCount ELSE 0 END As TreeMembersCount,  
 IsWebsiteActive,   
 IsActive,  
 ParentID,  
 TermDate,  
 Company,  
 PersonalNPN, 
 ExternalId,
 [Status]
FROM BROKER_MEMBER_COUNT BMC  
 LEFT OUTER JOIN (SELECT RootId,  
      SUM(BMC.MemberCount) AS TreeMembersCount , SUM(IsChild) AS CumulativeChildren 
     FROM BROKER_MEMBER_COUNT BMC  
     GROUP BY RootID) AS S  
  ON S.RootId = BMC.BrokerId  
 WHERE BMC.RootId = @BrokerId  
 ORDER BY BMC.Brokerid
OPTION (MAXRECURSION 0);    

END  
GO
