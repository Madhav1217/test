UPDATE [dbo].[Notification] SET [Subject]=N'PASSWORD RESET (AGENT ID {UserId})' WHERE [Type] = 3;
GO
UPDATE [dbo].[Notification] SET [Subject]=N'PASSWORD RESET REQUIRED {UserId}' WHERE [Type] = 9;
GO
UPDATE [dbo].[Notification] SET [Subject]= N'PASSWORD RESET (Aliera User – {UserId})' WHERE [Type] = 18;
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (21, N'Aliera companies Resend USERNAME for Agent ID - {UserId}', N'<html><body><p>Hello {FirstName} {LastName},</p><p>The username of your Aliera account to access the Broker portal is {username}. If you did not request to receive your username or if you need any further assistance, please call our Broker Support Team at: <em><u>844-892-9994</p><p>Thank You<br/>The Aliera Companies</p></body></html>', N'noreply-portal@ensurian.com')
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (22, N'The Aliera Companies Forgot USERNAME for Member ID  {UserId}', N'<html><body><p>Hello {FirstName} {LastName},</p><p>The username of your Aliera account to access the Member Portal is {username}. If you did not request to receive your username or if you need further assistance, please call our Member Services at: <em><u> 844-834-3456</p><p>Thank You<br/>The Aliera Companies</p></body></html>', N'noreply-portal@ensurian.com')
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (23, N'RESEND USERNAME', N'<html><body><p>Hello {FirstName} {LastName},</p><p>The username of your Aliera account is {username}. If you did not request to resend your username or if you need further assistance, please contact the system administrator</p><p>Thank You<br/>Admin,<br/>The Aliera companies</p></body></html>', N'noreply-portal@ensurian.com')
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (24, N'Aliera admin portal login access', N'<html><body><p>Hello {FirstName} {LastName},</p><p>A user account has been created for you to access the Aliera admin portal. To login into Aliera admin portal please click below URL link and input login credentials.</p><p>Portal URL: <a href="{content}">{content}</a><br/>Username: {username}<br/>Temporary password: {password}</p><p>Thank You<br/>Admin<br/>Aliera admin portal.</p></body></html>', N'noreply-portal@ensurian.com')
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (25, N'Aliera Companies – Account unlock success notification', N'<html><body><p>Hello {FirstName} {LastName},</p><p>As per your request your account has been unlocked successfully. Please use your current User name and Password to login into portal. If you do not remember your current password, then please use “Forgot password” functionality on login screen to reset your password.</p><p>Thank You<br/>Aliera Companies</p></body></html>', N'noreply-portal@ensurian.com')
GO
--Rebranding--
DELETE FROM [dbo].[Notification] WHERE [Type] = 1
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (1, N'Please provide signature to complete your application', N'<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:cctd="http://www.constantcontact.com/cctd">    <head>      <title></title>      <meta http-equiv="Content-Type" content="text/html;"/>      <meta name="viewport" content="width=device-width, initial-scale=1"/>      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>      <style type="text/css">        .preheader {         display:none !important; font-size:1px !important; color:#ffffff !important; line-height:1px !important; font-family:sans-serif !important; max-height:0px !important; max-width:0px !important; opacity:0 !important; overflow:hidden !important; mso-hide:all;}         sup {line-height: 0 !important; font-size: 75% !important;}           a[x-apple-data-detectors] {color: inherit !important; text-decoration: none !important; font-size: inherit !important; font-family: inherit !important; font-weight: inherit !important; line-height: inherit !important;}         .appleLinks a {color: inherit !important; text-decoration: none !important; font-size: inherit !important; font-family: inherit !important; font-weight: inherit !important; line-height: inherit !important;}         @media only screen and (max-width: 480px), only screen and (max-device-width: 480px) {          div, p, a, li, td {-webkit-text-size-adjust: none;}          .content,.devicewidth {height: auto !important; width: 100% !important; margin: 0 auto !important; float: none !important;}          .footer-manage-pad {padding-bottom: 10px !important;}          .footer-contact {text-align: center !important;}          img.flex-img {width: 100% !important; height: auto !important;}          .hide {display:none !important;}          .mobile {display:block !important;}          .pad-content {padding-right: 20px !important; padding-left: 20px !important;}          .adjust-height {height: auto !important;}          /* Mobile Only Content */          div.mobilecontent { display: block !important; max-height: none !important;}          /* Email-Specific CSS */        .logo-mobile{width: 280px !important; height: auto !important;}.mobileFooterPadding {margin-top: 10px !important; margin-bottom: 10px !important;} }      </style>       <!--[if gte mso 9]>       <xml>       <o:OfficeDocumentSettings>       <o:AllowPNG/>       <o:PixelsPerInch>96</o:PixelsPerInch>       </o:OfficeDocumentSettings>       </xml>       <![endif]-->    </head>    <body style="-webkit-text-size-adjust: 100%; margin: 0px; padding: 0px; width: 100%; background-color: #e9e9e9;">      <div class="preheader" style="display:none;font-size:1px;color:#ffffff;line-height:1px;font-family:sans-serif;max-height:0px;max-width:0px;opacity:0;overflow:hidden;mso-hide:all;">Sign your application</div>      <table class="content" cellspacing="0" cellpadding="0" border="0" align="center" style="background-color: #fff; border-collapse: collapse; mso-table-lspace:0px; mso-table-rspace:0px; color: #000000; font-family: Arial, Helvetica, sans-serif; margin: 0 auto; mso-table-rspace: 0px; padding: 0px; width: 600px;">        <!-- Start CONTENT -->        <tr>          <td align="center">            <table class="devicewidth" width="600" align="center" cellpadding="0" cellspacing="0" border="0" style="border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; margin: 0px auto;">              <tr>                <td align="center">                  <table class="devicewidth" width="100%" align="center" cellpadding="0" cellspacing="0" border="0" style="border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; margin: 0px auto;">                    <tr>                      <td height="25" align="center" style="height: 25px; font-size: 0px; mso-line-height-rule: exactly; line-height: 25px; ">&nbsp;</td>                    </tr>                    <tr>                      <td align="center" style="mso-line-height-rule: exactly; "><img src="https://aliera-documents.s3.amazonaws.com/Ensurian-Logo-Emai300x82.jpg" width="300" height="82" border="0" style="width: 300px; height: 82px; border: 0;"alt=""/>                      </td>                    </tr>                    <tr>                      <td height="25" align="center" style="height: 25px; font-size: 0px; mso-line-height-rule: exactly; line-height: 25px; ">&nbsp;</td>                    </tr><tr><td class="pad-content"  align="center" style="mso-line-height-rule: exactly; text-align:left;padding-left: 40px; padding-right: 40px;">{name}</td></tr>                    <tr>         <td height="25" align="center" style="height: 25px; font-size: 0px; mso-line-height-rule: exactly; line-height: 25px; ">&nbsp;</td>        </tr>        <tr>                      <td class="pad-content" align="center" style="mso-line-height-rule: exactly; text-align:left;padding-left: 40px; padding-right: 40px;">                         Thank you for completing your application for an Ensurian Plan. Please provide your signature and confirm your application by visiting the link below.                      </td>                    </tr>                    <tr>                      <td height="45" align="center" style="height: 45px; font-size: 0px; mso-line-height-rule: exactly; line-height: 45px; ">&nbsp;</td>                    </tr>                    <!-- Button -->                    <tr>                      <td align="center">                        <table cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">                          <tr>                            <td align="center">                              <div align="center"><a alias="theLinkCTA" href="{content}" style="border-radius: 4px; color: #ffffff; display: inline-block; font-family: Arial,Helvetica,sans-serif; font-size: 20px; font-weight: bold; text-transform: uppercase; line-height: 34px; text-align: center; text-decoration: none; width: 170px; background-color: #084a7a;font-size: 14px;" target="_blank">Verify Signature</a>                           </div>                            </td>                          </tr>                        </table>                      </td>                    </tr>                    <tr>                      <td height="50" align="center" style="height: 50px; font-size: 0px; mso-line-height-rule: exactly; line-height: 50px; ">&nbsp;</td>                    </tr>                  </table>                </td>              </tr>            </table>          </td>        </tr>        <!-- End CONTENT -->      </table>    </body>  </html>', N'NoReply-Portal@Ensurian.com')
GO
UPDATE FAQ SET FAQAnswer = 'In the Broker Portal, expand the side menu and select Documents and Forms. Under the Forms for Agents section, select ACH Authorization Deposit Form. Fill out the form and email to contracting@ensurian.com.' WHERE FAQId = 40 
GO
UPDATE MasterData SET VALUE = 'AK, HI, MD, ME, MO, ND, PR, SD, VT, WY, WA, DC, TX, CO' WHERE [Key] = 'EnrollmentNotAllowedStates'
GO
UPDATE MasterData SET VALUE = 'info.ensurian@ensurian.com' WHERE [Key] = 'Broker_ContactInfo_Email'
GO
UPDATE Notification SET [From] = 'NoReply-Portal@Ensurian.com' WHERE Type between 1 and 6
GO
UPDATE BulletinBoardNews SET News = '1_Welcome to Broker Portal. If you have any questions please go to <a href="https://www.ensurian.com/" target="_blank">https://www.ensurian.com/</a>' where BulletinBoardNewsId = 1
GO
UPDATE MemberQuestionnaire SET MemberQuestionnaire = 'You understand that this sharing program has a 24-month waiting period for pre-existing conditions, where pre-existing conditions are defined as conditions that exist at the time of enrollment that have evidenced symptoms, received treatment, and/or medication within the past 24 months.' WHERE MemberQuestionnaireId = 6
GO
UPDATE MemberQuestionnaire SET MemberQuestionnaire = 'You understand that other medical services and emergency surgical services are eligible for cost sharing immediately (subject to the satisfaction of your Member Shared Responsibility Payment), but elective services require a 60 day waiting period (180 day waiting period for Trinity Everyday Value and Trinity Everyday Plus) following your effective date. Not all elective procedures are eligible for sharing. Consult your Member Sharing Guide or contact Trinity for limitations and exclusions.' WHERE MemberQuestionnaireId = 7
GO
UPDATE MemberQuestionnaire SET MemberQuestionnaire = 'You understand that Aliera Companies, Inc. and Trinity Healthshare, Inc. have the authority, under the Health Insurance Portability and Accountability Act of 1996 (“HIPAA”), to request your medical records to facilitate they payment of your medical expenses. Failure to authorize the release of medical records may result in medical expenses being ineligible for sharing.' WHERE MemberQuestionnaireId = 8
GO
UPDATE MemberQuestionnaire SET MemberQuestionAnswer='Arthritis,Asthma,Heart Disease,Congestive Heart Failure,Heart Bypass Surgery,Depression,Diabetes Type I,Diabetes Type II,Chronic Heartburn/GERD,High Cholesterol,High Blood Pressure,Irritable Bowel Disease,Lower Back or Neck Pain,Heart Attack,HIV/AIDS,None of the above'
WHERE MemberQuestionnaireId=9
GO
TRUNCATE TABLE [State]
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'AK', N'Alaska', N'AKST',N'99501-99950')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'AL', N'Alabama', N'CST',N'35004-36925')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'AR', N'Arkansas', N'CST',N'71601-72959,75502-75502')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'AZ', N'Arizona', N'MST',N'85001-86556')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'CA', N'California', N'PST',N'90001-96162')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'CO', N'Colorado', N'MST',N'80001-81658')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'CT', N'Connecticut', N'EST',N'6001-6389,6401-6928')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'DE', N'Delaware', N'EST',N'19701-19980')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'FL', N'Florida', N'EST',N'32004-34997')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'GA', N'Georgia', N'EST',N'30001-31999,39901-39901')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'HI', N'Hawaii', N'HST',N'96701-96898')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'IA', N'Iowa', N'CST',N'50001-52809,68119-68120')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'ID', N'Idaho', N'MST',N'83201-83876')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'IL', N'Illinois', N'CST',N'60001-62999')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'IN', N'Indiana', N'EST',N'46001-47997')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'KS', N'Kansas', N'CST',N'66002-67954')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'KY', N'Kentucky', N'CST',N'40003-42788')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'LA', N'Louisiana', N'CST',N'70001-71232,71234-71497')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'MA', N'Massachusetts', N'EST',N'1001-2791,5501-5544')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'MD', N'Maryland', N'EST',N'20331-20331,20335-20797,20812-21930')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'ME', N'Maine', N'EST',N'3901-4992')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'MI', N'Michigan', N'EST',N'48001-49971')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'MN', N'Minnesota', N'CST',N'55001-56763')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'MO', N'Missouri', N'CST',N'63001-65899')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'MS', N'Mississippi', N'CST',N'38601-39776,71233-71233')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'MT', N'Montana', N'MST',N'59001-59937')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'NC', N'North Carolina', N'EST',N'27006-28909')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'ND', N'North Dakota', N'CST',N'58001-58856')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'NE', N'Nebraska', N'CST',N'68001-68118,68122-69367')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'NH', N'New Hampshire', N'EST',N'3031-3897')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'NJ', N'New Jersey', N'EST',N'7001-8989')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'NM', N'New Mexico', N'MST',N'87001-88441')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'NV', N'Nevada', N'PST',N'88901-89883')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'NY', N'New York', N'EST',N'6390-6390,10001-14975')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'OH', N'Ohio', N'EST',N'43001-45999')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'OK', N'Oklahoma', N'CST',N'73001-73199,73401-74966')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'OR', N'Oregon', N'PST',N'97001-97920')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'PA', N'Pennsylvania', N'EST',N'15001-19640')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'PR', N'Puerto Rico', N'AST',N'00600-00799,00900-00999')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'RI', N'Rhode Island', N'EST',N'2801-2940')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'SC', N'South Carolina', N'EST',N'29001-29948')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'SD', N'South Dakota', N'CST',N'57001-57799')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'TN', N'Tennessee', N'CST',N'37010-38589')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'TX', N'Texas', N'CST',N'73301-73301,75001-75501,75503-79999,88510-88589')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'UT', N'Utah', N'MST',N'84001-84784')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'VA', N'Virginia', N'EST',N'20040-20167,22001-24658')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'VT', N'Vermont', N'EST',N'5001-5495,5601-5907')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'WA', N'Washington', N'PST',N'98001-99403')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'WI', N'Wisconsin', N'CST',N'53001-54990')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'WV', N'West Virginia', N'EST',N'24701-26886')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'WY', N'Wyoming', N'MST',N'82001-83128')
GO
INSERT [dbo].[State] ([StateCode], [StateName], [Timezone], [ZipCodeRange]) VALUES (N'DC', N'District of Columbia', N'EST',N'20001-20039,20042-20599,20799-20799')
GO

--POR -3876
--[Product]--
UPDATE Product SET NAME = 'PrimaCare Basic', ProductCode = 25585  WHERE ProductCode = 17173
UPDATE Product SET ProductCode = 25586 WHERE ProductCode = 17175
UPDATE Product SET NAME = 'PrimaCare Basic CC', ProductCode = 25587 WHERE ProductCode = 17252
UPDATE Product SET NAME = 'PrimaCare Premium CC',  ProductCode = 25588 WHERE ProductCode = 17253

--[Plan]--
UPDATE [Plan] SET NAME = 'PrimaCare Basic' WHERE ProductId in (49, 53) 

--POR - 3875
--[Product]--
SET IDENTITY_INSERT [dbo].[Product] ON
GO
INSERT [dbo].[Product] 
([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) 
VALUES 
(528, N'Trinity Dental', 7, 1, CAST(N'2019-08-28T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/Trinity_HealthShare_Dental_Logo.png', NULL, CAST(30.00 AS Decimal(5, 2)), 25595, N'https://aliera-documents.s3.amazonaws.com/TrinityDental_SellSheet.pdf', NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, NULL, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'Trinity Dental Sell Sheet', 1, 0, N'Dental', 0)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

UPDATE MasterData SET Value = '(844) 892-9994 Broker Agent Support|(844) 412-3019 Become a Member|(844) 834-3456 Member Services|(404) 618-0602 Corporate Headquarters' WHERE [Key] = 'Broker_ContactInfo_PhoneNumbers'
GO

--[Plan]--
UPDATE [Plan] SET ProductId = 528 WHERE PlanID in (144)
DELETE FROM PlanPackage WHERE PlanId in (143,145, 74, 75, 76)

--POR - 3879
--[Product]--
UPDATE Product SET NAME = 'CarePlus', ProductCode = 25593 where ProductCode in (21422) 

--[Plan]--
UPDATE [Plan] SET NAME = 'CarePlus $ 5000 MSRA $150,000 Max' where PlanId = 146
UPDATE [Plan] SET NAME = 'CarePlus $ 5000 MSRA $250,000 Limit' where PlanId = 147
UPDATE [Plan] SET NAME = 'CarePlus $ 5000 MSRA $500,000 Limit' where PlanId = 148
UPDATE [Plan] SET NAME = 'CarePlus $ 10000 MSRA $150,000 Max' where PlanId = 149
UPDATE [Plan] SET NAME = 'CarePlus $ 10000 MSRA $250,000 Limit' where PlanId = 150
UPDATE [Plan] SET NAME = 'CarePlus $ 10000 MSRA $500,000 Limit' where PlanId = 151
UPDATE [Plan] SET RelatedPlanIds = '152,153,156,158' where PlanId in (146,147,148,149,150,151)

--[Product]--
SET IDENTITY_INSERT [dbo].[Product] ON
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (524, N'InterimCare Premium', 8, 1, CAST(N'2019-01-03T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/InterimCare_Logo_Premium.png', NULL, CAST(75.00 AS Decimal(5, 2)), 25584, N'https://aliera-documents.s3.amazonaws.com/InterimCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, 62499, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'InterimCare Sell Sheet', 1, 0, N'Interim Care', 1)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (525, N'InterimCare Plus', 8, 1, CAST(N'2019-01-03T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/InterimCare_Logo_Plus.png', NULL, CAST(75.00 AS Decimal(5, 2)), 25583, N'https://aliera-documents.s3.amazonaws.com/InterimCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, 62499, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'InterimCare Sell Sheet', 1, 0, N'Interim Care', 1)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (526, N'InterimCare Value', 8, 1, CAST(N'2019-01-03T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/InterimCare_Logo_Value.png', NULL, CAST(75.00 AS Decimal(5, 2)), 25582, N'https://aliera-documents.s3.amazonaws.com/InterimCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, 62499, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'InterimCare Sell Sheet', 1, 0, N'Interim Care', 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

--[Plan]--
SET IDENTITY_INSERT [dbo].[Plan] ON 
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (882, 524, N'InterimCare Premium $ 1000 MSRA (181 Days +)', 7, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'181 Days +', NULL, 1)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (883, 525, N'InterimCare Plus $ 1000 MSRA (181 Days +)', 15, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'181 Days +', NULL, 2)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (884, 524, N'InterimCare Premium $ 1000 MSRA (< 30 Days)', 8, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'< 30 Days', NULL, 1)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (885, 525, N'InterimCare Plus $ 1000 MSRA (< 30 Days)', 16, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'< 30 Days', NULL, 2)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (886, 526, N'InterimCare Value $ 1000 MSRA (< 30 Days)', 24, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'< 30 Days', NULL, 3)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (887, 526, N'InterimCare Value $ 1000 MSRA (181 Days +)', 23, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'181 Days +', NULL, 3)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (888, 524, N'InterimCare Premium $ 1000 MSRA (31 Days – 180 Days)', 9, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'31 Days - 180 Days', NULL, 1)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (889, 525, N'InterimCare Plus $ 1000 MSRA (31 Days – 180 Days)', 17, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'31 Days - 180 Days', NULL, 2)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (890, 526, N'InterimCare Value $ 1000 MSRA (31 Days – 180 Days)', 25, 1, 2, CAST(N'2019-08-23T18:00:00.000' AS DateTime), NULL, NULL, N'1000', NULL, N'31 Days - 180 Days', NULL, 3)
GO
SET IDENTITY_INSERT [dbo].[Plan] OFF
GO

--[PlanPackage]--
SET IDENTITY_INSERT [dbo].[PlanPackage] ON
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (103, 882, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (95, 883, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (96, 884, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (97, 885, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (98, 886, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (99, 887, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (100, 888, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (101, 889, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (102, 890, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[PlanPackage] OFF
GO

--[PlanPremium]--
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(218.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(436.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(327.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(240.24 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(491.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(360.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(324.32 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(660.66 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(558.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(439.53 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(816.27 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (882, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(766.04 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(196.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(409.50 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(305.76 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(218.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(447.72 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(338.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(300.30 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(600.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(516.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(376.74 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(753.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (883, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(690.69 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(196.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(393.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(294.84 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(216.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(442.26 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(324.32 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(291.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(594.59 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(502.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(395.58 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(734.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (884, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(689.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(176.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(368.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(275.18 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(196.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(402.95 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(304.67 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(270.27 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(540.54 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(464.86 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(339.07 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(678.13 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (885, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(621.62 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(98.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(270.27 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(196.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(147.42 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(294.84 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(221.13 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(216.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(405.41 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(378.38 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(282.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(565.11 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (886, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(508.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(109.20 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(300.30 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(218.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(163.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(327.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(245.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(240.24 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(450.45 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(420.42 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(313.95 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(627.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (887, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(565.11 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(207.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(414.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(311.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(228.23 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(466.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(342.34 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(308.11 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(627.63 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(530.63 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(417.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(775.46 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (888, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(727.73 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(186.73 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(389.03 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(290.47 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(207.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(425.33 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(321.59 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(285.29 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(570.57 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(490.69 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(357.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(715.81 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (889, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(656.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(103.74 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(285.29 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 0, 39, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(207.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(155.61 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(311.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 40, 49, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(233.42 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(228.23 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(427.93 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 50, 59, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(399.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 1, CAST(298.25 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 3, CAST(596.51 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (890, 60, 64, CAST(1000.00 AS Decimal(8, 2)), 5, CAST(536.85 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

--[PlanBenefit]--
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (882, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (882, 2, N'Plan Pays: 80%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (882, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (882, 4, N'$500,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (882, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (883, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (883, 2, N'Plan Pays: 75%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (883, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (883, 4, N'$250,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (883, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (884, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (884, 2, N'Plan Pays: 80%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (884, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (884, 4, N'$500,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (884, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (885, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (885, 2, N'Plan Pays: 75%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (885, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (885, 4, N'$250,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (885, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (886, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (886, 2, N'Plan Pays: 70%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (886, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (886, 4, N'$250,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (886, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (887, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (887, 2, N'Plan Pays: 70%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (887, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (887, 4, N'$250,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (887, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (888, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (888, 2, N'Plan Pays: 80%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (888, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (888, 4, N'$500,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (888, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (889, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (889, 2, N'Plan Pays: 75%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (889, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (889, 4, N'$250,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (889, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (890, 1, N'$1,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (890, 2, N'Plan Pays: 70%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (890, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (890, 4, N'$250,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (890, 6, N'$1,000,000 ')
GO

--[POR 3874]--[POR 3872]--[POR-2873]--
--[Product]--
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (518, N'TrinityCare Everyday Value', 2, 1, CAST(N'2019-08-19T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_VPP_Logo_Value.png', N'AK, HI', CAST(100.00 AS Decimal(5, 2)), 25576, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 62397, CAST(50.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'TrinityCare Everyday Sell Sheet', 0, 0, N'TrinityCare Everyday VPP', 0)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (519, N'TrinityCare Everyday Plus', 2, 1, CAST(N'2019-08-19T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_VPP_Logo_Value.png', N'AK, HI', CAST(100.00 AS Decimal(5, 2)), 25577, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 62397, CAST(50.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'TrinityCare Everyday Sell Sheet', 0, 0, N'TrinityCare Everyday VPP', 0)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (520, N'TrinityCare Everyday Premium', 2, 1, CAST(N'2019-08-19T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_VPP_Logo_Value.png', N'AK, HI', CAST(100.00 AS Decimal(5, 2)), 25578, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 62397, CAST(50.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'TrinityCare Everyday Sell Sheet', 0, 0, N'TrinityCare Everyday VPP', 0)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

--[Plan]--
SET IDENTITY_INSERT [dbo].[Plan] ON 
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (864, 518, N'TrinityCare Everyday Value $ 5000 MSRA', 72, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'5000', NULL, NULL, NULL, 18)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (865, 519, N'TrinityCare Everyday Plus $ 5000 MSRA', 38, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'5000', NULL, NULL, NULL, 6)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (866, 520, N'TrinityCare Everyday Premium $ 5000 MSRA', 1, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'5000', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (867, 518, N'TrinityCare Everyday Value $ 7500 MSRA', 51, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'7500', NULL, NULL, NULL, 9)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (868, 519, N'TrinityCare Everyday Plus $ 7500 MSRA', 69, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'7500', NULL, NULL, NULL, 15)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (869, 520, N'TrinityCare Everyday Premium $ 7500 MSRA', 55, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'7500', NULL, NULL, NULL, 10)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (870, 518, N'TrinityCare Everyday Value $ 10000 MSRA', 75, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'10000', NULL, NULL, NULL, 21)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (871, 519, N'TrinityCare Everyday Plus $ 10000 MSRA', 73, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'10000', NULL, NULL, NULL, 19)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (872, 520, N'TrinityCare Everyday Premium $ 10000 MSRA', 10, 1, 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-18T18:00:00.000' AS DateTime), N'10000', NULL, NULL, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[Plan] OFF
GO

--[PlanPackage]--
DELETE FROM PlanPackage WHERE PlanId in (2,3,4,5,6,7,8,9,10, 38,39,40, 50, 51, 52, 62, 63, 64, 20,21,22,23,24,25,26,27,28) 

SET IDENTITY_INSERT [dbo].[PlanPackage] ON 
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (80, 867, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (81, 868, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (82, 869, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (83, 870, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (84, 871, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (85, 872, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[PlanPackage] OFF
GO

--[PlanPremium]--
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(147.74 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(321.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(249.99 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(181.84 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(395.77 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(307.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(204.57 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(445.24 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(346.14 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(240.73 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(523.94 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(407.32 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(297.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(647.62 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (864, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(503.47 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(183.53 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(356.59 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(257.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(225.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(438.71 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(316.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(254.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(493.46 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(356.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(299.04 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(598.91 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(432.31 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(369.63 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(740.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (865, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(534.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(209.09 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(403.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(290.89 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(257.34 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(496.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(358.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(289.51 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(558.49 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(402.77 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(340.69 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(657.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(473.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(421.11 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(812.35 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (866, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(585.84 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(132.41 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(306.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(229.54 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(162.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(376.89 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(282.51 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(183.33 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(424.00 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(317.82 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(212.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(492.53 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(369.19 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(266.67 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(616.73 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (867, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(462.29 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(168.19 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(336.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(249.99 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(207.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(414.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(307.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(232.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(466.47 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(346.14 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(270.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(541.86 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(402.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(338.74 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(678.51 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (868, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(503.47 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(183.53 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(377.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 0, 29, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(270.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(225.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(464.98 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 30, 39, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(332.85 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(254.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(523.10 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 40, 49, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(374.45 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(295.19 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(607.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 50, 59, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(434.97 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 1, CAST(369.63 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 3, CAST(760.87 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (869, 60, 64, CAST(7500.00 AS Decimal(8, 2)), 5, CAST(544.66 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(111.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(280.66 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(203.98 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(137.79 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(345.43 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(251.05 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(155.02 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(388.61 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(282.43 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(180.07 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(451.42 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(328.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(225.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(565.25 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (870, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(410.81 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(137.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(301.11 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(229.54 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(169.25 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(370.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(282.51 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(190.41 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(416.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(317.82 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(221.19 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(484.31 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(369.19 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(276.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(606.43 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (871, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(462.29 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(163.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(331.79 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(249.99 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(200.71 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(408.35 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(307.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(225.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(459.39 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(346.14 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(262.30 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(533.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(402.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(328.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(668.21 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (872, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(503.47 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

--[PlanBenefit]--
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (864, 1, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (864, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (864, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (864, 4, N'$150,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (864, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (865, 1, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (865, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (865, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (865, 4, N'$250,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (865, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (866, 1, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (866, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (866, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (866, 4, N'$500,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (866, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (867, 1, N'$7,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (867, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (867, 3, N'$7,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (867, 4, N'$150,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (867, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (868, 1, N'$7,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (868, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (868, 3, N'$7,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (868, 4, N'$250,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (868, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (869, 1, N'$7,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (869, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (869, 3, N'$7,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (869, 4, N'$500,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (869, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (870, 1, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (870, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (870, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (870, 4, N'$150,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (870, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (871, 1, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (871, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (871, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (871, 4, N'$250,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (871, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (872, 1, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (872, 2, N'Plan Pays: 100%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (872, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (872, 4, N'$500,000.00 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (872, 6, N'$1,000,000 ')
GO

--[Product]--
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (521, N'TrinityCare Complete Value', 2, 1, CAST(N'2019-08-19T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_VPP_Logo_Value.png', N'AK, HI', CAST(100.00 AS Decimal(5, 2)), 25579, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 62397, CAST(50.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'TrinityCare Complete Sell Sheet', 0, 0, N'TrinityCare Complete BSG', 0)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (522, N'TrinityCare Complete Plus', 2, 1, CAST(N'2019-08-19T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_VPP_Logo_Value.png', N'AK, HI', CAST(100.00 AS Decimal(5, 2)), 25580, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 62397, CAST(50.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'TrinityCare Complete Sell Sheet', 0, 0, N'TrinityCare Complete BGS', 0)
GO
INSERT [dbo].[Product] ([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) VALUES (523, N'TrinityCare Complete Premium', 2, 1, CAST(N'2019-08-19T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_VPP_Logo_Value.png', N'AK, HI', CAST(100.00 AS Decimal(5, 2)), 25581, N'https://aliera-documents.s3.amazonaws.com/AlieraCare_SellSheet.pdf', NULL, 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 1, CAST(N'2019-08-19T15:22:55.230' AS DateTime), 62397, CAST(50.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'TrinityCare Complete Sell Sheet', 0, 0, N'TrinityCare Complete BGS', 0)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

--[Plan]--
SET IDENTITY_INSERT [dbo].[Plan] ON 
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (873, 523, N'TrinityCare Complete Premium $ 10000 MSRA', 74, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'10000', NULL, NULL, NULL, 20)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (874, 522, N'TrinityCare Complete Plus $ 10000 MSRA', 70, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'10000', NULL, NULL, NULL, 16)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (875, 521, N'TrinityCare Complete Value $ 10000 MSRA', 71, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'10000', NULL, NULL, NULL, 17)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (876, 523, N'TrinityCare Complete Premium $ 5000 MSRA', 63, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'5000', NULL, NULL, NULL, 12)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (877, 522, N'TrinityCare Complete Plus $ 5000 MSRA', 68, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'5000', NULL, NULL, NULL, 14)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (878, 521, N'TrinityCare Complete Value $ 5000 MSRA', 67, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'5000', NULL, NULL, NULL, 13)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (879, 523, N'TrinityCare Complete Premium $ 2500 MSRA', 33, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'2500', NULL, NULL, NULL, 5)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (880, 522, N'TrinityCare Complete Plus $ 2500 MSRA', 26, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'2500', NULL, NULL, NULL, 4)
GO
INSERT [dbo].[Plan] ([PlanId], [ProductId], [Name], [PlanRating], [Type], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [MSRA], [CoverageLimit], [CoverageDuration], [RelatedPlanIds], [CategoryWisePlanRating]) VALUES (881, 521, N'TrinityCare Complete Value $ 2500 MSRA', 18, 1, 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), 2, CAST(N'2019-08-20T18:00:00.000' AS DateTime), N'2500', NULL, NULL, NULL, 3)
GO
SET IDENTITY_INSERT [dbo].[Plan] OFF
GO

--[PlanPackage]--
SET IDENTITY_INSERT [dbo].[PlanPackage] ON 
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (86, 873, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (87, 874, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (88, 875, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (89, 876, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (90, 877, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (91, 878, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (92, 879, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (93, 880, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (94, 881, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[PlanPackage] OFF
GO

--[PlanBenefit]--
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (873, 1, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (873, 2, N'Plan Pays: 80%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (873, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (873, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (874, 1, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (874, 2, N'Plan Pays: 70%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (874, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (874, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (875, 1, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (875, 2, N'Plan Pays: 60%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (875, 3, N'$10,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (875, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (876, 1, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (876, 2, N'Plan Pays: 80%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (876, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (876, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (877, 1, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (877, 2, N'Plan Pays: 70%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (877, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (877, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (878, 1, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (878, 2, N'Plan Pays: 60%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (878, 3, N'$5,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (878, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (879, 1, N'$2,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (879, 2, N'Plan Pays: 80%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (879, 3, N'$2,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (879, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (880, 1, N'$2,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (880, 2, N'Plan Pays: 70%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (880, 3, N'$2,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (880, 6, N'$1,000,000 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (881, 1, N'$2,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (881, 2, N'Plan Pays: 60%')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (881, 3, N'$2,500 ')
GO
INSERT [dbo].[PlanBenefit] ([PlanId], [BenefitId], [Value]) VALUES (881, 6, N'$1,000,000 ')
GO

--[PlanPremium]--
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(397.84 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(810.42 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(685.17 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(538.14 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(999.41 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(937.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(202.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(405.91 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(304.43 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(253.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(507.39 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(380.54 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(279.07 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(570.81 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(418.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(358.06 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(729.37 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(616.65 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(484.33 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(899.47 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (874, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(844.11 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(169.13 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(338.26 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(253.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(211.41 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(422.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(317.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(232.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(475.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(348.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(298.38 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(607.81 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(513.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(403.61 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(749.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (875, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(703.43 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(281.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(563.77 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(422.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(352.35 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(704.71 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(528.53 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(387.59 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(792.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(581.39 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(497.30 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(1013.02 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(856.46 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(672.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(1249.26 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (876, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(1172.38 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(253.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(507.39 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(380.54 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(317.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(634.24 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(475.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(348.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(713.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(523.25 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(447.57 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(911.72 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(770.82 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(605.41 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(1124.33 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (877, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(1055.14 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(211.41 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(422.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 0, 29, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(317.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(264.27 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(528.53 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 30, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(396.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(290.69 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(594.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(436.04 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(372.98 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(759.77 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(642.35 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(504.51 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(936.94 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (878, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(879.29 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(305.37 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(610.75 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(458.06 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(381.72 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(763.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(572.58 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(419.89 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(858.86 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(629.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(538.74 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(1097.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(927.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(728.73 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(1353.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (879, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(1270.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(274.84 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(549.67 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(412.26 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(343.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(687.09 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(515.32 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(377.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(772.98 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(566.85 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(484.87 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(987.69 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(835.05 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(655.86 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(1218.03 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (880, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(1143.07 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(229.03 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(458.06 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 0, 29, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(343.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(286.29 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(572.58 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 30, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(429.43 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(314.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(644.15 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(472.38 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(404.06 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(823.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(695.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(546.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(1015.02 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (881, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(952.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

--Set products to inactive----
Update Product set TermDate ='2019-01-01 00:00:00.000' where ProductCode in 
(21400,21401,21402,21403,21404,21405,21406,21407,21408,21409,21410,21411, 21418,21419,21432, 21422,21420,21421,21422,21424,17173,17175,17252, 17253, 21424, 21425, 21423, 21433, 21422)

UPDATE ProductCategory SET ProductCategoryName = 'Supplemental Program' WHERE ProductCategoryId = 7
UPDATE Benefit SET Name = 'Program Year Maximum Limit' WHERE BenefitId = 5  
UPDATE Benefit SET Name = 'Dental Program Year' WHERE BenefitId = 16  
UPDATE PlanBenefit SET Value = 'Program Pays: 100%' WHERE Value = 'Plan Pays: 100%'
UPDATE PlanBenefit SET Value = 'Program Pays: 80%' WHERE Value = 'Plan Pays: 80%'
UPDATE PlanBenefit SET Value = 'Program Pays: 70%' WHERE Value = 'Plan Pays: 70%'
UPDATE PlanBenefit SET Value = 'Program Pays: 60%' WHERE Value = 'Plan Pays: 60%'
UPDATE PlanBenefit SET Value = 'Program Pays: 75%' WHERE Value = 'Plan Pays: 75%'

UPDATE PlanPremium SET Premium=1246.8	WHERE PlanId=873	AND MinAge =50	AND MaxAge=59	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1054.11	WHERE PlanId=873	AND MinAge =50	AND MaxAge=59	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=827.91	WHERE PlanId=873	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1537.55	WHERE PlanId=873	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1442.93	WHERE PlanId=873	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=354.74	WHERE PlanId=871	AND MinAge =0	AND MaxAge=29	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=709.48	WHERE PlanId=871	AND MinAge =0	AND MaxAge=29	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=532.11	WHERE PlanId=871	AND MinAge =0	AND MaxAge=29	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=443.43	WHERE PlanId=871	AND MinAge =30	AND MaxAge=39	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=886.85	WHERE PlanId=871	AND MinAge =30	AND MaxAge=39	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=665.13	WHERE PlanId=871	AND MinAge =30	AND MaxAge=39	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=487.77	WHERE PlanId=871	AND MinAge =40	AND MaxAge=49	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=997.7	WHERE PlanId=871	AND MinAge =40	AND MaxAge=49	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=731.65	WHERE PlanId=871	AND MinAge =40	AND MaxAge=49	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=625.84	WHERE PlanId=871	AND MinAge =50	AND MaxAge=59	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1274.84	WHERE PlanId=871	AND MinAge =50	AND MaxAge=59	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1077.82	WHERE PlanId=871	AND MinAge =50	AND MaxAge=59	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=846.54	WHERE PlanId=871	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1572.15	WHERE PlanId=871	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1475.39	WHERE PlanId=871	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=333.56	WHERE PlanId=875	AND MinAge =0	AND MaxAge=29	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=667.12	WHERE PlanId=875	AND MinAge =0	AND MaxAge=29	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=500.35	WHERE PlanId=875	AND MinAge =0	AND MaxAge=29	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=416.95	WHERE PlanId=875	AND MinAge =30	AND MaxAge=39	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=833.91	WHERE PlanId=875	AND MinAge =30	AND MaxAge=39	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=625.43	WHERE PlanId=875	AND MinAge =30	AND MaxAge=39	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=458.64	WHERE PlanId=875	AND MinAge =40	AND MaxAge=49	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=938.15	WHERE PlanId=875	AND MinAge =40	AND MaxAge=49	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=687.97	WHERE PlanId=875	AND MinAge =40	AND MaxAge=49	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=588.47	WHERE PlanId=875	AND MinAge =50	AND MaxAge=59	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1198.74	WHERE PlanId=875	AND MinAge =50	AND MaxAge=59	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1013.48	WHERE PlanId=875	AND MinAge =50	AND MaxAge=59	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=796.01	WHERE PlanId=875	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1478.28	WHERE PlanId=875	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1387.32	WHERE PlanId=875	AND MinAge =60	AND MaxAge=64	AND MSRA=10000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=391.16	WHERE PlanId=876	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=782.34	WHERE PlanId=876	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=586.76	WHERE PlanId=876	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=488.96	WHERE PlanId=876	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=977.92	WHERE PlanId=876	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=733.44	WHERE PlanId=876	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=537.86	WHERE PlanId=876	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1100.16	WHERE PlanId=876	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=806.79	WHERE PlanId=876	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=690.1	WHERE PlanId=876	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1405.76	WHERE PlanId=876	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1188.5	WHERE PlanId=876	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=933.47	WHERE PlanId=876	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1733.59	WHERE PlanId=876	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1626.9	WHERE PlanId=876	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=390.31	WHERE PlanId=865	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=780.6	WHERE PlanId=865	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=585.45	WHERE PlanId=865	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=487.88	WHERE PlanId=865	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=975.75	WHERE PlanId=865	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=731.81	WHERE PlanId=865	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=536.66	WHERE PlanId=865	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1097.72	WHERE PlanId=865	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=805	    WHERE PlanId=865	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=688.57	WHERE PlanId=865	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1402.65	WHERE PlanId=865	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1185.87	WHERE PlanId=865	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=931.4	WHERE PlanId=865	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1729.74	WHERE PlanId=865	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1623.29	WHERE PlanId=865	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=359.4	WHERE PlanId=878	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=718.81	WHERE PlanId=878	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=539.1	WHERE PlanId=878	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=449.26	WHERE PlanId=878	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=898.5	WHERE PlanId=878	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=673.88	WHERE PlanId=878	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=494.17	WHERE PlanId=878	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1010.82	WHERE PlanId=878	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=741.27	WHERE PlanId=878	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=634.06	WHERE PlanId=878	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1291.61	WHERE PlanId=878	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1091.99	WHERE PlanId=878	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=857.67	WHERE PlanId=878	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1592.8	WHERE PlanId=878	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1494.79	WHERE PlanId=878	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=396.44	WHERE PlanId=879	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=792.89	WHERE PlanId=879	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=594.67	WHERE PlanId=879	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=495.56	WHERE PlanId=879	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=991.12	WHERE PlanId=879	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=743.34	WHERE PlanId=879	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=545.11	WHERE PlanId=879	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1114.99	WHERE PlanId=879	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=817.66	WHERE PlanId=879	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=699.41	WHERE PlanId=879	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1424.72	WHERE PlanId=879	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1204.53	WHERE PlanId=879	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=946.06	WHERE PlanId=879	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1756.97	WHERE PlanId=879	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1648.85	WHERE PlanId=879	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=388.68	WHERE PlanId=880	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=777.35	WHERE PlanId=880	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=583.02	WHERE PlanId=880	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=485.85	WHERE PlanId=880	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=971.68	WHERE PlanId=880	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=728.77	WHERE PlanId=880	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=534.43	WHERE PlanId=880	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1093.15	WHERE PlanId=880	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=801.64	WHERE PlanId=880	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=685.7	WHERE PlanId=880	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1396.79	WHERE PlanId=880	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1180.93	WHERE PlanId=880	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=927.52	WHERE PlanId=880	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1722.54	WHERE PlanId=880	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1616.53	WHERE PlanId=880	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=352.35	WHERE PlanId=881	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=704.71	WHERE PlanId=881	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=528.54	WHERE PlanId=881	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=440.45	WHERE PlanId=881	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=880.89	WHERE PlanId=881	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=660.66	WHERE PlanId=881	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=484.49	WHERE PlanId=881	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=991	    WHERE PlanId=881	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=726.74	WHERE PlanId=881	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=621.63	WHERE PlanId=881	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1266.28	WHERE PlanId=881	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1070.58	WHERE PlanId=881	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium=840.85	WHERE PlanId=881	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1561.57	WHERE PlanId=881	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1465.48	WHERE PlanId=881	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =336	WHERE PlanId=882	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =672	WHERE PlanId=882	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =504	WHERE PlanId=882	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =369.6	WHERE PlanId=882	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =756	WHERE PlanId=882	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =554.4	WHERE PlanId=882	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =498.96	WHERE PlanId=882	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =1016.4	WHERE PlanId=882	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =859.32	WHERE PlanId=882	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =676.2	WHERE PlanId=882	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =1255.8	WHERE PlanId=882	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =1178.52	WHERE PlanId=882	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =302.4	WHERE PlanId=883	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =630	WHERE PlanId=883	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =470.4	WHERE PlanId=883	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =336	WHERE PlanId=883	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =688.8	WHERE PlanId=883	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =520.8	WHERE PlanId=883	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =462	WHERE PlanId=883	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =924	WHERE PlanId=883	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =794.64	WHERE PlanId=883	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =579.6	WHERE PlanId=883	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =1159.2	WHERE PlanId=883	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =1062.6	WHERE PlanId=883	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =302.4	WHERE PlanId=884	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =604.8	WHERE PlanId=884	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =453.6	WHERE PlanId=884	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =332.64	WHERE PlanId=884	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =680.4	WHERE PlanId=884	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =498.96	WHERE PlanId=884	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =449.07	WHERE PlanId=884	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =914.76	WHERE PlanId=884	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =773.39	WHERE PlanId=884	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =608.58	WHERE PlanId=884	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =1130.22	WHERE PlanId=884	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =1060.67	WHERE PlanId=884	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =272.16	WHERE PlanId=885	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =567	WHERE PlanId=885	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =423.36	WHERE PlanId=885	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =302.4	WHERE PlanId=885	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =619.92	WHERE PlanId=885	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =468.72	WHERE PlanId=885	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =415.8	WHERE PlanId=885	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =831.6	WHERE PlanId=885	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =715.18	WHERE PlanId=885	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =521.64	WHERE PlanId=885	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =1043.28	WHERE PlanId=885	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =956.34	WHERE PlanId=885	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =151.2	WHERE PlanId=886	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =415.8	WHERE PlanId=886	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =302.4	WHERE PlanId=886	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =226.8	WHERE PlanId=886	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =453.6	WHERE PlanId=886	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =340.2	WHERE PlanId=886	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =332.64	WHERE PlanId=886	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =623.71	WHERE PlanId=886	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =582.12	WHERE PlanId=886	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =434.71	WHERE PlanId=886	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =869.4	WHERE PlanId=886	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =782.46	WHERE PlanId=886	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =168	WHERE PlanId=887	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =462	WHERE PlanId=887	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =336	WHERE PlanId=887	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =252	WHERE PlanId=887	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =504	WHERE PlanId=887	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =378	WHERE PlanId=887	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =369.6	WHERE PlanId=887	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =693	WHERE PlanId=887	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =646.8	WHERE PlanId=887	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =483	WHERE PlanId=887	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =966	WHERE PlanId=887	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =869.4	WHERE PlanId=887	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =319.2	WHERE PlanId=888	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =638.4	WHERE PlanId=888	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =478.8	WHERE PlanId=888	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =351.12	WHERE PlanId=888	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =718.2	WHERE PlanId=888	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =526.68	WHERE PlanId=888	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =474.01	WHERE PlanId=888	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =965.58	WHERE PlanId=888	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =816.36	WHERE PlanId=888	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =642.39	WHERE PlanId=888	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =1193.01	WHERE PlanId=888	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =1119.59	WHERE PlanId=888	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =287.28	WHERE PlanId=889	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =598.51	WHERE PlanId=889	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =446.88	WHERE PlanId=889	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =319.2	WHERE PlanId=889	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =654.36	WHERE PlanId=889	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =494.76	WHERE PlanId=889	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =438.91	WHERE PlanId=889	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =877.8	WHERE PlanId=889	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =754.91	WHERE PlanId=889	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5
UPDATE PlanPremium SET Premium =550.62	WHERE PlanId=889	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =1101.24	WHERE PlanId=889	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =1009.47	WHERE PlanId=889	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5

UPDATE Product SET ApplicationFee = 125.00 WHERE ProductId = 518	
UPDATE Product SET ApplicationFee = 125.00 WHERE ProductId = 519	
UPDATE Product SET ApplicationFee = 125.00 WHERE ProductId = 520	
UPDATE Product SET ApplicationFee = 125.00 WHERE ProductId = 521	
UPDATE Product SET ApplicationFee = 125.00 WHERE ProductId = 522	
UPDATE Product SET ApplicationFee = 125.00 WHERE ProductId = 523	
UPDATE Product SET ApplicationFee = 100.00 WHERE ProductId = 524	
UPDATE Product SET ApplicationFee = 100.00 WHERE ProductId = 525	
UPDATE Product SET ApplicationFee = 100.00 WHERE ProductId = 526	
UPDATE Product SET ApplicationFee = 100.00 WHERE ProductCode = 25582
UPDATE Product SET ApplicationFee = 100.00 WHERE ProductCode = 25583
UPDATE Product SET ApplicationFee = 100.00 WHERE ProductCode = 25584

UPDATE [Plan] SET Name = 'PrimaCare Basic CC' where PlanId = 156 
UPDATE [Plan] SET Name = 'PrimaCare Premium CC' where PlanId = 158

SET IDENTITY_INSERT [dbo].[Product] ON
GO
INSERT [dbo].[Product] 
([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) 
VALUES (527, N'CarePlus', 3, 1, CAST(N'2019-08-28T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/CarePlus_Logo.png', NULL, CAST(100.00 AS Decimal(5, 2)), 25593, N'https://aliera-documents.s3.amazonaws.com/CarePlus_SellSheet.pdf', NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, 62497, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), N'CarePlus Sell Sheet', 1, 0, N'CarePlus', 0)
GO
INSERT [dbo].[Product] 
([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) 
VALUES 
(529, N'PrimaCare Basic + CarePlus', 1, 1, CAST(N'2019-08-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(130.00 AS Decimal(5, 2)), 25589, NULL, NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, NULL, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[Product] 
([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) 
VALUES 
(530, N'PrimaCare Premium + CarePlus', 1, 1, CAST(N'2019-08-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(130.00 AS Decimal(5, 2)), 25590, NULL, NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, NULL, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[Product] 
([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) 
VALUES 
(531, N'PrimaCare Basic CC + CarePlus', 1, 1, CAST(N'2019-08-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(130.00 AS Decimal(5, 2)), 25591, NULL, NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, NULL, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), NULL, 1, 0, NULL, 0)
GO
INSERT [dbo].[Product] 
([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) 
VALUES 
(532, N'PrimaCare Premium CC + CarePlus', 1, 1, CAST(N'2019-08-28T00:00:00.000' AS DateTime), NULL, NULL, NULL, CAST(130.00 AS Decimal(5, 2)), 25592, NULL, NULL, 1, CAST(N'2019-08-23T15:22:55.000' AS DateTime), 1, NULL, NULL, CAST(0.00 AS Decimal(8, 2)), CAST(60.00 AS Decimal(8, 2)), NULL, 1, 0, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

-- Update Product Id
UPDATE [Plan] SET ProductId = 527 WHERE PlanID in (146,147,148,149,150,151)

--------[PlanPremium]----------------------------------------
UPDATE PlanPremium SET Premium=203.71	WHERE PlanId=867	AND MinAge=0	AND MaxAge=29	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=471.11	WHERE PlanId=867	AND MinAge=0	AND MaxAge=29	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=353.14	WHERE PlanId=867	AND MinAge=0	AND MaxAge=29	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=250.71	WHERE PlanId=867	AND MinAge=30	AND MaxAge=39	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=579.83	WHERE PlanId=867	AND MinAge=30	AND MaxAge=39	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=434.63	WHERE PlanId=867	AND MinAge=30	AND MaxAge=39	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=282.05	WHERE PlanId=867	AND MinAge=40	AND MaxAge=49	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=652.31	WHERE PlanId=867	AND MinAge=40	AND MaxAge=49	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=488.96	WHERE PlanId=867	AND MinAge=40	AND MaxAge=49	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=327.63	WHERE PlanId=867	AND MinAge=50	AND MaxAge=59	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=757.74	WHERE PlanId=867	AND MinAge=50	AND MaxAge=59	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=568.98	WHERE PlanId=867	AND MinAge=50	AND MaxAge=59	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=410.26	WHERE PlanId=867	AND MinAge=60	AND MaxAge=64	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=948.82	WHERE PlanId=867	AND MinAge=60	AND MaxAge=64	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=711.22	WHERE PlanId=867	AND MinAge=60	AND MaxAge=64	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=172.25	WHERE PlanId=870	AND MinAge=0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=431.79	WHERE PlanId=870	AND MinAge=0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=313.81	WHERE PlanId=870	AND MinAge=0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=211.99	WHERE PlanId=870	AND MinAge=30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=531.43	WHERE PlanId=870	AND MinAge=30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=386.23	WHERE PlanId=870	AND MinAge=30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=238.49	WHERE PlanId=870	AND MinAge=40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=597.86	WHERE PlanId=870	AND MinAge=40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=434.51	WHERE PlanId=870	AND MinAge=40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=277.03	WHERE PlanId=870	AND MinAge=50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=694.49	WHERE PlanId=870	AND MinAge=50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=504.74	WHERE PlanId=870	AND MinAge=50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=346.89	WHERE PlanId=870	AND MinAge=60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=869.62	WHERE PlanId=870	AND MinAge=60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=632.02	WHERE PlanId=870	AND MinAge=60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=274.47	WHERE PlanId=865	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=547.26	WHERE PlanId=865	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=395.36	WHERE PlanId=865	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=337.55	WHERE PlanId=865	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=673.26	WHERE PlanId=865	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=486.32	WHERE PlanId=865	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=379.61	WHERE PlanId=865	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=757.27	WHERE PlanId=865	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=546.96		WHERE PlanId=865	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=460.06	WHERE PlanId=865	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=921.40	WHERE PlanId=865	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=665.09	WHERE PlanId=865	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=568.66	WHERE PlanId=865	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1138.89	WHERE PlanId=865	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=822.09	WHERE PlanId=865	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=211.57	WHERE PlanId=871	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=463.25	WHERE PlanId=871	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=353.14	WHERE PlanId=871	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=260.39	WHERE PlanId=871	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=570.15	WHERE PlanId=871	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=434.63	WHERE PlanId=871	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=292.94	WHERE PlanId=871	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=641.42	WHERE PlanId=871	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=488.96   WHERE PlanId=871	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=340.29	WHERE PlanId=871	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=745.09	WHERE PlanId=871	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=567.98	WHERE PlanId=871	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=426.09	WHERE PlanId=871	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=932.97	WHERE PlanId=871	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=711.22	WHERE PlanId=871	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=321.68	WHERE PlanId=866	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=620.55	WHERE PlanId=866	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=447.52	WHERE PlanId=866	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=395.91	WHERE PlanId=866	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=763.75	WHERE PlanId=866	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=550.79	WHERE PlanId=866	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=445.40	WHERE PlanId=866	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=859.22	WHERE PlanId=866	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=619.64   WHERE PlanId=866	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=524.14	WHERE PlanId=866	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1011.11	WHERE PlanId=866	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=729.17	WHERE PlanId=866	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=647.86	WHERE PlanId=866	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1249.77	WHERE PlanId=866	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=901.29	WHERE PlanId=866	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=282.35	WHERE PlanId=869	AND MinAge =0	AND MaxAge=29	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=581.23	WHERE PlanId=869	AND MinAge =0	AND MaxAge=29	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=416.06	WHERE PlanId=869	AND MinAge =0	AND MaxAge=29	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=347.51	WHERE PlanId=869	AND MinAge =30	AND MaxAge=39	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=715.33	WHERE PlanId=869	AND MinAge =30	AND MaxAge=39	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=512.08	WHERE PlanId=869	AND MinAge =30	AND MaxAge=39	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=390.95	WHERE PlanId=869	AND MinAge =40	AND MaxAge=49	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=804.77	WHERE PlanId=869	AND MinAge =40	AND MaxAge=49	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=576.08   WHERE PlanId=869	AND MinAge =40	AND MaxAge=49	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=454.14	WHERE PlanId=869	AND MinAge =50	AND MaxAge=59	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=934.83	WHERE PlanId=869	AND MinAge =50	AND MaxAge=59	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=669.18	WHERE PlanId=869	AND MinAge =50	AND MaxAge=59	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=568.66	WHERE PlanId=869	AND MinAge =60	AND MaxAge=64	AND MSRA=7500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1170.57	WHERE PlanId=869	AND MinAge =60	AND MaxAge=64	AND MSRA=7500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=837.94	WHERE PlanId=869	AND MinAge =60	AND MaxAge=64	AND MSRA=7500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium =159.60	WHERE PlanId=888	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =438.91	WHERE PlanId=888	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =319.20	WHERE PlanId=888	AND MinAge =0	AND MaxAge=39	AND MSRA=1000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium =239.40	WHERE PlanId=888	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =478.80	WHERE PlanId=888	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =359.11	WHERE PlanId=888	AND MinAge =40	AND MaxAge=49	AND MSRA=1000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium =351.12	WHERE PlanId=888	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =658.36	WHERE PlanId=888	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =614.46	WHERE PlanId=888	AND MinAge =50	AND MaxAge=59	AND MSRA=1000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium =458.85	WHERE PlanId=888	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium =917.70	WHERE PlanId=888	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium =825.93	WHERE PlanId=888	AND MinAge =60	AND MaxAge=64	AND MSRA=1000	AND FamilyIndicator=5


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(346.94 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(520.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 0, 29, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(520.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(477.03 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(975.75 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(715.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(433.66 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(867.34 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (873, 30, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(650.51 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

UPDATE PlanPremium SET Premium=346.94	WHERE PlanId=873	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=693.86	WHERE PlanId=873	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=520.40	WHERE PlanId=873	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=433.66	WHERE PlanId=873	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=867.34	WHERE PlanId=873	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=650.51	WHERE PlanId=873	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=477.03	WHERE PlanId=873	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=975.75	WHERE PlanId=873	AND MinAge =40  AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=715.55	WHERE PlanId=873	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=612.06	WHERE PlanId=873	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1246.80	WHERE PlanId=873	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1054.11	WHERE PlanId=873	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=827.91	WHERE PlanId=873	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1537.55	WHERE PlanId=873	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1442.93	WHERE PlanId=873	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=433.66	WHERE PlanId=876	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=867.34	WHERE PlanId=876	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=650.51	WHERE PlanId=876	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=542.08	WHERE PlanId=876	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1084.17	WHERE PlanId=876	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=813.12	WHERE PlanId=876	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=596.29	WHERE PlanId=876	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1219.69	WHERE PlanId=876	AND MinAge =40  AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=894.44	WHERE PlanId=876	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=765.08	WHERE PlanId=876	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1558.49	WHERE PlanId=876	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1317.63	WHERE PlanId=876	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=1034.89	WHERE PlanId=876	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1921.94	WHERE PlanId=876	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1803.66	WHERE PlanId=876	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=469.80	WHERE PlanId=879	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=939.61	WHERE PlanId=879	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=704.71	WHERE PlanId=879	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=587.26	WHERE PlanId=879	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1174.52	WHERE PlanId=879	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=880.89	WHERE PlanId=879	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=645.98	WHERE PlanId=879	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1321.33	WHERE PlanId=879	AND MinAge =40  AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=968.97	WHERE PlanId=879	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=828.33	WHERE PlanId=879	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1688.37	WHERE PlanId=879	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1427.43	WHERE PlanId=879	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=1121.13	WHERE PlanId=879	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=2082.09	WHERE PlanId=879	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1953.97	WHERE PlanId=879	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=422.83	WHERE PlanId=880	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=845.65	WHERE PlanId=880	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=634.24	WHERE PlanId=880	AND MinAge =0	AND MaxAge=29	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=528.54	WHERE PlanId=880	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1057.06	WHERE PlanId=880	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=792.80	WHERE PlanId=880	AND MinAge =30	AND MaxAge=39	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=581.38	WHERE PlanId=880	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1189.20	WHERE PlanId=880	AND MinAge =40  AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=872.08	WHERE PlanId=880	AND MinAge =40	AND MaxAge=49	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=745.95	WHERE PlanId=880	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1519.53	WHERE PlanId=880	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1284.69	WHERE PlanId=880	AND MinAge =50	AND MaxAge=59	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=1009.02  WHERE PlanId=880	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1873.89	WHERE PlanId=880	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1758.57	WHERE PlanId=880	AND MinAge =60	AND MaxAge=64	AND MSRA=2500	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=390.31	WHERE PlanId=877	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=780.60	WHERE PlanId=877	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=585.45	WHERE PlanId=877	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=487.88	WHERE PlanId=877	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=975.75	WHERE PlanId=877	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=731.81	WHERE PlanId=877	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=536.66	WHERE PlanId=877	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1097.72	WHERE PlanId=877	AND MinAge =40  AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=805.00	WHERE PlanId=877	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=688.57	WHERE PlanId=877	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1402.65	WHERE PlanId=877	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1185.87	WHERE PlanId=877	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=931.40  WHERE PlanId=877	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1729.74	WHERE PlanId=877	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1623.29	WHERE PlanId=877	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=312.24	WHERE PlanId=874	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=624.48	WHERE PlanId=874	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=468.36	WHERE PlanId=874	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=390.31	WHERE PlanId=874	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=780.60	WHERE PlanId=874	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=585.45	WHERE PlanId=874	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=429.34	WHERE PlanId=874	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=878.17	WHERE PlanId=874	AND MinAge =40  AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=644.00	WHERE PlanId=874	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=550.86	WHERE PlanId=874	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1122.11	WHERE PlanId=874	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=948.69	WHERE PlanId=874	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=745.12  WHERE PlanId=874	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1383.80	WHERE PlanId=874	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1298.63	WHERE PlanId=874	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=260.20	WHERE PlanId=875	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=520.40	WHERE PlanId=875	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=390.31	WHERE PlanId=875	AND MinAge =0	AND MaxAge=29	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=325.25	WHERE PlanId=875	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=650.51	WHERE PlanId=875	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=487.88	WHERE PlanId=875	AND MinAge =30	AND MaxAge=39	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=357.77	WHERE PlanId=875	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=731.81	WHERE PlanId=875	AND MinAge =40  AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=536.33	WHERE PlanId=875	AND MinAge =40	AND MaxAge=49	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=459.05	WHERE PlanId=875	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=935.09	WHERE PlanId=875	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=790.58	WHERE PlanId=875	AND MinAge =50	AND MaxAge=59	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=620.94  WHERE PlanId=875	    AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1153.16	WHERE PlanId=875	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1082.20	WHERE PlanId=875	AND MinAge =60	AND MaxAge=64	AND MSRA=10000.00	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=325.25	WHERE PlanId=878	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=650.51	WHERE PlanId=878	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=487.88	WHERE PlanId=878	AND MinAge =0	AND MaxAge=29	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=406.57	WHERE PlanId=878	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=813.12	WHERE PlanId=878	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=609.85	WHERE PlanId=878	AND MinAge =30	AND MaxAge=39	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=447.22	WHERE PlanId=878	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=914.77	WHERE PlanId=878	AND MinAge =40  AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=670.83	WHERE PlanId=878	AND MinAge =40	AND MaxAge=49	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=573.81	WHERE PlanId=878	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=1168.87	WHERE PlanId=878	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=988.23	WHERE PlanId=878	AND MinAge =50	AND MaxAge=59	AND MSRA=5000	AND FamilyIndicator=5

UPDATE PlanPremium SET Premium=776.17  WHERE PlanId=878	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=1
UPDATE PlanPremium SET Premium=988.23	WHERE PlanId=878	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=3
UPDATE PlanPremium SET Premium=1352.75	WHERE PlanId=878	AND MinAge =60	AND MaxAge=64	AND MSRA=5000	AND FamilyIndicator=5

UPDATE product SET TobaccoUserFee = 0.00 WHERE ProductId = 528
UPDATE product SET canpaynextday = 0 WHERE productid = 527
UPDATE Product SET ApplicationFee = 100.00 WHERE ProductId = 527
UPDATE Product SET CanPayNextDay = 0 WHERE ProductId = 528

UPDATE Product SET TermDate = NULL, IsGroupProduct = 1 WHERE productcode in (19687,19688,19689,19691,19692,19693,21429,21430,21431,23695)

SET IDENTITY_INSERT [dbo].[Admin123MasterData] ON 
GO
DELETE FROM [dbo].[Admin123MasterData] WHERE [Admin123MasterDataId] IN (44, 45)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (44, N'Program_SRA', 25593)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (45, N'Catastrophic_MaxTerm', 25593)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (52, N'Program_SRA', 25582)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (53, N'Program_SRA', 25583)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (54, N'Program_SRA', 25584)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (55, N'policy_term', 25582)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (56, N'policy_term', 25583)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (57, N'policy_term', 25584)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (58, N'Program_SRA', 25576)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (59, N'Program_SRA', 25577)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (60, N'Program_SRA', 25578)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (61, N'AddCoverage', 25576)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (62, N'AddCoverage', 25577)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (63, N'AddCoverage', 25578)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (64, N'Program_SRA', 25579)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (65, N'Program_SRA', 25580)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (66, N'Program_SRA', 25581)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (67, N'Program_SRA', 25591)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (68, N'Catastrophic_MaxTerm', 25591)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (69, N'Program_SRA', 25592)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (70, N'Catastrophic_MaxTerm', 25592)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (71, N'Program_SRA', 25590)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (72, N'Catastrophic_MaxTerm', 25590)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (73, N'Program_SRA', 25589)
GO
INSERT [dbo].[Admin123MasterData] ([Admin123MasterDataId], [Key], [Value]) VALUES (74, N'Catastrophic_MaxTerm', 25589)
GO
SET IDENTITY_INSERT [dbo].[Admin123MasterData] OFF
GO

----------------------------------------------------------------------------------------------------------------------------------------

--PRODEDURE---
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE   procedure [dbo].[usp_populate_broker_staging]
as
begin
truncate table STG.[Broker];
Declare @CurrentDate DATETIME;
SELECT @CurrentDate = GETDATE();
insert into [STG].[Broker] ([Admin123Id], [ExternalId], [FirstName],[LastName],[Alias],[DateOfBirth],[PersonalNPN],[BrokerTypeId],[Company],[IsActive]
      ,[IsWebsiteActive],[Status] ,[TrainingDate],[CreatedBy],[CreatedOn],[TermDate], [TaxId]) 
select [Agent ID],[Agent ID],[First Name],[Last Name],[Agent Label],cast([DOB] as datetime),[Code],bt.[BrokerTypeId],[Company], case when af.[Active]='yes' then 1 else 0 end,
case when af.[Website Active] = 'yes' then 1 else 0 end, 

case when af.[Active]= 'No' then 'Inactive'
when af.[Active]='yes' and cast(af.[Training Date] as datetime) < @CurrentDate then 'Active'
when af.[Active]='yes' and (isdate(af.[Training Date])<>1 OR cast(af.[Training Date] as datetime) > @CurrentDate) then 'Pending'
end,
case when isdate(af.[Training Date])=1 then cast(af.[Training Date] as datetime) else null end,
1,cast([Created Date] as datetime), 
case when isdate(af.[Inactive Date])=1 then cast(af.[Inactive Date] as datetime) else null end,
case when af.[Tax Type] IN ('Tax ID', '') then af.[Tax ID] else '' end
FROM [LND].LZ_AGENTS af, POR.[BrokerType] bt
where af.[agent type] = bt.[BrokerTypeName];
 
update dbo.summary_log set [Source_Record_Count]=(select count(*)
FROM [LND].LZ_AGENTS af, POR.[BrokerType] bt
where af.[agent type] = bt.[BrokerTypeName]),[Dest_Insert_Count]=(select count(*) from STG.[Broker])
  where Job_Name='Brokers_Staging' and Job_ID=(select max(Job_ID) from dbo.summary_log where Job_Name='Brokers_Staging');
 
end

--- ReferenceDictionary_Update_POR-3798 -----------
GO
UPDATE [dbo].[MasterData] set Value = '<div class=''ref-dic-outer'' style=''width:100%; height:100%; padding:30px; display:flex; flex-direction: column; font-family: ''work sans''>
   <div  class=''ref-dic-inner'' style=''width:100%; padding: 15px 0px;''>
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Active Date</div>
      <div  class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>The date a member’s subscription becomes effective, and medical expenses become eligible for sharing requests.</div>
   </div>
   <div  class=''ref-dic-inner'' style=''width:100%; padding: 15px 0px;''>
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Administrative Fee</div>
      <div  class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>Where allowable by state law, a portion of the monthly recommended share amount that is paid to the program administrator.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Assigned Need</div>        
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Each month Sharing Members are assigned a specific need in which to share.  All members share in the payment of needs experienced by other members of the ministry.  Not all members may be asked to share every month, but every member is expected to share when they are assigned a need.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Available Cost Sharing</div>
      <div  class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>These are the services and sharing amounts each member (or family) may request sharing from the membership.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Co-expense</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>An amount to be paid by the member for certain services, as outlined in the Available Cost Sharing summary, regardless of whether or not the service is eligible for sharing.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Consult Fee</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>This is a fee, paid by the member, for specified medical services, as outlined in the Available Cost Sharing program summary.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Cost Sharing</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>The act of health care sharing ministry members sharing funds with other members for satisfying the cost of eligible medical expenses.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Dependents</div>
      <ul class=''ref-dic-ul''>
      <li  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Spouse</li>                 
      <li  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Unmarried dependent children up to and including the age of 19</li>
      <li  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Full Time Students – dependent children aged 20 through 26 who are full time students.</li>
      <li  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Disabled Dependents – unmarried children if they are unable to maintain a full-time occupation or be a full-time student because of illness or injury, physical or mental disability.</li>
      <ul>   
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Effective Date</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>The date a member’s participation becomes effective, and medical expenses become eligible for sharing requests.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Eligible Needs</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Medical expenses incurred by members of the health care sharing ministry for services outlined as eligible for sharing in the Available Cost Sharing program summary, after they have satisfied their Member Shared Responsibility Amount.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Enrollment Date</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Date a member submitted their request for participation in a health care sharing ministry.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>        
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Enrollment Form</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>Form (online or paper) that collects the information necessary to establish a sharing membership.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Facility</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>A physical location that provides medical services, including but not limited to, hospitals, clinics, urgent care clinics, ambulatory surgical centers, doctor’s offices.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Health Care Sharing Ministry (HCSM)</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>An organization that is exempt from taxation where members share a common set of ethical or religious beliefs and share medical expenses among members in accordance with these beliefs without regard to the state in which a member resides or is employed.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Lifetime Maximum Limit</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>The maximum amount shared for eligible needs over the course of an individual member''s lifetime.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Medical Claim Form</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Medical Claim Forms are used by providers to communicate the medical services delivered to members, and how much they billed for those services.  Use of medical claim forms do not imply insurance, any promise to pay, or guarantee.  They are processed by the third party administer for eligibility for sharing requests.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Medical Need</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>Refers to expenses related to medical care.  Health care sharing ministry members submit requests to the ministry to ask sharing from other members of the ministry.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Member</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>An individual (or family) who voluntarily participates in a health care sharing ministry, and who voluntarily shares funds with other members to satisfy medical needs.</div>
   </div>
   <div   class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Member Shared Responsibility Amount (MSRA)</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>The amount members must pay out of pocket before medical expenses become eligible for sharing with other members.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Out-of-pocket Maximum</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>The maximum amount shared prior to the per incident/lifetime maximum amount limitation.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Per Incident Maximum Limit</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>The maximum amount shared for eligible needs of one particular sickness, illness or accident of an individual member.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Program Year Maximum Limit</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>The maximum amount shared for eligible needs for one program year.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Providers</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>Professionals or facilities that provide medical care and services.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>
      <div  class=''ref-dic-subHead'' style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Sharing Request</div>
      <div   class=''ref-dic-des'' style=''font-size: 14px; color:#333; font-weight: 400;''>Medical claim forms are submitted to the ministry for processing as a sharing request.</div>
   </div>
   <div  class=''ref-dic-inner''  style=''width:100%; padding: 15px 0px;;''>     
      <div  class=''ref-dic-subHead''  style=''font-size: 20px; color:#084c7d; font-weight: 600;''>Statement of Beliefs</div>
      <div  class=''ref-dic-des''  style=''font-size: 14px; color:#333; font-weight: 400;''>Health care sharing ministry members share the same ethical or religious beliefs.  The ministry has a Statement of Beliefs that all members must accept and attest. </div>
   </div>
</div>'
where [Key] = 'ReferenceDictionary'
GO
------------------- POR-3926 -----------------------------------------------------------------
UPDATE [DBO].[Plan] set PlanRating = 1 where [Name] = 'TrinityCare Everyday Premium $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 2 where [Name] = 'CarePlus $ 5000 MSRA $250,000 Limit'
GO
UPDATE [DBO].[Plan] set PlanRating = 3 where [Name] = 'PrimaCare Premium'
GO
UPDATE [DBO].[Plan] set PlanRating = 4 where [Name] = 'PrimaCare Premium CC'
GO
UPDATE [DBO].[Plan] set PlanRating = 5 where [Name] = 'CareWell MSRA 2500'
GO
UPDATE [DBO].[Plan] set PlanRating = 6 where [Name] = 'InterimCare Premium $ 1000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 7 where [Name] = 'InterimCare Premium $ 1000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 8 where [Name] = 'InterimCare Premium $ 1000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 9 where [Name] = 'TrinityCare Everyday Premium $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 10 where [Name] = 'CarePlus $ 5000 MSRA $500,000 Limit'
GO
UPDATE [DBO].[Plan] set PlanRating = 11 where [Name] = 'Trinity Dental'
GO
UPDATE [DBO].[Plan] set PlanRating = 12 where [Name] = 'InterimCare Plus $ 1000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 13 where [Name] = 'InterimCare Plus $ 1000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 14 where [Name] = 'InterimCare Plus $ 1000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 15 where [Name] = 'TrinityCare Complete Value $ 2500 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 16 where [Name] = 'CarePlus $ 10000 MSRA $500,000 Limit'
GO
UPDATE [DBO].[Plan] set PlanRating = 17 where [Name] = 'PrimaCare Basic'
GO
UPDATE [DBO].[Plan] set PlanRating = 18 where [Name] = 'PrimaCare Basic CC'
GO
UPDATE [DBO].[Plan] set PlanRating = 19 where [Name] = 'InterimCare Premium $ 2500 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 20 where [Name] = 'InterimCare Premium $ 2500 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 21 where [Name] = 'InterimCare Premium $ 2500 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 22 where [Name] = 'TrinityCare Complete Plus $ 2500 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 23 where [Name] = 'CarePlus $ 10000 MSRA $150,000 Max'
GO
UPDATE [DBO].[Plan] set PlanRating = 24 where [Name] = 'InterimCare Value $ 1000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 25 where [Name] = 'InterimCare Value $ 1000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 26 where [Name] = 'InterimCare Value $ 1000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 27 where [Name] = 'TrinityCare Complete Premium $ 2500 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 28 where [Name] = 'CarePlus $ 5000 MSRA $150,000 Max'
GO
UPDATE [DBO].[Plan] set PlanRating = 29 where [Name] = 'InterimCare Plus $ 2500 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 30 where [Name] = 'InterimCare Plus $ 2500 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 31 where [Name] = 'InterimCare Plus $ 2500 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 32 where [Name] = 'TrinityCare Everyday Plus $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 33 where [Name] = 'CarePlus $ 10000 MSRA $250,000 Limit'
GO
UPDATE [DBO].[Plan] set PlanRating = 34 where [Name] = 'InterimCare Premium $ 5000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 35 where [Name] = 'InterimCare Premium $ 5000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 36 where [Name] = 'InterimCare Premium $ 5000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 37 where [Name] = 'InterimCare Plus $ 5000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 38 where [Name] = 'InterimCare Plus $ 5000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 39 where [Name] = 'InterimCare Plus $ 5000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 40 where [Name] = 'InterimCare Value $ 2500 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 41 where [Name] = 'InterimCare Value $ 2500 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 42 where [Name] = 'InterimCare Value $ 2500 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 43 where [Name] = 'TrinityCare Everyday Value $ 7500 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 44 where [Name] = 'InterimCare Value $ 5000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 45 where [Name] = 'InterimCare Value $ 5000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 46 where [Name] = 'InterimCare Value $ 5000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 47 where [Name] = 'TrinityCare Everyday Premium $ 7500 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 48 where [Name] = 'InterimCare Premium $ 10000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 49 where [Name] = 'InterimCare Premium $ 10000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 50 where [Name] = 'InterimCare Premium $ 10000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 51 where [Name] = 'InterimCare Plus $ 10000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 52 where [Name] = 'InterimCare Plus $ 10000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 53 where [Name] = 'InterimCare Plus $ 10000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 54 where [Name] = 'TrinityCare Complete Premium $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 55 where [Name] = 'InterimCare Value $ 10000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set PlanRating = 56 where [Name] = 'InterimCare Value $ 10000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 57 where [Name] = 'InterimCare Value $ 10000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set PlanRating = 58 where [Name] = 'TrinityCare Complete Value $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 59 where [Name] = 'TrinityCare Complete Plus $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 60 where [Name] = 'TrinityCare Everyday Plus $ 7500 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 61 where [Name] = 'TrinityCare Complete Plus $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 62 where [Name] = 'TrinityCare Complete Value $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 63 where [Name] = 'TrinityCare Everyday Value $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 64 where [Name] = 'TrinityCare Everyday Plus $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 65 where [Name] = 'TrinityCare Complete Premium $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set PlanRating = 66 where [Name] = 'TrinityCare Everyday Value $ 10000 MSRA'
GO


------------------------------------------------------------------------------------------------
-------------------- Category wise plan rate updating ------------------------------------------
-- Comprehensive Plans
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 1 where [Name] = 'TrinityCare Everyday Premium $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 2 where [Name] = 'TrinityCare Everyday Premium $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 3 where [Name] = 'TrinityCare Complete Value $ 2500 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 4 where [Name] = 'TrinityCare Complete Plus $ 2500 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 5 where [Name] = 'TrinityCare Complete Premium $ 2500 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 6 where [Name] = 'TrinityCare Everyday Plus $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 7 where [Name] = 'TrinityCare Everyday Value $ 7500 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 8 where [Name] = 'TrinityCare Everyday Premium $ 7500 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 9 where [Name] = 'TrinityCare Complete Premium $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 10 where [Name] = 'TrinityCare Complete Value $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 11 where [Name] = 'TrinityCare Complete Plus $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 12 where [Name] = 'TrinityCare Everyday Plus $ 7500 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 13 where [Name] = 'TrinityCare Complete Plus $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 14 where [Name] = 'TrinityCare Complete Value $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 15 where [Name] = 'TrinityCare Everyday Value $ 5000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 16 where [Name] = 'TrinityCare Everyday Plus $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 17 where [Name] = 'TrinityCare Complete Premium $ 10000 MSRA'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 18 where [Name] = 'TrinityCare Everyday Value $ 10000 MSRA'
GO

-- Catastrophic Plans
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 1 where [Name] = 'CarePlus $ 5000 MSRA $250,000 Limit'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 2 where [Name] = 'CarePlus $ 5000 MSRA $500,000 Limit'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 3 where [Name] = 'CarePlus $ 10000 MSRA $500,000 Limit'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 4 where [Name] = 'CarePlus $ 10000 MSRA $150,000 Max'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 5 where [Name] = 'CarePlus $ 5000 MSRA $150,000 Max'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 6 where [Name] = 'CarePlus $ 10000 MSRA $250,000 Limit'
GO

-- Supplemental Plans
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 1 where [Name] = 'Trinity Dental'
GO

-- Basic Care Plans
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 1 where [Name] = 'PrimaCare Basic'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 2 where [Name] = 'PrimaCare Premium'
GO

-- Basic Care Plans CC
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 1 where [Name] = 'PrimaCare Basic CC'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 2 where [Name] = 'PrimaCare Premium CC'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 3 where [Name] = 'CareWell MSRA 2500'
GO

-- Interim Plans
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 1 where [Name] = 'InterimCare Premium $ 1000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 2 where [Name] = 'InterimCare Plus $ 1000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 3 where [Name] = 'InterimCare Premium $ 2500 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 4 where [Name] = 'InterimCare Value $ 1000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 5 where [Name] = 'InterimCare Plus $ 2500 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 6 where [Name] = 'InterimCare Premium $ 5000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 7 where [Name] = 'InterimCare Plus $ 5000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 8 where [Name] = 'InterimCare Value $ 2500 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 9 where [Name] = 'InterimCare Value $ 5000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 10 where [Name] = 'InterimCare Premium $ 10000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 11 where [Name] = 'InterimCare Plus $ 10000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 12 where [Name] = 'InterimCare Value $ 10000 MSRA (181 Days +)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 13 where [Name] = 'InterimCare Premium $ 1000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 14 where [Name] = 'InterimCare Plus $ 1000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 15 where [Name] = 'InterimCare Premium $ 2500 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 16 where [Name] = 'InterimCare Value $ 1000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 17 where [Name] = 'InterimCare Plus $ 2500 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 18 where [Name] = 'InterimCare Premium $ 5000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 19 where [Name] = 'InterimCare Plus $ 5000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 20 where [Name] = 'InterimCare Value $ 2500 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 21 where [Name] = 'InterimCare Value $ 5000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 22 where [Name] = 'InterimCare Premium $ 10000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 23 where [Name] = 'InterimCare Plus $ 10000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 24 where [Name] = 'InterimCare Value $ 10000 MSRA (< 30 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 25 where [Name] = 'InterimCare Premium $ 1000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 26 where [Name] = 'InterimCare Plus $ 1000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 27 where [Name] = 'InterimCare Premium $ 2500 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 28 where [Name] = 'InterimCare Value $ 1000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 29 where [Name] = 'InterimCare Plus $ 2500 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 30 where [Name] = 'InterimCare Premium $ 5000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 31 where [Name] = 'InterimCare Plus $ 5000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 32 where [Name] = 'InterimCare Value $ 2500 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 33 where [Name] = 'InterimCare Value $ 5000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 34 where [Name] = 'InterimCare Premium $ 10000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 35 where [Name] = 'InterimCare Plus $ 10000 MSRA (31 Days – 180 Days)'
GO
UPDATE [DBO].[Plan] set CategoryWisePlanRating = 36 where [Name] = 'InterimCare Value $ 10000 MSRA (31 Days – 180 Days)'
GO

 --POR 539 - Documents and Forms
 
SET IDENTITY_INSERT [dbo].[DocumentCategory] ON 
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (40, N'ALIERA + TRINITY MEMBER GUIDES', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (29, N'ALIERA + UNITY MEMBER GUIDES', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (30, N'ALIERA MEMBER GUIDES', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (31, N'FORMS FOR AGENTS', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (32, N'FORMS FOR GROUPS', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (33, N'FORMS FOR MEMBERS', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (34, N'GENERAL INFORMATION', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (35, N'GROUP ALIERA SELL SHEETS', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (36, N'INDIVIDUAL ALIERA + TRINITY SELL SHEETS', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (37, N'INSTRUCTION SHEETS', 2, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (38, N'Section A', 3, 0)
GO
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [DocumentCategoryName], [DocumentCategoryType], [IsDeleted]) VALUES (39, N'Section B', 3, 0)
GO
SET IDENTITY_INSERT [dbo].[DocumentCategory] OFF
GO

SET IDENTITY_INSERT [dbo].[DocumentAndForm] ON 
GO
 	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (1, 40, N'AlieraCare_BSG_MemberGuide', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20TRINITY%20MEMBER%20GUIDES/AlieraCare_BSG_MemberGuide.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 59547)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (2, 40, N'AlieraCare_VPP_MemberGuide', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20TRINITY%20MEMBER%20GUIDES/AlieraCare_VPP_MemberGuide.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (3, 40, N'CarePlus_MemberGuide', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20TRINITY%20MEMBER%20GUIDES/CarePlus_MemberGuide.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (4, 40, N'CareSelect_MemberGuide', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20TRINITY%20MEMBER%20GUIDES/CareSelect_MemberGuide.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (5, 40, N'InterimCare_MemberGuide', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20TRINITY%20MEMBER%20GUIDES/InterimCare_MemberGuide.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (6, 40, N'PrimaCare_MemberGuide', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20TRINITY%20MEMBER%20GUIDES/PrimaCare_MemberGuide.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (7, 29, N'AlieraCare_BSG_2018edits_MEMBER GUIDE_0608_JCS_v2', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20UNITY%20MEMBER%20GUIDES/AlieraCare_BSG_2018edits_MEMBER%20GUIDE_0608_JCS_v2.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (8, 29, N'AlieraCare_MemberGuide_TDC_201801-31', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20UNITY%20MEMBER%20GUIDES/AlieraCare_MemberGuide_TDC_201801-31.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (9, 29, N'AlieraCare_VPP_201806-25_MEMBER GUIDE', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20UNITY%20MEMBER%20GUIDES/AlieraCare_VPP_201806-25_MEMBER%20GUIDE.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (10, 29, N'CarePlus Guidebook', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20UNITY%20MEMBER%20GUIDES/CarePlus%20Guidebook-.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (11, 29, N'HPass-PrimaCare_Member-Quick-Guide_201705-22', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20UNITY%20MEMBER%20GUIDES/HPass-PrimaCare_Member-Quick-Guide_201705-22.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (12, 29, N'InterimCare-Guidebook_ENG_DL201709-01', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20UNITY%20MEMBER%20GUIDES/InterimCare-Guidebook_ENG_DL201709-01.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (13, 29, N'UnityHS-BSG_MemberGuide_201801-31', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20%2B%20UNITY%20MEMBER%20GUIDES/UnityHS-BSG_MemberGuide_201801-31.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (14, 30, N'HealthPass-LF-SF_MemberGuide', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20MEMBER%20GUIDES/HealthPass-LF-SF_MemberGuide.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (15, 30, N'Spanish Quick_Guide_2016 9-2-16', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/ALIERA%20MEMBER%20GUIDES/Spanish%20Quick_Guide_2016%209-2-16.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (16, 31, N'ACHAuthorization_Form_Agent_012519_FINv2', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20AGENTS/ACHAuthorization_Form_Agent_012519_FINv2.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (17, 31, N'BusinessTransmittal_Form_Agent_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20AGENTS/BusinessTransmittal_Form_Agent_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (18, 31, N'HealthQuestionnaire_Form_MVP_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20AGENTS/HealthQuestionnaire_Form_MVP_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (19, 31, N'RequestforProposal_Form_MEC_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20AGENTS/RequestforProposal_Form_MEC_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (20, 31, N'RequestforProposal_Form_MVP_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20AGENTS/RequestforProposal_Form_MVP_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (21, 32, N'Census Upload Requirements', N'XLSX', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20GROUPS/Census%20Upload%20Requirements.xlsx', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (22, 32, N'CancellationRequest_Form_Group_041919_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20GROUPS/CancellationRequest_Form_Group_041919_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (23, 32, N'EmployerApplication_Form_Group_041719_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20GROUPS/EmployerApplication_Form_Group_041719_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (24, 32, N'EnrollmentApplication_Form_Group_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20GROUPS/EnrollmentApplication_Form_Group_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (25, 32, N'MVPNewCaseChecklist_Form_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20GROUPS/MVPNewCaseChecklist_Form_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (26, 32, N'PlanChange_Form_Group_041919_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20GROUPS/PlanChange_Form_Group_041919_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (27, 33, N'ACHAuthorization_Form_Member_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20MEMBERS/ACHAuthorization_Form_Member_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (28, 33, N'CancellationRequest_Form_Individual_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20MEMBERS/CancellationRequest_Form_Individual_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (29, 33, N'CreditCardAuthorization_Form_012519_FINv2', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20MEMBERS/CreditCardAuthorization_Form_012519_FINv2.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (30, 33, N'HealthAssessmentAttestation_Form_102618_FINv4', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20MEMBERS/HealthAssessmentAttestation_Form_102618_FINv4.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (31, 33, N'PlanChange_Form_Individual_102618_FINv4', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/FORMS%20FOR%20MEMBERS/PlanChange_Form_Individual_102618_FINv4.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (32, 34, N'2018 Professional Liability Insurance - EO_1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/GENERAL%20INFORMATION/2018%20Professional%20Liability%20Insurance%20-%20EO_1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (33, 34, N'Core 4 Management (English)', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/GENERAL%20INFORMATION/Core%204%20Management%20%28English%29.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (36, 35, N'CareSelect Sell Sheet', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/GROUP%20ALIERA%20SELL%20SHEETS/CareSelect%20Sell%20Sheet.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (37, 35, N'HealthPass Sell Sheet', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/GROUP%20ALIERA%20SELL%20SHEETS/HealthPass%20Sell%20Sheet.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (39, 36, N'AlieraCare Sell Sheet', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INDIVIDUAL%20ALIERA%20%2B%20TRINITY%20SELL%20SHEETS/AlieraCare%20Sell%20Sheet.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (40, 36, N'CarePlus Advantage Sell Sheet', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INDIVIDUAL%20ALIERA%20%2B%20TRINITY%20SELL%20SHEETS/CarePlus%20Advantage%20Sell%20Sheet.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (41, 36, N'InterimCare Sell Sheet', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INDIVIDUAL%20ALIERA%20%2B%20TRINITY%20SELL%20SHEETS/InterimCare%20Sell%20Sheet.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (42, 36, N'PrimaCare Sell Sheet', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INDIVIDUAL%20ALIERA%20%2B%20TRINITY%20SELL%20SHEETS/PrimaCare%20Sell%20Sheet.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (43, 36, N'Trinity Dental', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INDIVIDUAL%20ALIERA%20%2B%20TRINITY%20SELL%20SHEETS/Trinity%20Dental.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (44, 36, N'TrinityVision Sell Sheet', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INDIVIDUAL%20ALIERA%20%2B%20TRINITY%20SELL%20SHEETS/TrinityVision%20Sell%20Sheet.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (45, 37, N'Aliera-Healthcare_Notice-of-Privacy-Practices', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INSTRUCTION%20SHEETS/Aliera-Healthcare_Notice-of-Privacy-Practices.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (46, 37, N'FCT_Instruction-Sheet_201707-01', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INSTRUCTION%20SHEETS/FCT_Instruction-Sheet_201707-01.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (47, 37, N'FCT_Q-Instructions_SPA_201707-01T', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INSTRUCTION%20SHEETS/FCT_Q-Instructions_SPA_201707-01T.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (48, 37, N'Provider Required Services For All Members', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INSTRUCTION%20SHEETS/Provider%20Required%20Services%20For%20All%20Members.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (49, 37, N'RxValet_Information_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INSTRUCTION%20SHEETS/RxValet_Information_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (50, 37, N'Teladoc_Instructions_091018_FINv1', N'PDF', N'https://aliera-documents.s3.amazonaws.com/DocumentsAndForms/INSTRUCTION%20SHEETS/Teladoc_Instructions_091018_FINv1.pdf', CAST(N'2019-06-28T11:00:24.193' AS DateTime), 1, 0)	
	GO	
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (72, 38, N'CareSelect Member Guide', N'XLSX', N'Document 1', CAST(N'2019-05-30T13:35:58.840' AS DateTime), 2, 62666)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (73, 38, N'AlieraCare VPP Member Guide', N'DOCX', N'AlieraCare BSG Member Guide (English)', CAST(N'2019-05-21T13:35:58.840' AS DateTime), 2, 62696)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (74, 38, N'AlieraCare Member Guide (Teladoc) (English)', N'XLS', N'AlieraCare BSG Member Guide', CAST(N'2019-04-15T13:35:58.840' AS DateTime), 2, 62695)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (75, 39, N'CareSelect Member Guide', N'PDF', N'AlieraCare VPP Member Guide', CAST(N'2019-05-30T13:35:58.840' AS DateTime), 2, 4)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (76, 39, N'AlieraCare BSG Member Guide', N'PDF', N'AlieraCare Member Guide (Teladoc) (English)', CAST(N'2019-04-03T13:35:58.840' AS DateTime), 2, 5)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (77, 38, N'AlieraCare BSG Member Guide', N'xlsx', N'AlieraCare Member Guide', CAST(N'2019-01-01T13:35:58.840' AS DateTime), 2, 6)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (78, 38, N'CareSelect  Guide', N'PDF', N'AlieraCare Member Guide', CAST(N'2019-01-01T13:35:58.840' AS DateTime), 2, 7)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (79, 38, N'HealthPass LF SF Member Guide (Group-ENG)', N'PDF', N'HealthPass LF SF Member Guide', CAST(N'2019-02-26T13:35:58.840' AS DateTime), 2, 8)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (80, 38, N'Health Questionnaire - MVP', N'PDF', N'Health Questionnaire - MVPHealth Questionnaire - MVP', CAST(N'2019-03-31T13:35:58.840' AS DateTime), 2, 9)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (81, 38, N'Request For Proposal - Minimum Essential Coverage (MEC)', N'PDF', N'Request For Proposal - Minimum Essential Coverage', CAST(N'2019-05-30T13:35:58.840' AS DateTime), 2, 10)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (82, 38, N'Census Upload Requirements', N'PDF', N'Census Upload', CAST(N'2019-05-15T13:35:58.840' AS DateTime), 2, 11)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (83, 38, N'Request For Proposal - Minimum Value Plan (MVP)', N'PDF', N'Request For Proposal ', CAST(N'2019-01-30T13:35:58.840' AS DateTime), 2, 12)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (84, 38, N'Employer Group ', N'PDF', N'Employer Group Application', CAST(N'2019-05-30T13:35:58.840' AS DateTime), 2, 13)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (85, 38, N'Group Member Cancellation  Form', N'PDF', N'Group Member Cancellation Request Form', CAST(N'2019-02-10T13:35:58.840' AS DateTime), 2, 14)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (86, 38, N'Credit Card Authorization Form', N'PDF', N'Credit Card Authorization Form', CAST(N'2019-05-30T13:35:58.840' AS DateTime), 2, 15)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (87, 38, N'CareSelect  Sheet', N'PDF', N'CareSelect Sell Sheet', CAST(N'2019-05-30T13:35:58.840' AS DateTime), 2, 16)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (88, 39, N'AlieraOne Sell Sheet', N'PDF', N'AlieraOne Sell Sheet', CAST(N'2019-05-30T13:35:58.840' AS DateTime), 2, 17)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (89, 39, N'AlieraCare Sell Sheet', N'PDF', N'AlieraCare Sell Sheet', CAST(N'2019-05-10T13:35:58.840' AS DateTime), 2, 18)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (90, 38, N'CarePlus Advantage Sell Sheet', N'PDF', N'CarePlus Advantage Sell Sheet', CAST(N'2019-05-13T13:35:58.840' AS DateTime), 2, 19)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (91, 38, N'Trinity Vision', N'PDF', N'Trinity Vision', CAST(N'2019-04-30T13:35:58.840' AS DateTime), 2, 20)
	GO
	INSERT [dbo].[DocumentAndForm] ([DocumentAndFormId],  [DocumentCategoryId], [DocumentName], [Ext], [Path], [LastUpdatedOn], [PortalId], [DocumentId]) VALUES (92, 38, N'FirstCall Telemedicine Instructions Spanish', N'PDF', N'FirstCall Telemedicine Instructions Spanish', CAST(N'2019-05-30T13:35:58.840' AS DateTime), 2, 21)
	GO
	SET IDENTITY_INSERT [dbo].[DocumentAndForm] OFF 
GO
	
  --End POR 539 - Documents and Forms 

/***Seed Data for Product Table new columns***/
Update [DBO].[Product] set PCP = '$50 consult fee',UrgentCare = '$100 consult fee',Speciality = '$125 consult fee',ER = '$500 consult fee' where [ProductId] in (12,54)
GO
Update [DBO].[Product] set PCP = '$35 consult fee',UrgentCare = '$75 consult fee',Speciality = '$75 consult fee',ER = '$300 consult fee' where [ProductId] in (11,462)
GO
Update [DBO].[Product] set PCP = '$20 consult fee',UrgentCare = '$75 consult fee',Speciality = '$75 consult fee',ER = '$150 consult fee' where [ProductId] in (10,441)
GO
Update [DBO].[Product] set PCP = '$50 consult fee',UrgentCare = '$100 consult fee',Speciality = '$125 consult fee',ER = '$500 consult fee' where [ProductId] in (521)
GO
Update [DBO].[Product] set PCP = '$35 consult fee',UrgentCare = '$75 consult fee',Speciality = '$75 consult fee',ER = '$300 consult fee' where [ProductId] in (522)
GO
Update [DBO].[Product] set PCP = '$20 consult fee',UrgentCare = '$75 consult fee',Speciality = '$75 consult fee',ER = '$150 consult fee' where [ProductId] in (523)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Not eligible',Speciality = 'Call for eligibility',ER = 'Call for eligibility' where [ProductId] in (27,526)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Call for eligibility',ER = 'Call for eligibility' where [ProductId] in (26,525)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Call for eligibility',ER = 'Call for eligibility' where [ProductId] in (25,524)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Not eligible',Speciality = 'Not eligible',ER = 'Call for eligibility' where [ProductId] in (1,342)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = '$500 consult fee' where [ProductId] in (5,367)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Call for eligibility',ER = '$300 consult fee' where [ProductId] in (6,507)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Not eligible',Speciality = 'Not eligible',ER = 'Call for eligibility' where [ProductId] in (518)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = '$500 consult fee' where [ProductId] in (519)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Call for eligibility',ER = '$300 consult fee' where [ProductId] in (520)
GO
Update [DBO].[Product] set PCP = 'Not eligible',UrgentCare = 'Not eligible',Speciality = 'Not eligible',ER = '$300 consult fee' where [ProductId] in (406)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Call for eligibility',ER = 'Call for eligibility' where [ProductId] in (379)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = 'Call for eligibility' where [ProductId] in (245)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = 'Not eligible' where [ProductId] in (49)
GO
Update [DBO].[Product] set PCP = '$25 consult fee',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = 'Not eligible' where [ProductId] in (50)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = '$300 consult fee' where [ProductId] in (529)
GO
Update [DBO].[Product] set PCP = '$25 consult fee',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = '$300 consult fee' where [ProductId] in (530)
GO

---Interim Care Plans-----
SET IDENTITY_INSERT [dbo].[Plan] ON
GO
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(891,	525,	'InterimCare Plus $ 2500 MSRA (< 30 Days)',	13,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'< 30 Days',	NULL,	14	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(892,	525,	'InterimCare Plus $ 2500 MSRA (181 Days +)',	12,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'181 Days +',	NULL,	2	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(893,	525,	'InterimCare Plus $ 2500 MSRA (31 Days – 180 Days)',	14,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'31 Days - 180 Days',	NULL,	26	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(894,	524,	'InterimCare Premium $ 2500 MSRA (< 30 Days)',	7,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'< 30 Days',	NULL,	13	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(895,	524,	'InterimCare Premium $ 2500 MSRA (181 Days +)',	6,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'181 Days +',	NULL,	1	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(896,	524,	'InterimCare Premium $ 2500 MSRA (31 Days – 180 Days)',	8,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'31 Days - 180 Days',	NULL,	25	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(897,	526,	'InterimCare Value $ 2500 MSRA (< 30 Days)',	25,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'< 30 Days',	NULL,	16	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(898,	526,	'InterimCare Value $ 2500 MSRA (181 Days +)',	24,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'181 Days +',	NULL,	4	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(899,	526,	'InterimCare Value $ 2500 MSRA (31 Days – 180 Days)',	26,	1,	2,	8/23/2019,	NULL,	NULL,	2500,	NULL,	'31 Days - 180 Days',	NULL,	28	)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(900,	525,	'InterimCare Plus $ 5000 MSRA (< 30 Days)',	13,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'< 30 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(901,	525,	'InterimCare Plus $ 5000 MSRA (181 Days +)',	12,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'181 Days +',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(902,	525,	'InterimCare Plus $ 5000 MSRA (31 Days – 180 Days)',	14,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'31 Days - 180 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(903,	524,	'InterimCare Premium $ 5000 MSRA (< 30 Days)',	7,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'< 30 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(904,	524,	'InterimCare Premium $ 5000 MSRA (181 Days +)',	6,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'181 Days +',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(905,	524,	'InterimCare Premium $ 5000 MSRA (31 Days – 180 Days)',	8,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'31 Days - 180 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(906,	526,	'InterimCare Value $ 5000 MSRA (< 30 Days)',	25,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'< 30 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(907,	526,	'InterimCare Value $ 5000 MSRA (181 Days +)',	24,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'181 Days +',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(908,	526,	'InterimCare Value $ 5000 MSRA (31 Days – 180 Days)',	26,	1,	2,	8/23/2019,	NULL,	NULL,	5000,	NULL,	'31 Days - 180 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(909,	525,	'InterimCare Plus $ 10000 MSRA (< 30 Days)',	13,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'< 30 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(910,	525,	'InterimCare Plus $ 10000 MSRA (181 Days +)',	12,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'181 Days +',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(911,	525,	'InterimCare Plus $ 10000 MSRA (31 Days – 180 Days)',	14,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'31 Days - 180 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(912,	524,	'InterimCare Premium $ 10000 MSRA (< 30 Days)',	7,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'< 30 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(913,	524,	'InterimCare Premium $ 10000 MSRA (181 Days +)',	6,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'181 Days +',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(914,	524,	'InterimCare Premium $ 10000 MSRA (31 Days – 180 Days)',	8,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'31 Days - 180 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(915,	526,	'InterimCare Value $ 10000 MSRA (< 30 Days)',	25,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'< 30 Days',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(916,	526,	'InterimCare Value $ 10000 MSRA (181 Days +)',	24,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'181 Days +',	NULL, 1)
INSERT INTO [Plan] (PlanId,	ProductId,	Name,	PlanRating,	Type,	CreatedBy,	CreatedOn,	ModifiedBy,	ModifiedOn,	MSRA,	CoverageLimit,	CoverageDuration,	RelatedPlanIds,	CategoryWisePlanRating	)
VALUES(917,	526,	'InterimCare Value $ 10000 MSRA (31 Days – 180 Days)',	26,	1,	2,	8/23/2019,	NULL,	NULL,	10000,	NULL,	'31 Days - 180 Days',	NULL, 1)		
SET IDENTITY_INSERT [dbo].[Plan] OFF
GO

UPDATE PlanBenefit SET PlanId = 909 WHERE PlanID = 48
UPDATE PlanBenefit SET PlanId = 910 WHERE PlanID = 72
UPDATE PlanBenefit SET PlanId = 911 WHERE PlanID = 60
UPDATE PlanBenefit SET PlanId = 891 WHERE PlanID = 42
UPDATE PlanBenefit SET PlanId = 892 WHERE PlanID = 66
UPDATE PlanBenefit SET PlanId = 893 WHERE PlanID = 54
UPDATE PlanBenefit SET PlanId = 900 WHERE PlanID = 45
UPDATE PlanBenefit SET PlanId = 901 WHERE PlanID = 69
UPDATE PlanBenefit SET PlanId = 902 WHERE PlanID = 57
UPDATE PlanBenefit SET PlanId = 912 WHERE PlanID = 47
UPDATE PlanBenefit SET PlanId = 913 WHERE PlanID = 71
UPDATE PlanBenefit SET PlanId = 914 WHERE PlanID = 59
UPDATE PlanBenefit SET PlanId = 894 WHERE PlanID = 41
UPDATE PlanBenefit SET PlanId = 895 WHERE PlanID = 65
UPDATE PlanBenefit SET PlanId = 896 WHERE PlanID = 53
UPDATE PlanBenefit SET PlanId = 903 WHERE PlanID = 44
UPDATE PlanBenefit SET PlanId = 904 WHERE PlanID = 68
UPDATE PlanBenefit SET PlanId = 905 WHERE PlanID = 56
UPDATE PlanBenefit SET PlanId = 897 WHERE PlanID = 43
UPDATE PlanBenefit SET PlanId = 898 WHERE PlanID = 67
UPDATE PlanBenefit SET PlanId = 899 WHERE PlanID = 55
UPDATE PlanBenefit SET PlanId = 906 WHERE PlanID = 46
UPDATE PlanBenefit SET PlanId = 907 WHERE PlanID = 70
UPDATE PlanBenefit SET PlanId = 908 WHERE PlanID = 58
UPDATE PlanBenefit SET PlanId = 915 WHERE PlanID = 49
UPDATE PlanBenefit SET PlanId = 916 WHERE PlanID = 73
UPDATE PlanBenefit SET PlanId = 917 WHERE PlanID = 61


SET IDENTITY_INSERT [dbo].[PlanPackage] ON
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (105, 891, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (106, 892, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (107, 893, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (108, 894, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (109, 895, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (110, 896, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (111, 897, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (112, 898, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (113, 899, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (114, 900, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (115, 901, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (116, 902, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (117, 903, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (118, 904, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (119, 905, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (120, 906, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (121, 907, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (122, 908, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (123, 909, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (124, 910, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (125, 911, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (129, 915, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (130, 916, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (131, 917, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (132, 864, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (133, 865, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanPackageId], [PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (134, 866, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[PlanPackage] OFF
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(272.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(544.32 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(408.24 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(299.37 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(612.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(449.06 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(404.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(823.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(696.05 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(547.72 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(1017.20 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (894, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(954.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
-------Plus----------------------------------------------------------------------------------------------------------

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(244.94 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(510.31 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(381.03 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(272.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(557.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(421.85 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(374.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(748.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(643.65 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(469.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(938.95 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (891, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(860.71 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

---Value-----

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(136.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(374.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(272.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(204.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(408.24 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(306.18 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(299.38 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(561.34 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(523.91 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(391.23 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(782.46 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (897, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(704.21 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(226.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(483.84 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(362.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(249.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(544.32 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(399.17 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(336.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(731.81 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(618.71 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(456.45 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(904.18 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (903, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(848.54 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(204.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(453.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(338.69 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(226.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(495.94 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(374.97 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(311.86 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(665.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(572.13 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(391.23 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(834.62 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (900, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(765.07 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(113.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(332.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(241.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(170.11 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(362.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(272.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(249.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(498.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(465.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(326.04 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(695.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (906, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(625.97 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(163.29 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(340.20 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(254.02 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(181.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(371.95 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(281.23 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(249.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(498.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(429.10 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(312.98 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(625.97 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (909, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(573.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(90.72 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(249.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(181.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(136.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(272.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(204.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(199.58 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(374.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(349.27 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(260.82 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(521.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (915, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(469.48 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(287.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(574.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(430.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(316.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(646.38 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(474.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(426.61 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(869.02 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(734.71 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(578.15 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(1073.71 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (896, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(1007.63 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(258.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(538.65 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(402.19 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(287.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(588.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(445.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(395.02 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(790.02 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(679.42 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(495.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(991.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (893, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(908.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(143.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(395.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(287.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(215.46 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(430.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(323.19 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(316.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(592.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(553.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(412.98 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(825.93 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (899, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(743.34 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(255.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(510.72 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(383.04 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(280.89 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(574.56 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(421.34 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(379.21 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(772.46 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(653.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(513.91 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(954.91 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (905, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(895.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(229.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(478.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(357.51 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(255.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(523.49 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(395.81 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(351.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(702.24 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(603.93 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(440.50 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(880.99 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (902, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(807.58 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(127.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(351.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(255.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(191.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(383.04 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(287.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(280.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(526.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(491.57 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(367.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(734.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (908, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(660.74 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(172.37 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(430.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(321.75 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(191.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(471.14 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(356.23 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(263.34 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(632.02 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(543.53 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(330.37 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(792.90 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (911, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(726.82 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(95.76 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(316.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(229.83 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(143.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(344.74 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(258.55 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(210.67 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(474.01 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(442.41 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(275.31 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(660.74 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (917, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(594.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(217.72 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(453.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(338.69 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(241.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(495.94 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(374.97 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(332.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(665.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(572.13 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(417.31 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(834.62 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (910, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(765.07 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(120.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(332.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 0, 39, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(241.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(181.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(362.88 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 40, 49, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(272.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(266.11 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(498.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 50, 59, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(465.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 1, CAST(347.76 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 3, CAST(695.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (916, 60, 64, CAST(10000.00 AS Decimal(8, 2)), 5, CAST(625.97 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(302.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(604.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(453.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(332.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(680.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(498.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(449.06 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(914.76 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(773.39 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(608.58 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(1130.22 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (895, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(1060.67 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(272.16 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(567 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(423.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(302.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(619.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(468.72 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(415.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(831.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(715.18 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(521.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(1043.28 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (892, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(956.34 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(151.20 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(415.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 0, 39, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(302.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(226.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(453.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 40, 49, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(340.20 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(332.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(623.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 50, 59, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(582.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 1, CAST(434.70 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 3, CAST(869.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (898, 60, 64, CAST(2500.00 AS Decimal(8, 2)), 5, CAST(782.46 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(268.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(537.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(403.20 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(295.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(604.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(443.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(399.17 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(813.12 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(687.46 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(540.96 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(1004.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (904, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(942.82 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(241.92 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(504 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(376.32 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(268.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(551.04 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(416.64 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(369.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(739.20 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(635.71 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(463.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(927.36 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (901, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(850.08 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO


INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(134.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(369.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 0, 39, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(268.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(201.60 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(403.20 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 40, 49, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(302.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(295.68 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(554.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 50, 59, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(517.44 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (26, N'Physical ID card request for member {firstname} {lastname} - {subscriberOrDependentExternalId}', N'Hi Team, <br/> <br/>This is a system a generated email to notify that member - {subscriberExternalId} has raised a request for the physical ID card for {firstname} {lastname} - {subscriberOrDependentExternalId} <br/><br/>Please review the request to take the fulfilment process ahead.<br/><br/>Subscriber’s Member ID = {subscriberExternalId} <br/>Physical ID card required for = {subscriberOrDependent} <br/>{subscriberOrDependent} Details = {firstname} {lastname} - {subscriberOrDependentExternalId} <br/><br/>Thank you.', N'noreply-portal@alieracompanies.com')
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (27, N'Broker Portal Login Access', N'<html><body><p>Hello {FirstName} {LastName},</p><p>A user account has been created for you to access the Broker Portal. You are required to complete the verification process before logging in. Please follow the below mentioned steps to complete verification process.</p><p><b>Step 1:</b> To complete the verification process, please click the below URL and provide details as follows: <br/>User name = User name mentioned below<br/> Date of Birth = Broker’s date of birth <br/> Personal NPN = Broker’s NPN <br/><a href="{verifylink}">{verifylink}</a></p><p><b>Step 2:</b> Upon successfully completion of verification, to login into Broker portal please click below URL link and input login credentials.</p> <p>Portal URL: <a href="{content}">{content}</a><br/>Username: {username} <br/> Password: Use the password generated set by you during verification process</p><p>Thank You<br/>Ensurian</p></body></html>', N'noreply-portal@ensurian.com')
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (28, N'Verify Broker Link', N'<html><body><p>Hello {FirstName} {LastName},</p> <p>Per your request, please use the following link to complete broker verification process for your broker portal access. If you did not request the broker verification link or if you need further assistance, please call our Broker Support Team: <em><u>844-892-9994</u></em></p><p>Verify Broker Link <a href="{content}">click here</a></p><p>Thank You<br/>Ensurian</p></body></html>', N'noreply-portal@ensurian.com')
GO
INSERT [dbo].[Notification] ([Type], [Subject], [Content], [From]) VALUES (29, N' Admin module Login Access', N'<html><body><p>Hello {FirstName} {LastName},</p><p>A user account has been created for you to access the Aliera admin portal. To login into Aliera admin portal please click below URL link and input login credentials.</p><p>Portal URL: <a href="{content}">{content}</a><br/>Username: {username}<br/>Temporary password: {password}</p><p>Thank You<br/>Admin<br/>Aliera admin portal.</p></body></html>', N'noreply-portal@ensurian.com')
GO
--MP-795, MP-776 Member Id Cards and Payment Receipts Templates
SET IDENTITY_INSERT [dbo].[Templates] ON 

INSERT [dbo].[Templates] ([Id], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'First Health 9.1.2019 ID Card Template - 8.19.2019', 1, CAST(N'2019-08-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Templates] ([Id], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'MultiPlan PHCS 9.1.2019 ID Card Template - 8.19.2019', 1, CAST(N'2019-08-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Templates] ([Id], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'MultiPlan Specific Services 9.1.2019 ID Card Template - 8.19.2019', 1, CAST(N'2019-08-22T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Templates] ([Id], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'PaymentReceipt', 1, CAST(N'2019-08-27T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Templates] OFF
SET IDENTITY_INSERT [dbo].[TemplateDetails] ON 

INSERT [dbo].[TemplateDetails] ([TemplateDetailId], [TemplateId], [LanguageId], [ProductId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Html], [ProviderNetworkId]) VALUES (1, 1, 1, N'1,3,4,408,527', 1, CAST(N'2019-08-22T00:00:00.000' AS DateTime), NULL, NULL, N'<!--Card Front-->

<table border="0" cellpadding="0" cellspacing="0" class="idcard" width="650px" ; style="margin:0 auto">
    <tbody>
        <tr>
            <td style="background-color: #6BA43A; padding: 2px; max-width: 200px;">
                <table border="0" cellpadding="0" cellspacing="0" height="321px;" width="100%">
                    <tbody>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-family: Arial, Helvetica, sans-serif;" width="100%">
                                    <tbody>
                                        <tr>
                                            <td style="height: 60px; width:60%;">
                                                <img alt="" src="https://www.alierahealth.com/media/1246/ProviderNetworks/FirstHealth_Logo_40h.png" style="width: 129px; height: 40px; border: 0px; margin-top: 12px;" />
                                            </td>
                                            <td style="font-size: 9px; height: 60px;">
                                                Effective Date: $effectiveshort<br />
                                                MSRA:&nbsp;$CQProgramMSRA
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" height="5" style="height: 2px; font-size: 0px; mso-line-height-rule: exactly; line-height: 2px; ">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:10px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                    <tbody>
                                        <tr valign="top">
                                            <td>
                                                Program ID&nbsp;:$productadminlabel
                                                Primary&nbsp;:<table style="padding-left: 58px;margin-top: -13px;font-size: 10px;"><tbody><tr><td style="line-height: 8px;">&nbsp;$fullname</td></tr></tbody></table>
                                                Primary ID&nbsp;:<table style="padding-left: 58px;margin-top: -13px;font-size: 10px;"><tbody><tr><td style="line-height: 8px;">&nbsp;$externalid</td></tr></tbody></table>
                                                Dependents&nbsp;:$activedependentname
                                            </td>
                                            <td style="width: 8%">
                                                PCP&nbsp;:<br />
                                                UrgCare&nbsp;:<br />
                                                Spec&nbsp;:<br />
                                                ER&nbsp;:
                                            </td>
                                            <td>
                                                $PCP<br />
                                                $UrgentCare<br />
                                                $Speciality<br />
                                                $ER
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" height="10" style="height: 10px; font-size: 0px; mso-line-height-rule: exactly; line-height: 10px; background-color: #ffffff;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 9px;" width="100%">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                                    <tbody>
                                                        <tr valign="top">
                                                            <td>This participant and any listed dependents are Members of a Health Care Sharing Ministry recognized pursuant to 26 USC &sect; 5000A(d)(2)(B) that does not engage in the business of insurance. Members make monthly contributions that are used to voluntarily pay each other&rsquo;s medical expenses based on a shared set of ethical or religious beliefs.</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                                    <tbody>
                                                        <tr valign="top">
                                                            <td>
                                                                <b>*MSRA</b> Member Shared Responsibility Amount
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td style="text-align: center;">
                                                                <b>This is NOT insurance.</b>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
<!--END Card Front-->
</td>
</tr>
<tr>
    <td align="center" height="30" style="height: 30px; font-size: 0px; mso-line-height-rule: exactly; line-height: 30px; ">&nbsp;</td>
</tr>
<tr>
    <td align="center" class="pad-content" style="mso-line-height-rule: exactly; font-family: Arial, Helvetica, sans-serif; text-align: left; padding-left: 20px; padding-right: 20px; padding-top: 20px;">
        <!--Card Back-->
        <!--Card -->
        <table border="0" cellpadding="0" cellspacing="0" class="idcard" width="650px" style="margin:0 auto">
            <tbody>
                <tr>
                    <td style="background-color: #6BA43A; padding: 2px;">
                        <!-- ID CARD-->
                        <table border="0" cellpadding="0" cellspacing="0" class="idcard" height="321px;" width="100%">
                            <tbody>
                                <tr>
                                    <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                        <table border="0" cellpadding="0" cellspacing="0" class="idcard" style="font-family: Arial, Helvetica, sans-serif; font-size: 9px;" width="100%">
                                            <tbody>
                                                <tr valign="top">
                                                    <!-- CARD TOP 1st COLUMN-->
                                                    <td style="font-size: 9px; padding-top: 20px;">
                                                        <b>Provider Services</b><br />
                                                        To find a provider, visit<br />
                                                        <a href="TrinityHealthShare.org/network/" style="text-decoration: none; font-weight: bold; color: #6BA43A;">TrinityHealthShare.org/network/</a><br />
                                                        Select the network logo that<br />
                                                        coincides with your program.
                                                    </td>
                                                    <!-- END OF CARD TOP 1st COLUMN-->
                                                    <!-- CARD TOP 2nd COLUMN-->
                                                    <td style="font-size: 9px; padding-top: 20px;">
                                                        <b>Pharmacy Services</b><br />
                                                        <a href="https://www.myrxvalet.com" style="color: #6BA43A; text-decoration: none; font-weight: bold;">MyRxValet.com</a><br />
                                                        Group&nbsp;: 2504<br />
                                                        BIN #&nbsp;: 006053<br />
                                                        PCN&nbsp;: SS
                                                    </td>
                                                    <!-- END OF CARD TOP 2nd COLUMN-->
                                                    <!-- CARD TOP 3rd COLUMN-->
                                                    <td style="font-size: 9px; text-align: right;">
                                                        <img src="https://sftpgateway-i-0fe429cd8ee297f56.s3.amazonaws.com/live-campaign-assets/gen/trinity/trinity-healthshare-logo-gold.png" style="margin-bottom: 15px;" width="165px;" /><br />
                                                        Member Services&nbsp;: <b>844-834-3456</b><br />
                                                        Telemedicine&nbsp;: <b>866-920-3627</b><br />
                                                        Pharmacy&nbsp;: <b>855-798-2538</b><br />
                                                        Eligibility&nbsp;: <b>844-457-7726</b>
                                                    </td>
                                                    <!-- END OF CARD TOP 3rd COLUMN-->
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" height="10" style="height: 10px; font-size: 0px; mso-line-height-rule: exactly; line-height: 10px; background-color: #ffffff;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" height="2" style="height: 1px; font-size: 0px; mso-line-height-rule: exactly; line-height: 2px; padding-bottom: 0px; margin-bottom: 0px;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="background-color: #ffffff; padding-left: 16px; padding-top: 0px;">
                                        <table border="0" cellpadding="0" cellspacing="0" style="font-size: 9px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td style="background-color: #ffffff; width: 50%;">
                                                        <table border="0" cellpadding="0" cellspacing="0" style="font-size: 9px;" width="100%">
                                                            <tbody>
                                                                <tr valign="top">
                                                                    <td style="background-color: #6BA43A; font-size: 0px;" width="1">&nbsp;</td>
                                                                    <!-- CARD BOTTOM 1st COLUMN-->
                                                                    <td style="padding-left: 10px; font-size: 9px;">
                                                                        PROVIDERS SHOULD VERIFY<br />
                                                                        ELIGIBILITY BEFORE TREATMENT<br />
                                                                        OR SERVICE <b>844-457-7726</b>
                                                                    </td>
                                                                    <!-- END OF CARD BOTTOM 1st COLUMN-->
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                    <!-- CARD BOTTOM 2nd COLUMN-->
                                                    <td style="background-color: #6BA43A; color: #ffffff; height: 140px; width: 50%; padding-left: 20px; font-size: 9px;">
                                                        <b>Completed Claims Forms&nbsp;:</b><br />
                                                        <br />
                                                        Trinity HealthShare<br />
                                                        P.O. Box 981810<br />
                                                        Lubbock, TX 79490-6818<br />
                                                        or EDI # &nbsp;: ALH01 | 844-646-1504
                                                    </td>
                                                    <!-- END OF CARD BOTTOM 2nd COLUMN-->
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align: center; padding-right: 16px;">
                                                        <b>This is NOT insurance.</b>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" height="1" style="height: 1px; font-size: 0px; mso-line-height-rule: exactly; line-height: 1px; ">&nbsp;</td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <!--END of Card -->
        <!--END Card Back-->
    </td>
', 5)
INSERT [dbo].[TemplateDetails] ([TemplateDetailId], [TemplateId], [LanguageId], [ProductId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Html], [ProviderNetworkId]) VALUES (2, 3, 1, N'7,8,9,47', 1, CAST(N'2019-08-22T00:00:00.000' AS DateTime), NULL, NULL, N'<!--Card Front-->

<table border="0" cellpadding="0" cellspacing="0" class="idcard" width="650px" style="margin:0 auto">
    <tbody>
        <tr>
            <td style="background-color: #6BA43A; padding: 2px; max-width: 200px;">
                <table border="0" cellpadding="0" cellspacing="0" height="321px;" width="100%">
                    <tbody>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-family: Arial, Helvetica, sans-serif;" width="100%">
                                    <tbody>
                                        <tr>
                                            <td style="height: 60px; width:60%;">
                                                <img alt="" src="https://www.alierahealth.com/media/1246/WLogo-PHCS_85x40.png" style="width: 85px; height: 40px; border: 0px; margin-top: 12px;" />
                                            </td>
                                            <td style="font-size: 10px; height: 60px;">
                                                Effective Date&nbsp;:&nbsp;$effectiveshort<br />
                                                MSRA&nbsp;:&nbsp;$CQProgramMSRA
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" height="5" style="height: 2px; font-size: 0px; mso-line-height-rule: exactly; line-height: 2px; ">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:10px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                    <tbody>
                                        <tr valign="top">
                                            <td>
                                                Program ID&nbsp;:$productadminlabel
                                                Primary&nbsp;:<table style="padding-left: 58px;margin-top: -13px;font-size: 10px;"><tbody><tr><td style="line-height: 8px;">&nbsp;$fullname</td></tr></tbody></table>
                                                Primary ID&nbsp;:<table style="padding-left: 58px;margin-top: -13px;font-size: 10px;"><tbody><tr><td style="line-height: 8px;">&nbsp;$externalid</td></tr></tbody></table>
                                                Dependents&nbsp;:$activedependentname
                                            </td>
                                            <td style="width: 8%">
                                                PCP&nbsp;:<br />
                                                UrgCare&nbsp;:<br />
                                                Spec&nbsp;:<br />
                                                ER&nbsp;:
                                            </td>
                                            <td>
                                                $PCP<br />
                                                $UrgentCare<br />
                                                $Speciality<br />
                                                $ER
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" height="10" style="height: 10px; font-size: 0px; mso-line-height-rule: exactly; line-height: 10px; background-color: #ffffff;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px;" width="100%">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                                    <tbody>
                                                        <tr valign="top">
                                                            <td>This participant and any listed dependents are Members of a Health Care Sharing Ministry recognized pursuant to 26 USC &sect; 5000A(d)(2)(B) that does not engage in the business of insurance. Members make monthly contributions that are used to voluntarily pay each other&rsquo;s medical expenses based on a shared set of ethical or religious beliefs.</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                                    <tbody>
                                                        <tr valign="top">
                                                            <td>
                                                                <b>*MSRA</b> Member Shared Responsibility Amount
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td style="text-align: center;">
                                                                <b>This is NOT insurance.</b>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
<!--END Card Front-->
</td>
</tr>
<tr>
    <td align="center" height="30" style="height: 30px; font-size: 0px; mso-line-height-rule: exactly; line-height: 30px; ">&nbsp;</td>
</tr>
<tr>
    <td align="center" class="pad-content" style="mso-line-height-rule: exactly; font-family: Arial, Helvetica, sans-serif; text-align: left; padding-left: 20px; padding-right: 20px; padding-top: 20px;">
        <!--Card Back-->
        <!--Card -->
        <table border="0" cellpadding="0" cellspacing="0" class="idcard" width="650px" style="margin:0 auto">
            <tbody>
                <tr>
                    <td style="background-color: #6BA43A; padding: 2px;">
                        <!-- ID CARD-->
                        <table border="0" cellpadding="0" cellspacing="0" class="idcard" height="321px;" width="100%">
                            <tbody>
                                <tr>
                                    <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                        <table border="0" cellpadding="0" cellspacing="0" class="idcard" style="font-family: Arial, Helvetica, sans-serif; font-size: 10px;" width="100%">
                                            <tbody>
                                                <tr valign="top">
                                                    <!-- CARD TOP 1st COLUMN-->
                                                    <td style="font-size: 10px; padding-top: 20px;">
                                                        <b>Provider Services</b><br />
                                                        To find a provider, visit<br />
                                                        <a href="TrinityHealthShare.org/network/" style="text-decoration: none; font-weight: bold; color: #6BA43A;">TrinityHealthShare.org/network/</a><br />
                                                        Select the network logo that<br />
                                                        coincides with your program.
                                                    </td>
                                                    <!-- END OF CARD TOP 1st COLUMN-->
                                                    <!-- CARD TOP 2nd COLUMN-->
                                                    <td style="font-size: 10px; padding-top: 20px;">
                                                        <b>Pharmacy Services</b><br />
                                                        <a href="https://www.myrxvalet.com" style="color: #6BA43A; text-decoration: none; font-weight: bold;">MyRxValet.com</a><br />
                                                        Group&nbsp;: 2504<br />
                                                        BIN #&nbsp;: 006053<br />
                                                        PCN&nbsp;: SS
                                                    </td>
                                                    <!-- END OF CARD TOP 2nd COLUMN-->
                                                    <!-- CARD TOP 3rd COLUMN-->
                                                    <td style="font-size: 10px; text-align: right;">
                                                        <img src="https://sftpgateway-i-0fe429cd8ee297f56.s3.amazonaws.com/live-campaign-assets/gen/trinity/trinity-healthshare-logo-gold.png" style="margin-bottom: 15px;" width="165px;" /><br />
                                                        Member Services&nbsp;: <b>844-834-3456</b><br />
                                                        Telemedicine&nbsp;: <b>866-920-3627</b><br />
                                                        Pharmacy&nbsp;: <b>855-798-2538</b><br />
                                                        Eligibility&nbsp;: <b>844-457-7726</b>
                                                    </td>
                                                    <!-- END OF CARD TOP 3rd COLUMN-->
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" height="10" style="height: 10px; font-size: 0px; mso-line-height-rule: exactly; line-height: 10px; background-color: #ffffff;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" height="2" style="height: 1px; font-size: 0px; mso-line-height-rule: exactly; line-height: 2px; padding-bottom: 0px; margin-bottom: 0px;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="background-color: #ffffff; padding-left: 16px; padding-top: 0px;">
                                        <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td style="background-color: #ffffff; width: 50%;">
                                                        <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px;" width="100%">
                                                            <tbody>
                                                                <tr valign="top">
                                                                    <td style="background-color: #6BA43A; font-size: 0px;" width="1">&nbsp;</td>
                                                                    <!-- CARD BOTTOM 1st COLUMN-->
                                                                    <td style="padding-left: 10px; font-size: 10px;">
                                                                        PROVIDERS SHOULD VERIFY<br />
                                                                        ELIGIBILITY BEFORE TREATMENT<br />
                                                                        OR SERVICE <b>844-457-7726</b>
                                                                    </td>
                                                                    <!-- END OF CARD BOTTOM 1st COLUMN-->
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                    <!-- CARD BOTTOM 2nd COLUMN-->
                                                    <td style="background-color: #6BA43A; color: #ffffff; height: 140px; width: 50%; padding-left: 20px; font-size: 10px;">
                                                        <b>Completed Claims Forms :</b><br />
                                                        <br />
                                                        Trinity HealthShare<br />
                                                        P.O. Box 981810<br />
                                                        Lubbock, TX 79490-6818<br />
                                                        or EDI # : ALH01 | 844-646-1504
                                                    </td>
                                                    <!-- END OF CARD BOTTOM 2nd COLUMN-->
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align: center; padding-right: 16px;">
                                                        <b>This is NOT insurance.</b>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" height="1" style="height: 1px; font-size: 0px; mso-line-height-rule: exactly; line-height: 1px; ">&nbsp;</td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <!--END of Card -->
        <!--END Card Back-->
    </td>
', 2)
INSERT [dbo].[TemplateDetails] ([TemplateDetailId], [TemplateId], [LanguageId], [ProductId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Html], [ProviderNetworkId]) VALUES (4, 4, 1, N'10,15,16,50', 1, CAST(N'2019-08-22T00:00:00.000' AS DateTime), NULL, NULL, N'<!--Card Front-->

<table border="0" cellpadding="0" cellspacing="0" class="idcard" width="650px" style="margin:0 auto">
    <tbody>
        <tr>
            <td style="background-color: #6BA43A; padding: 2px; max-width: 200px;">
                <table border="0" cellpadding="0" cellspacing="0" height="321px;" width="100%">
                    <tbody>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-family: Arial, Helvetica, sans-serif;" width="100%">
                                    <tbody>
                                        <tr>
                                            <td style="height: 60px; width:60%;">
                                                <img alt="" src="https://www.alierahealth.com/media/1246/ProviderNetworks/PHCS_SS_40h.png" style="width: 79px; height: 40px; border: 0px; margin-top: 12px;" />
                                            </td>
                                            <td style="font-size: 10px; height: 60px;">
                                                Effective Date&nbsp;:&nbsp;$effectiveshort<br />
                                                MSRA&nbsp;:&nbsp;$CQProgramMSRA
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" height="5" style="height: 2px; font-size: 0px; mso-line-height-rule: exactly; line-height: 2px; ">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:10px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                    <tbody>
                                        <tr valign="top">
                                            <td>
                                                Program ID&nbsp;:$productadminlabel
                                                Primary&nbsp;:<table style="padding-left: 58px;margin-top: -13px;font-size: 10px;"><tbody><tr><td style="line-height: 8px;">&nbsp;$fullname</td></tr></tbody></table>
                                                Primary ID&nbsp;:<table style="padding-left: 58px;margin-top: -13px;font-size: 10px;"><tbody><tr><td style="line-height: 8px;">&nbsp;$externalid</td></tr></tbody></table>
                                                Dependents&nbsp;:$activedependentname
                                            </td>
                                            <td style="width: 8%">
                                                PCP&nbsp;:<br />
                                                UrgCare&nbsp;:<br />
                                                Spec&nbsp;:<br />
                                                ER&nbsp;:
                                            </td>
                                            <td>
                                                $PCP<br />
                                                $UrgentCare<br />
                                                $Speciality<br />
                                                $ER
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" height="10" style="height: 10px; font-size: 0px; mso-line-height-rule: exactly; line-height: 10px; background-color: #ffffff;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px;" width="100%">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                                    <tbody>
                                                        <tr valign="top">
                                                            <td>This participant and any listed dependents are Members of a Health Care Sharing Ministry recognized pursuant to 26 USC &sect; 5000A(d)(2)(B) that does not engage in the business of insurance. Members make monthly contributions that are used to voluntarily pay each other&rsquo;s medical expenses based on a shared set of ethical or religious beliefs.</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                                    <tbody>
                                                        <tr valign="top">
                                                            <td>
                                                                <b>*MSRA</b> Member Shared Responsibility Amount
                                                            </td>
                                                        </tr>
                                                        <tr valign="top">
                                                            <td style="text-align: center;">
                                                                <b>This is NOT insurance.</b>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>
<!--END Card Front-->
</td>
</tr>
<tr>
    <td align="center" height="30" style="height: 30px; font-size: 0px; mso-line-height-rule: exactly; line-height: 30px; ">&nbsp;</td>
</tr>
<tr>
    <td align="center" class="pad-content" style="mso-line-height-rule: exactly; font-family: Arial, Helvetica, sans-serif; text-align: left; padding-left: 20px; padding-right: 20px; padding-top: 20px;">
        <!--Card Back-->
        <!--Card -->
        <table border="0" cellpadding="0" cellspacing="0" class="idcard" width="650px" style="margin:0 auto">
            <tbody>
                <tr>
                    <td style="background-color: #6BA43A; padding: 2px;">
                        <!-- ID CARD-->
                        <table border="0" cellpadding="0" cellspacing="0" class="idcard" height="321px;" width="100%">
                            <tbody>
                                <tr>
                                    <td style="background-color: #ffffff; padding-left: 16px; padding-right: 16px; padding-top:4px; padding-bottom: 4px;">
                                        <table border="0" cellpadding="0" cellspacing="0" class="idcard" style="font-family: Arial, Helvetica, sans-serif; font-size: 10px;" width="100%">
                                            <tbody>
                                                <tr valign="top">
                                                    <!-- CARD TOP 1st COLUMN-->
                                                    <td style="font-size: 10px; padding-top: 20px;">
                                                        <b>Provider Services</b><br />
                                                        To find a provider, visit<br />
                                                        <a href="TrinityHealthShare.org/network/" style="text-decoration: none; font-weight: bold; color: #6BA43A;">TrinityHealthShare.org/network/</a><br />
                                                        Select the network logo that<br />
                                                        coincides with your program.
                                                    </td>
                                                    <!-- END OF CARD TOP 1st COLUMN-->
                                                    <!-- CARD TOP 2nd COLUMN-->
                                                    <td style="font-size: 10px; padding-top: 20px;">
                                                        <b>Pharmacy Services</b><br />
                                                        <a href="https://www.myrxvalet.com" style="color: #6BA43A; text-decoration: none; font-weight: bold;">MyRxValet.com</a><br />
                                                        Group&nbsp;: 2504<br />
                                                        BIN #&nbsp;: 006053<br />
                                                        PCN&nbsp;: SS
                                                    </td>
                                                    <!-- END OF CARD TOP 2nd COLUMN-->
                                                    <!-- CARD TOP 3rd COLUMN-->
                                                    <td style="font-size: 10px; text-align: right;">
                                                        <img src="https://sftpgateway-i-0fe429cd8ee297f56.s3.amazonaws.com/live-campaign-assets/gen/trinity/trinity-healthshare-logo-gold.png" style="margin-bottom: 15px;" width="165px;" /><br />
                                                        Member Services&nbsp;: <b>844-834-3456</b><br />
                                                        Telemedicine&nbsp;: <b>866-920-3627</b><br />
                                                        Pharmacy&nbsp;: <b>855-798-2538</b><br />
                                                        Eligibility&nbsp;: <b>844-457-7726</b>
                                                    </td>
                                                    <!-- END OF CARD TOP 3rd COLUMN-->
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" height="10" style="height: 10px; font-size: 0px; mso-line-height-rule: exactly; line-height: 10px; background-color: #ffffff;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" height="2" style="height: 1px; font-size: 0px; mso-line-height-rule: exactly; line-height: 2px; padding-bottom: 0px; margin-bottom: 0px;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="background-color: #ffffff; padding-left: 16px; padding-top: 0px;">
                                        <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px; font-family: Arial, Helvetica, sans-serif;" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td style="background-color: #ffffff; width: 50%;">
                                                        <table border="0" cellpadding="0" cellspacing="0" style="font-size: 10px;" width="100%">
                                                            <tbody>
                                                                <tr valign="top">
                                                                    <td style="background-color: #6BA43A; font-size: 0px;" width="1">&nbsp;</td>
                                                                    <!-- CARD BOTTOM 1st COLUMN-->
                                                                    <td style="padding-left: 10px; font-size: 10px;">
                                                                        PROVIDERS SHOULD VERIFY<br />
                                                                        ELIGIBILITY BEFORE TREATMENT<br />
                                                                        OR SERVICE <b>844-457-7726</b>
                                                                    </td>
                                                                    <!-- END OF CARD BOTTOM 1st COLUMN-->
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                    <!-- CARD BOTTOM 2nd COLUMN-->
                                                    <td style="background-color: #6BA43A; color: #ffffff; height: 140px; width: 50%; padding-left: 20px; font-size: 10px;">
                                                        <b>Completed Claims Forms&nbsp;:</b><br />
                                                        <br />
                                                        Trinity HealthShare<br />
                                                        P.O. Box 981810<br />
                                                        Lubbock, TX 79490-6818<br />
                                                        or EDI # : ALH01 | 844-646-1504
                                                    </td>
                                                    <!-- END OF CARD BOTTOM 2nd COLUMN-->
                                                </tr>
                                                <tr>
                                                    <td colspan="2" style="text-align: center; padding-right: 16px;">
                                                        <b>This is NOT insurance.</b>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" height="1" style="height: 1px; font-size: 0px; mso-line-height-rule: exactly; line-height: 1px; ">&nbsp;</td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        <!--END of Card -->
        <!--END Card Back-->
    </td>
', 1)
INSERT [dbo].[TemplateDetails] ([TemplateDetailId], [TemplateId], [LanguageId], [ProductId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Html], [ProviderNetworkId]) VALUES (5, 5, 1, NULL, 1, CAST(N'2019-08-27T00:00:00.000' AS DateTime), NULL, NULL, N'<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Invoice Template</title>
</head>

<body>
    <div style="max-width: 800px;
 margin: auto;
 padding: 30px;
 border: 1px solid #ccc;
 box-shadow: 0 0 10px rgba(0, 0, 0, .15);
 font-size: 16px;
 line-height: 24px;
 font-family: ''Helvetica Neue'', ''Helvetica'', Helvetica, Arial, sans-serif;
 color: #555;">
        <table cellpadding="0" cellspacing="0" style="width: 100%;line-height: inherit;text-align: left;">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td style="padding: 3px;vertical-align: top;padding-bottom:10px;">
                                <strong>Member</strong>
                                <br>
                                ID&nbsp;: $externalid <br>
                                $fullname <br>
                                $address <br>
                                $city $state $zip <br>
                                $phone <br>
                                $email<br>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="background: #a5a5a5; border-bottom: 1px solid #ddd;font-weight: bold;color: #fff;padding: 5px;">
                    SALE on $PaidDateTitle - $status
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="2">
                    <table>
                        <tr>
                            <td style="padding: 3px;vertical-align: top;padding-bottom: 20px;padding-right: 350px;">
                                Date&nbsp;: $PaidDate<br>
                                Order #&nbsp;: $OrderId<br>
                            </td>

                            <td style="padding: 3px;vertical-align: top;text-align: left;padding-bottom: 20px;">
                                Type&nbsp;: $type<br>
                                Amount&nbsp;: $TotalAmount <br>

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="border-top:3px solid #868686;"></td>
            </tr>
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <strong>Products</strong>
                            <br>
                        </tr>
                        $Products
                    </table>
                </td>
            </tr>
            <tr>
                <td style="border-top:3px solid #868686;"></td>
            </tr>
            <tr class="payment">
                <td colspan="2">
                    <table>
                        <tr>
                            <td style="padding-right:3px">
                                <strong>Payments</strong>
                                <br>
                                Type&nbsp;: <br>
                                Method&nbsp;: <br>
                                Date/Time&nbsp;: <br>
                                Transaction ID&nbsp;: <br>
                                Transaction Status&nbsp;:  <br>
                            </td>
                            <td>
                                <br>
                                $CardType
                                <br>
                                $CardNumber  <br>
                                $PayDate <br>
                                $TransactionId<br>
                                $Transactionstatus <br>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>', NULL)
SET IDENTITY_INSERT [dbo].[TemplateDetails] OFF


GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 1, CAST(386.40 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 3, CAST(772.80 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PlanPremium] ([PlanId], [MinAge], [MaxAge], [MSRA], [FamilyIndicator], [Premium], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn])
VALUES (907, 60, 64, CAST(5000.00 AS Decimal(8, 2)), 5, CAST(695.52 AS Decimal(8, 2)), 2, CAST(N'2019-08-20T00:00:00.000' AS DateTime), NULL, NULL)
GO

UPDATE Product SET Name = 'CarePlus Advantage', ProductCode = '21422' WHERE ProductID = 47
GO
Update Product SET FamilyRiderFee = 0.00 WHERE ProductId IN (521, 522, 523)
GO

UPDATE MasterData SET Value = '(844) 892-9994 Broker Agent Support|(844) 412-3019 Become a Member|(844) 834-3456 Member Services|(404) 618-0602 Corporate Headquarters' WHERE [Key] = 'Broker_ContactInfo_PhoneNumbers'
GO

SET IDENTITY_INSERT [dbo].[ProductProviderNetwork] ON 

INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (1, 6, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (2, 5, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (3, 6, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (4, 10, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (5, 11, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (6, 12, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (7, 22, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (8, 23, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (9, 24, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (12, 49, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (13, 50, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (14, 1, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (15, 7, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (16, 8, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (17, 9, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (18, 25, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (19, 26, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (20, 27, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (21, 34, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (22, 35, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (23, 36, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (24, 47, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (29, 527, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (30, 523, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (31, 53, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (32, 55, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (33, 406, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (34, 531, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (35, 532, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (36, 518, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (37, 441, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (38, 521, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (39, 522, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (40, 523, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (41, 526, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (42, 525, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (43, 524, 2)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (44, 342, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (45, 367, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (46, 507, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (47, 519, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (48, 520, 1)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (49, 379, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (50, 245, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (51, 529, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (52, 530, 5)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (53, 528, 3)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (54, 339, 3)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (55, 473, 4)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (56, 397, 3)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (57, 397, 4)
SET IDENTITY_INSERT [dbo].[ProductProviderNetwork] OFF

SET IDENTITY_INSERT [dbo].[Templates] ON 
INSERT [dbo].[Templates] ([Id], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'Trinity Dental ID Card - 9.5.2019', 1, CAST(N'2019-09-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Templates] ([Id], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, N'Trinity Vision ID Card - 9.5.2019', 1, CAST(N'2019-09-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Templates] ([Id], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, N'Unity Dental ID Card - 9.5.2019', 1, CAST(N'2019-09-09T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[Templates] ([Id], [Name], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'Unity Vision ID Card - 9.5.2019', 1, CAST(N'2019-09-09T00:00:00.000' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Templates] OFF

SET IDENTITY_INSERT [dbo].[TemplateDetails] ON 
INSERT [dbo].[TemplateDetails] ([TemplateDetailId], [TemplateId], [LanguageId], [ProductId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Html], [ProviderNetworkId]) VALUES (6, 6, 1, N'528,534', 1, CAST(N'2019-09-09T00:00:00.000' AS DateTime), NULL, NULL, N'<table border="5" bordercolor="2F8927" cellpadding="0" cellspacing="0" style="border-collapse:collapse;border-radius:7px;border:5px solid rgb(60, 138, 46);width:650px;margin:auto">
    <tbody>
        <tr style="height:80px">
            <td style="width: 140px; height: 1px; text-align: left; vertical-align: middle; white-space: nowrap;"><span style="color:#002c77;"><span style="font-size:20px;"><span style="font-family:times new roman,times,serif;"><strong>&nbsp;Trinity</strong>&nbsp;DENTAL CARE&nbsp;</span></span></span></td>
            <td style="width: 219px; height: 1px; border-left-style: hidden; border-right-style: hidden; text-align: center; vertical-align: middle; white-space: nowrap;">
                <p style="margin-left: 3pt;"><img alt="" src="https://www.alierahealth.com/media/1246/DenteMax-Logo.jpg" style="width: 100px; height: 56px; margin: 0px;" /></p>
            </td>
            <td style="width: 129px; height: 1px; vertical-align: middle; white-space: nowrap; text-align: left;">
                <p><img alt="" src="https://sftpgateway-i-0fe429cd8ee297f56.s3.amazonaws.com/live-campaign-assets/gen/trinity/trinity-healthshare-logo-gold.png" style="font-family: arial, helvetica, sans-serif; font-size: 12px; width: 107px; height: 34px;" /></p>
            </td>
        </tr>
        <tr>
            <td style="width: 250px; height: 1px; text-align: left; vertical-align: top;">
                <p style="line-height:10pt; margin:3pt;">
                    <span style="font-size:12px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            Group #:<strong> $group</strong><br />
                            Primary:&nbsp;
                        </span><strong><span style="font-family: arial, helvetica, sans-serif;">$fullname</span></strong><br />
                        <span style="font-family:arial,helvetica,sans-serif;">Primary ID: </span><strong><span style="font-family: arial, helvetica, sans-serif;">$externalid</span></strong>
                    </span><br />
                    <span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;">Covered Dependent(s): </span></span><span style="font-size:12px;"><span style="font-family:Arial,Helvetica,sans-serif;"><strong>$activedependentname&nbsp;&nbsp;</strong></span></span>
                </p>
            </td>
            <td colspan="2" style="width: 235px; height: 1px; text-align: left; vertical-align: top;">
                <p style="margin: 3pt;"><strong><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;">Effective Date:&nbsp;$effectiveshort</span></span></strong></p>

                <p style="margin: 3pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>Plan ID: $productadminlabel</strong></span></span></p>

                <p style="margin: 3pt;">
                    <span style="font-size:12px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            <strong>
                                <small>
                                    <span style="font-size:14px;">
                                        MSRA* $50** Class B,C Only<br />
                                        Consult Fee - $20 per Visit&nbsp;
                                    </span>
                                </small>
                            </strong>
                        </span>
                    </span>
                </p>

                <p style="margin: 3pt 3pt 3pt 40px;">
                    <span style="font-size:13px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            <strong>
                                <small>
                                    Class A - Preventive - 100%<br />
                                    Class B - Basic - 70%<br />
                                    Class C - Major - 40%&nbsp;
                                </small>
                            </strong>
                        </span>
                    </span>
                </p>

                <p style="margin-top: 3pt; margin-right: 3pt; margin-bottom: 3pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong><small><span style="font-size:14px;">&nbsp;Annual Max., Class A, B, and C - $2000&nbsp;</span></small></strong></span></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(255, 255, 255);"><strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">*MSRA</strong><span style="font-family: arial, helvetica, sans-serif; font-size: 11px;">&nbsp;= Member Shared Responsibility Amount &nbsp;| &nbsp;**MSRA is per Member per Term (Annual)</span></td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(60, 138, 46);"><span style="color:#ffffff;"><strong style="color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: center; background-color: rgb(60, 138, 46);">Verify eligibility for payment: </strong>844-763-5338</span></td>
        </tr>
    </tbody>
</table>

<p style="margin:0pt;">&nbsp;</p>

<table border="5" bordercolor="2F8927" cellpadding="1" cellspacing="0" style="border-collapse:collapse;border-radius:7px;border:5px solid rgb(60, 138, 46);width:650px;margin:auto">
    <tbody>
        <tr>
            <td style="width: 129px; height: 1px; text-align: left; vertical-align: top; white-space: nowrap;">
                <p style="margin:1pt; line-height:10pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><img alt="" src="https://sftpgateway-i-0fe429cd8ee297f56.s3.amazonaws.com/live-campaign-assets/gen/trinity/trinity-healthshare-logo-gold.png" style="width: 107px; height: 34px; margin: 0px;" /></span></span></p>

                <p style="text-align:left;margin:4pt; line-height:10pt;">
                    <span style="font-family:arial,helvetica,sans-serif;">
                        <small>
                            <span style="font-size:12px;"><strong>Mail claims forms to:</strong></span><br />
                            <span style="font-size:11px;">
                                &nbsp; Aliera Healthcare Trinity<br />
                                &nbsp; P.O. Box 16818<br />
                                &nbsp; Lubbock, TX 79490-6818<br />
                                or EDI # : ALH01 | 1-800-252-3684
                            </span>
                        </small>
                    </span>
                </p>
            </td>
            <td style="width: 230px; height: 1px; border-left-style: hidden; border-right-style: hidden; text-align: center; vertical-align: top;">
                <p style="text-align: left;"><span style="font-family:times new roman,times,serif;"><span style="font-size:18px;"><strong font-size:="" new="" style="color: rgb(0, 44, 119); font-family: " times="" white-space:="">Trinity</strong><span new="" style="color: rgb(0, 44, 119); font-family: " times="" white-space:="">&nbsp;DENTAL CARE</span></span></span></p>

                <p style="text-align:left; margin:1pt; line-height:10pt;"><strong><span style="font-size: 11px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);">Pre-Treatment Determinations:</span></strong></p>

                <p style="text-align:left; margin:1pt; line-height:10pt;"><span style="color:#000000;"><span style="font-family:arial,helvetica,sans-serif;"><small><span style="font-size:11px;">A dental treatment plan should be filed BEFORE treatment begins for Class B, C services when charges are expected to exceed $300, (excludes emergency services).&nbsp;</span></small></span></span><span style="font-size: 11px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);">This card does not guarantee eligibility or payment.</span></p>
            </td>
            <td style="width: 96px; height: 1px; vertical-align: top; white-space: nowrap; text-align: right;">
                <p style="margin: 3pt; line-height: 10pt;"><small><span style="font-size:12px;"><span style="font-size:11px;"><strong><span style="font-family:arial,helvetica,sans-serif;">Member Services &amp; Eligibility</span></strong></span></span></small></p>

                <p style="margin: 3pt; line-height: 10pt; text-align: right;"><span style="font-size:16px;"><strong><small><span style="font-family:arial,helvetica,sans-serif;">844-763-5338</span></small></strong></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 300px; height: 1px; line-height: 7pt; text-align: left; vertical-align: middle; background-color: rgb(60, 138, 46);">
                <p style="margin-left: 3px; text-align: center;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#FFFFFF;"><strong>PROVIDER should verify eligibility before providing treatment or service.</strong></span></span></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 100px; height: 1px; text-align: left; vertical-align: top;">
                <p style="margin:3pt; line-height:10pt;"><span style="font-size:10px;"><span style="font-family:Arial,Helvetica,sans-serif;">This participant and any listed dependents are Members of a Health Care Sharing Ministry recognized pursuant to 26 USC &sect; 5000A(d)(2)(B) that does not engage in the business of insurance. Members make monthly contributions that are used to voluntarily pay each other&rsquo;s medical expenses based on a shared set of ethical or religious beliefs. </span></span></p>

                <p style="margin:3pt; line-height:10pt;"><img alt="" src="https://www.alierahealth.com/media/1246/Aliera%20Logo.png" style="width: 90px; height: 25px; float: right; margin-right: 6px; margin-left: 6px;" /></p>

                <p style="margin:3pt; line-height:10pt;"><small><span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>MSRA</strong> = Member Shared Responsibility Amount | * Consult fees shown are in-network.</span></span></small></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(60, 138, 46);"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong><span style="color:#FFFFFF;">www.alierahealthcare.com | www.trinityhealthshare.org</span></strong></span></span></td>
        </tr>
    </tbody>
</table>

', 3)
INSERT [dbo].[TemplateDetails] ([TemplateDetailId], [TemplateId], [LanguageId], [ProductId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Html], [ProviderNetworkId]) VALUES (7, 7, 1, N'533,534', 1, CAST(N'2019-09-09T00:00:00.000' AS DateTime), NULL, NULL, N'<table border="5" bordercolor="2F8927" cellpadding="0" cellspacing="0" style="border-collapse:collapse;border-radius:7px;border:5px solid rgb(60, 138, 46);width:650px;margin:auto">
    <tbody>
        <tr>
            <td style="width: 140px; height: 1px; text-align: left; vertical-align: middle; white-space: nowrap;"><span style="color:#002c77;"><span style="font-size:20px;"><span style="font-family:times new roman,times,serif;"><strong>&nbsp; Trinity</strong>&nbsp;VISION CARE &nbsp; &nbsp;</span></span></span></td>
            <td style="width: 219px; height: 1px; border-left-style: hidden; border-right-style: hidden; text-align: center; vertical-align: middle; white-space: nowrap;">
                <p style="margin-left: 3pt;"><img alt="" src="https://www.alierahealth.com/media/1246/CEC_Logo_2x.png" style="width: 120px; height: 43px;" /></p>
            </td>
            <td style="width: 96px; height: 1px; vertical-align: middle; white-space: nowrap; text-align: left;">
                <p><img alt="" src="https://sftpgateway-i-0fe429cd8ee297f56.s3.amazonaws.com/live-campaign-assets/gen/trinity/trinity-healthshare-logo-gold.png" style="font-family: arial, helvetica, sans-serif; font-size: 12px; width: 107px; height: 34px;" /></p>
            </td>
        </tr>
        <tr>
            <td style="width: 250px; height: 1px; text-align: left; vertical-align: top;">
                <p style="line-height:10pt; margin:3pt;">
                    <span style="font-size:12px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            Group #:<strong> $group</strong><br />
                            Primary:&nbsp;
                        </span><strong><span style="font-family: arial, helvetica, sans-serif;">$fullname</span></strong><br />
                        <span style="font-family:arial,helvetica,sans-serif;">Primary ID: </span><strong><span style="font-family: arial, helvetica, sans-serif;">$externalid</span></strong>
                    </span><br />
                    <span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;">Covered Dependent(s): </span></span><span style="font-size:12px;"><span style="font-family:Arial,Helvetica,sans-serif;"><strong>$activedependentname&nbsp;&nbsp;</strong></span></span>
                </p>
            </td>
            <td colspan="2" style="width: 235px; height: 1px; text-align: left; vertical-align: top;">
                <p style="line-height:10pt; margin: 3pt;"><strong><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;">Effective Date*:&nbsp;$effectiveshort</span></span></strong></p>

                <p style="line-height:10pt; margin: 3pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>Plan ID: $productadminlabel</strong></span></span></p>

                <p style="line-height:10pt;margin: 3pt;"><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size:11px;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">&nbsp;-&nbsp;One routine eye exam annually</strong></span></span></p>

                <p style="line-height:10pt;margin: 3pt;"><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size:11px;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">&nbsp;-&nbsp;A $150 eyewear allowance annually</strong></span></span></p>

                <p style="line-height:10pt;margin: 3pt;">
                    <span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>&nbsp;-&nbsp;A contact lens fitting, re-fit, or evaluation annually</strong></span></span><br />
                    <strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">Co-expenses:&nbsp;</strong>
                </p>

                <p style="line-height:10pt; margin: 3pt;">
                    <span style="font-size:11px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            &nbsp; Exam: $15&nbsp;<br />
                            &nbsp; Eyewear: $15&nbsp;<br />
                            &nbsp; Contact Lens fitting, refit, or eval: $15&nbsp;
                        </span>
                    </span>
                </p>

                <p style="line-height:10pt; margin: 3pt;"><span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>Out of Network:</strong> (See other side for instructions)&nbsp; </span></span></p>

                <p style="line-height:10pt; margin: 3pt;">
                    <span style="font-size:11px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            Exam: $50<br />
                            Eyewear: 75% of retail cost, up to a maximum of $112.50
                        </span>
                    </span>
                </p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(255, 255, 255);"><strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">*Described benefts are annually per enrolled individual.</strong></td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(60, 138, 46);"><span style="color:#ffffff;"><strong style="color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: center; background-color: rgb(60, 138, 46);">Verify eligibility for payment: </strong>844-763-5338</span></td>
        </tr>
    </tbody>
</table>

<p style="margin:0pt;">&nbsp;</p>

<table border="5" bordercolor="2F8927" cellpadding="1" cellspacing="0" style="border-collapse:collapse;border-radius:7px;border:5px solid rgb(60, 138, 46);width:650px;margin:auto">
    <tbody>
        <tr>
            <td style="width: 129px; height: 1px; text-align: left; vertical-align: top; white-space: nowrap;">
                <p style="margin:1pt; line-height:10pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><img alt="" src="https://sftpgateway-i-0fe429cd8ee297f56.s3.amazonaws.com/live-campaign-assets/gen/trinity/trinity-healthshare-logo-gold.png" style="width: 107px; height: 34px; margin: 0px;" />&nbsp;</span></span></p>

                <p style="text-align:left;margin:4pt; line-height:10pt;">
                    <span style="font-family:arial,helvetica,sans-serif;">
                        <small>
                            <span style="font-size:12px;"><strong>Mail claims forms to:</strong></span><br />
                            <span style="font-size:11px;">
                                &nbsp; Aliera Healthcare Trinity<br />
                                &nbsp; P.O. Box 16818<br />
                                &nbsp; Lubbock, TX 79490-6818<br />
                                or EDI # : ALH01 | 1-800-252-3684
                            </span>
                        </small>
                    </span>
                </p>
            </td>
            <td style="width: 230px; height: 1px; border-left-style: hidden; border-right-style: hidden; text-align: center; vertical-align: top;">
                <p style="text-align: left; line-height:10pt;"><span style="font-family:times new roman,times,serif;"><span style="font-size:18px;"><strong font-size:="" new="" style="color: rgb(0, 44, 119); font-family: " times="" white-space:="">Trinity</strong><span new="" style="color: rgb(0, 44, 119); font-family: " times="" white-space:="">&nbsp;VISION&nbsp;CARE&nbsp;</span></span></span></p>

                <p style="text-align: left; line-height:10pt;"><span style="font-size:11px;"><strong>Out of Network Reimbursement: </strong>Members who obtain exams and eyewear from a non-credentialed provider simply submit a claim to the address to&nbsp;</span><span style="font-size: 11px;">the left and will be reimbursed per terms on the front of this card.</span></p>
            </td>
            <td style="width: 96px; height: 1px; vertical-align: top; white-space: nowrap; text-align: right;">
                <p style="margin: 3pt; line-height: 10pt;"><small><span style="font-size:12px;"><span style="font-size:11px;"><strong><span style="font-family:arial,helvetica,sans-serif;">Member Services &amp; Eligibility</span></strong></span></span></small></p>

                <p style="margin: 3pt; line-height: 10pt; text-align: right;"><span style="font-size:16px;"><strong><small><span style="font-family:arial,helvetica,sans-serif;">844-763-5338</span></small></strong></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 300px; height: 1px; line-height: 7pt; text-align: left; vertical-align: middle; background-color: rgb(60, 138, 46);">
                <p style="margin-left: 3px; text-align: center;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#FFFFFF;"><strong>PROVIDER should verify eligibility before providing treatment or service.</strong></span></span></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 100px; height: 1px; text-align: left; vertical-align: top;">
                <p style="margin:3pt; line-height:10pt;"><span style="font-size:11px;"><span style="font-family:Arial,Helvetica,sans-serif;">This participant and any listed dependents are Members of a Health Care Sharing Ministry recognized pursuant to 26 USC &sect; 5000A(d)(2)(B) that does not engage in the business of insurance. Members make monthly contributions that are used to voluntarily pay each other&rsquo;s medical expenses based on a shared set of ethical or religious beliefs.</span></span></p>

                <p style="margin:3pt; line-height:10pt;"><img alt="" src="https://www.alierahealth.com/media/1246/Aliera%20Logo.png" style="width: 90px; height: 25px; float: right; margin-right: 6px; margin-left: 6px;" /></p>

                <p style="margin:3pt; line-height:10pt;"><small><span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>MSRA</strong> = Member Shared Responsibility Amount | * Consult fees shown are in-network.</span></span></small></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(60, 138, 46);"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong><span style="color:#FFFFFF;">www.alierahealthcare.com | www.trinityhealthshare.org</span></strong></span></span></td>
        </tr>
    </tbody>
</table>', 4)
INSERT [dbo].[TemplateDetails] ([TemplateDetailId], [TemplateId], [LanguageId], [ProductId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Html], [ProviderNetworkId]) VALUES (8, 8, 1, N'339,397', 1, CAST(N'2019-09-09T00:00:00.000' AS DateTime), NULL, NULL, N'<table border="5" bordercolor="2F8927" cellpadding="0" cellspacing="0" style="border-collapse:collapse;border-radius:7px;border:5px solid rgb(60, 138, 46);width:650px;margin:auto">
    <tbody>
        <tr style="height:80px">
            <td style="width: 140px; height: 1px; text-align: left; vertical-align: middle; white-space: nowrap;"><span style="color:#002c77;"><span style="font-size:20px;"><span style="font-family:times new roman,times,serif;"><strong>&nbsp;Unity</strong>&nbsp;DENTAL CARE&nbsp;</span></span></span></td>
            <td style="width: 219px; height: 1px; border-left-style: hidden; border-right-style: hidden; text-align: center; vertical-align: middle; white-space: nowrap;">
                <p style="margin-left: 3pt;"><img alt="" src="https://www.alierahealth.com/media/1246/DenteMax-Logo.jpg" style="width: 100px; height: 56px; margin: 0px;" /></p>
            </td>
            <td style="width: 96px; height: 1px; vertical-align: middle; white-space: nowrap; text-align: left;">
                <p><img alt="" src="https://www.alierahealth.com/media/1246/Logo_UnityHealthShare-PH_RGB_150.png" style="opacity: 0.9; font-family: arial, helvetica, sans-serif; font-size: 12px; width: 150px; height: 36px;" /></p>
            </td>
        </tr>
        <tr>
            <td style="width: 250px; height: 1px; text-align: left; vertical-align: top;">
                <p style="line-height:10pt; margin:3pt;">
                    <span style="font-size:12px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            Group #:<strong> $group</strong><br />
                            Primary:&nbsp;
                        </span><strong><span style="font-family: arial, helvetica, sans-serif;">$fullname</span></strong><br />
                        <span style="font-family:arial,helvetica,sans-serif;">Primary ID: </span><strong><span style="font-family: arial, helvetica, sans-serif;">$externalid</span></strong>
                    </span><br />
                    <span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;">Covered Dependent(s): </span></span><span style="font-size:12px;"><span style="font-family:Arial,Helvetica,sans-serif;"><strong>$activedependentname&nbsp;&nbsp;</strong></span></span>
                </p>
            </td>
            <td colspan="2" style="width: 235px; height: 1px; text-align: left; vertical-align: top;">
                <p style="margin: 3pt;"><strong><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;">Effective Date:&nbsp;$effectiveshort</span></span></strong></p>

                <p style="margin: 3pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>Plan ID: $productadminlabel</strong></span></span></p>

                <p style="margin: 3pt;">
                    <span style="font-size:12px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            <strong>
                                <small>
                                    <span style="font-size:14px;">
                                        MSRA* $50** Class B,C Only<br />
                                        Consult Fee - $20 per Visit&nbsp;
                                    </span>
                                </small>
                            </strong>
                        </span>
                    </span>
                </p>

                <p style="margin: 3pt 3pt 3pt 40px;">
                    <span style="font-size:13px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            <strong>
                                <small>
                                    Class A - Preventive - 100%<br />
                                    Class B - Basic - 70%<br />
                                    Class C - Major - 40%&nbsp;
                                </small>
                            </strong>
                        </span>
                    </span>
                </p>

                <p style="margin-top: 3pt; margin-right: 3pt; margin-bottom: 3pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong><small><span style="font-size:14px;">&nbsp;Annual Max., Class A, B, and C - $2000&nbsp;</span></small></strong></span></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(255, 255, 255);"><strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">*MSRA</strong><span style="font-family: arial, helvetica, sans-serif; font-size: 11px;">&nbsp;= Member Shared Responsibility Amount &nbsp;| &nbsp;**MSRA is per Member per Term (Annual)</span></td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(60, 138, 46);"><strong style="color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: center; background-color: rgb(60, 138, 46);">Verify eligibility for payment: 800-UHS-9794 (800-847-9794)</strong></td>
        </tr>
    </tbody>
</table>

<p style="margin:0pt;">&nbsp;</p>

<table border="5" bordercolor="2F8927" cellpadding="1" cellspacing="0" style="border-collapse:collapse;border-radius:7px;border:5px solid rgb(60, 138, 46);width:650px;margin:auto">
    <tbody>
        <tr>
            <td style="width: 129px; height: 1px; text-align: left; vertical-align: top; white-space: nowrap;">
                <p style="margin:1pt; line-height:10pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><img alt="" src="https://www.alierahealth.com/media/1246/Logo_UnityHealthShare-PH_RGB_150.png" style="width: 150px; height: 36px; margin: 0px;" /></span></span></p>

                <p style="text-align:left;margin:4pt; line-height:10pt;">
                    <span style="font-family:arial,helvetica,sans-serif;">
                        <small>
                            <span style="font-size:12px;"><strong>Mail claims forms to:</strong></span><br />
                            <span style="font-size:11px;">
                                &nbsp; Aliera Healthcare Unity<br />
                                &nbsp; P.O. Box 16818<br />
                                &nbsp; Lubbock, TX 79490-6818<br />
                                or EDI # : ALH01 | 1-800-252-3684
                            </span>
                        </small>
                    </span>
                </p>
            </td>
            <td style="width: 230px; height: 1px; border-left-style: hidden; border-right-style: hidden; text-align: center; vertical-align: top;">
                <p style="text-align: left;"><span style="font-family:times new roman,times,serif;"><span style="font-size:18px;"><strong font-size:="" new="" style="color: rgb(0, 44, 119); font-family: " times="" white-space:="">Unity</strong><span new="" style="color: rgb(0, 44, 119); font-family: " times="" white-space:="">&nbsp;DENTAL CARE</span></span></span></p>

                <p style="text-align:left; margin:1pt; line-height:10pt;"><strong><span style="font-size: 11px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);">Pre-Treatment Determinations:</span></strong></p>

                <p style="text-align:left; margin:1pt; line-height:10pt;"><span style="color:#000000;"><span style="font-family:arial,helvetica,sans-serif;"><small><span style="font-size:11px;">A dental treatment plan should be filed BEFORE treatment begins for Class B, C services when charges are expected to exceed $300, (excludes emergency services).&nbsp;</span></small></span></span><span style="font-size: 11px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);">This card does not guarantee eligibility or payment.</span></p>
            </td>
            <td style="width: 96px; height: 1px; vertical-align: top; white-space: nowrap; text-align: right;">
                <p style="margin: 3pt; line-height: 10pt;"><small><span style="font-size:12px;"><span style="font-size:11px;"><strong><span style="font-family:arial,helvetica,sans-serif;">Member Services &amp; Eligibility</span></strong></span></span></small></p>

                <p style="margin: 3pt; line-height: 10pt; text-align: right;"><span style="font-size:16px;"><strong><small><span style="font-family:arial,helvetica,sans-serif;">800-847-9794</span></small></strong></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 300px; height: 1px; line-height: 7pt; text-align: left; vertical-align: middle; background-color: rgb(60, 138, 46);">
                <p style="margin-left: 3px; text-align: center;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#FFFFFF;"><strong>PROVIDER should verify eligibility before providing treatment or service.</strong></span></span></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 100px; height: 1px; text-align: left; vertical-align: top;">
                <p style="margin:3pt; line-height:10pt;"><span style="font-size:10px;"><span style="font-family:Arial,Helvetica,sans-serif;">This participant and any listed dependents are Members of a Health Care Sharing Ministry recognized pursuant to 26 USC &sect; 5000A(d)(2)(B) that does not engage in the business of insurance. Members make monthly contributions that are used to voluntarily pay each other&rsquo;s medical expenses based on a shared set of ethical or religious beliefs. </span></span></p>

                <p style="margin:3pt; line-height:10pt;"><img alt="" src="https://www.alierahealth.com/media/1246/Aliera%20Logo.png" style="width: 90px; height: 25px; float: right; margin-right: 6px; margin-left: 6px;" /></p>

                <p style="margin:3pt; line-height:10pt;"><small><span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>MSRA</strong> = Member Shared Responsibility Amount | * Consult fees shown are in-network.</span></span></small></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(60, 138, 46);"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong><span style="color:#FFFFFF;">www.alierahealthcare.com | www.unityhealthshare.com</span></strong></span></span></td>
        </tr>
    </tbody>
</table>', 3)
INSERT [dbo].[TemplateDetails] ([TemplateDetailId], [TemplateId], [LanguageId], [ProductId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [Html], [ProviderNetworkId]) VALUES (9, 9, 1, N'473,397', 1, CAST(N'2019-09-09T00:00:00.000' AS DateTime), NULL, NULL, N'<table border="5" bordercolor="2F8927" cellpadding="0" cellspacing="0" style="border-collapse:collapse;border-radius:7px;border:5px solid rgb(60, 138, 46);width:650px;margin:auto">
    <tbody>
        <tr>
            <td style="width: 140px; height: 1px; text-align: left; vertical-align: middle; white-space: nowrap;"><span style="color:#002c77;"><span style="font-size:20px;"><span style="font-family:times new roman,times,serif;"><strong>&nbsp; Unity</strong>&nbsp;VISION CARE &nbsp; &nbsp;</span></span></span></td>
            <td style="width: 219px; height: 1px; border-left-style: hidden; border-right-style: hidden; text-align: center; vertical-align: middle; white-space: nowrap;">
                <p style="margin-left: 3pt;"><img alt="" src="https://www.alierahealth.com/media/1246/CEC_Logo_2x.png" style="width: 120px; height: 43px;" /></p>
            </td>
            <td style="width: 96px; height: 1px; vertical-align: middle; white-space: nowrap; text-align: left;">
                <p><img alt="" src="https://www.alierahealth.com/media/1246/Logo_UnityHealthShare-PH_RGB_150.png" style="opacity: 0.9; font-family: arial, helvetica, sans-serif; font-size: 12px; width: 150px; height: 36px;" /></p>
            </td>
        </tr>
        <tr>
            <td style="width: 250px; height: 1px; text-align: left; vertical-align: top;">
                <p style="line-height:10pt; margin:3pt;">
                    <span style="font-size:12px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            Group #:<strong> $group</strong><br />
                            Primary:&nbsp;
                        </span><strong><span style="font-family: arial, helvetica, sans-serif;">$fullname</span></strong><br />
                        <span style="font-family:arial,helvetica,sans-serif;">Primary ID: </span><strong><span style="font-family: arial, helvetica, sans-serif;">$externalid</span></strong>
                    </span><br />
                    <span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;">Covered Dependent(s): </span></span><span style="font-size:12px;"><span style="font-family:Arial,Helvetica,sans-serif;"><strong>$activedependentname&nbsp;&nbsp;</strong></span></span>
                </p>
            </td>
            <td colspan="2" style="width: 235px; height: 1px; text-align: left; vertical-align: top;">
                <p style="line-height:10pt; margin: 3pt;"><strong><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;">Effective Date*:&nbsp;$effectiveshort</span></span></strong></p>

                <p style="line-height:10pt; margin: 3pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>Plan ID: $productadminlabel</strong></span></span></p>

                <p style="line-height:10pt;margin: 3pt;"><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size:11px;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">&nbsp;-&nbsp;One routine eye exam annually</strong></span></span></p>

                <p style="line-height:10pt;margin: 3pt;"><span style="font-family:arial,helvetica,sans-serif;"><span style="font-size:11px;"><strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">&nbsp;-&nbsp;A $150 eyewear allowance annually</strong></span></span></p>

                <p style="line-height:10pt;margin: 3pt;">
                    <span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>&nbsp;-&nbsp;A contact lens fitting, re-fit, or evaluation annually</strong></span></span><br />
                    <strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">Co-expenses:&nbsp;</strong>
                </p>

                <p style="line-height:10pt; margin: 3pt;">
                    <span style="font-size:11px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            &nbsp; Exam: $15&nbsp;<br />
                            &nbsp; Eyewear: $15&nbsp;<br />
                            &nbsp; Contact Lens fitting, refit, or eval: $15&nbsp;
                        </span>
                    </span>
                </p>

                <p style="line-height:10pt; margin: 3pt;"><span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>Out of Network:</strong> (See other side for instructions)&nbsp; </span></span></p>

                <p style="line-height:10pt; margin: 3pt;">
                    <span style="font-size:11px;">
                        <span style="font-family:arial,helvetica,sans-serif;">
                            Exam: $50<br />
                            Eyewear: 75% of retail cost, up to a maximum of $112.50
                        </span>
                    </span>
                </p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(255, 255, 255);"><strong style="font-family: arial, helvetica, sans-serif; font-size: 11px;">*Described benefts are annually per enrolled individual.</strong></td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(60, 138, 46);"><strong style="color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 12px; text-align: center; background-color: rgb(60, 138, 46);">Verify eligibility for payment: 800-UHS-9794 (800-847-9794)</strong></td>
        </tr>
    </tbody>
</table>

<p style="margin:0pt;">&nbsp;</p>

<table border="5" bordercolor="2F8927" cellpadding="1" cellspacing="0" style="border-collapse:collapse;border-radius:7px;border:5px solid rgb(60, 138, 46);width:650px;margin:auto">
    <tbody>
        <tr>
            <td style="width: 129px; height: 1px; text-align: left; vertical-align: top; white-space: nowrap;">
                <p style="margin:1pt; line-height:10pt;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><img alt="" src="https://www.alierahealth.com/media/1246/Logo_UnityHealthShare-PH_RGB_150.png" style="width: 150px; height: 36px; margin: 0px;" />&nbsp;</span></span></p>

                <p style="text-align:left;margin:4pt; line-height:10pt;">
                    <span style="font-family:arial,helvetica,sans-serif;">
                        <small>
                            <span style="font-size:12px;"><strong>Mail claims forms to:</strong></span><br />
                            <span style="font-size:11px;">
                                &nbsp; Aliera Healthcare Unity<br />
                                &nbsp; P.O. Box 16818<br />
                                &nbsp; Lubbock, TX 79490-6818<br />
                                or EDI # : ALH01 | 1-800-252-3684
                            </span>
                        </small>
                    </span>
                </p>
            </td>
            <td style="width: 230px; height: 1px; border-left-style: hidden; border-right-style: hidden; text-align: center; vertical-align: top;">
                <p style="text-align: left; line-height:10pt;"><span style="font-family:times new roman,times,serif;"><span style="font-size:18px;"><strong font-size:="" new="" style="color: rgb(0, 44, 119); font-family: " times="" white-space:="">Unity</strong><span new="" style="color: rgb(0, 44, 119); font-family: " times="" white-space:="">&nbsp;VISION&nbsp;CARE&nbsp;</span></span></span></p>

                <p style="text-align: left; line-height:10pt;"><span style="font-size:11px;"><strong>Out of Network Reimbursement: </strong>Members who obtain exams and eyewear from a non-credentialed provider simply submit a claim to the address to&nbsp;</span><span style="font-size: 11px;">the left and will be reimbursed per terms on the front of this card.</span></p>
            </td>
            <td style="width: 96px; height: 1px; vertical-align: top; white-space: nowrap; text-align: right;">
                <p style="margin: 3pt; line-height: 10pt;"><small><span style="font-size:12px;"><span style="font-size:11px;"><strong><span style="font-family:arial,helvetica,sans-serif;">Member Services &amp; Eligibility</span></strong></span></span></small></p>

                <p style="margin: 3pt; line-height: 10pt; text-align: right;"><span style="font-size:16px;"><strong><small><span style="font-family:arial,helvetica,sans-serif;">800-847-9794</span></small></strong></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 300px; height: 1px; line-height: 7pt; text-align: left; vertical-align: middle; background-color: rgb(60, 138, 46);">
                <p style="margin-left: 3px; text-align: center;"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><span style="color:#FFFFFF;"><strong>PROVIDER should verify eligibility before providing treatment or service.</strong></span></span></span></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 100px; height: 1px; text-align: left; vertical-align: top;">
                <p style="margin:3pt; line-height:10pt;"><span style="font-size:11px;"><span style="font-family:Arial,Helvetica,sans-serif;">This participant and any listed dependents are Members of a Health Care Sharing Ministry recognized pursuant to 26 USC &sect; 5000A(d)(2)(B) that does not engage in the business of insurance. Members make monthly contributions that are used to voluntarily pay each other&rsquo;s medical expenses based on a shared set of ethical or religious beliefs.</span></span></p>

                <p style="margin:3pt; line-height:10pt;"><img alt="" src="https://www.alierahealth.com/media/1246/Aliera%20Logo.png" style="width: 90px; height: 25px; float: right; margin-right: 6px; margin-left: 6px;" /></p>

                <p style="margin:3pt; line-height:10pt;"><small><span style="font-size:11px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>MSRA</strong> = Member Shared Responsibility Amount | * Consult fees shown are in-network.</span></span></small></p>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="width: 426px; height: 1px; vertical-align: top; text-align: center; background-color: rgb(60, 138, 46);"><span style="font-size:12px;"><span style="font-family:arial,helvetica,sans-serif;"><strong><span style="color:#FFFFFF;">www.alierahealthcare.com | www.unityhealthshare.com</span></strong></span></span></td>
        </tr>
    </tbody>
</table>', 4)
SET IDENTITY_INSERT [dbo].[TemplateDetails] OFF

Update [DBO].[Product] set ProductLabel = 'DentalVision' where ProductId in (43,397)
GO

Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = '$300 consult fee' where ProductId in (531)
GO
Update [DBO].[Product] set PCP = '$25 consult fee',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = '$300 consult fee' where [ProductId] in (532)
GO
Update [DBO].[Product] set PCP = 'Call for eligibility',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = 'Not eligible' where [ProductId] in (53)
GO
Update [DBO].[Product] set PCP = '$25 consult fee',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = 'Not eligible' where [ProductId] in (55)
GO
Update [DBO].[Product] set PCP ='$25 consult fee',UrgentCare = 'Call for eligibility',Speciality = 'Not eligible',ER = '$300 consult fee' where [ProductId] in (527)
GO

UPDATE [DBO].[MemberQuestionnaire] set MemberQuestionAnswer='Kidney Disease,
Liver Disease,
Hepatitis,
Stenosis of the spine,
Diabetes Type I,
Diabetes Type II,
Heart attack,
Cancer (<5 years),
Tumor,
COPD,
Irritable Bowel Disease,
Heart Disease,
High Blood Pressure,
High Cholesterol,
Epilepsy,
Stroke,
Paralysis,
HIV/AIDS,
None of the above'
WHERE MemberQuestionnaireId = 25
GO
--Auth
DELETE FROM [dbo].[RolePermission]
GO
DELETE FROM [dbo].[PortalRoles]
GO
DELETE FROM [dbo].[PortalRoleTypes]
GO
DELETE FROM [dbo].[PermissionDefinition]
GO
DELETE FROM [dbo].[PermissionGroup]
GO
SET IDENTITY_INSERT [dbo].[PermissionGroup] ON 
GO
INSERT [dbo].[PermissionGroup] ([PermissionGroupId], [Code], [Name], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, N'BROKER_PORTAL', N'Broker Portal', 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionGroup] ([PermissionGroupId], [Code], [Name], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, N'MEMBER_PORTAL', N'Member Portal', 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PermissionGroup] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionDefinition] ON 
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, N'BRK_PORTAL_MESSAGE', N'Messages', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, N'BRK_PORTAL_BULLETIN_BOARD', N'Bulletin Board', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (3, N'BRK_PORTAL_DEMOGRAPHICS', N'Demographics', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (4, N'BRK_PORTAL_GRAPHS', N'Graphs', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5, N'BRK_PORTAL_PRODUCTS', N'Program', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (6, N'BRK_PORTAL_LICENSES', N'Licenses', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (7, N'BRK_PORTAL_DOCUMENTS', N'Documents', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (8, N'BRK_PORTAL_MEMBER_SEARCH', N'Member Search', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (9, N'BRK_PORTAL_BROKER_SEARCH', N'Broker Search', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (10, N'BRK_PORTAL_BROKER_TREE', N'Broker Tree', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (11, N'BRK_PORTAL_VIEW_COMMISSIONS', N'View Commissions', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (12, N'BRK_PORTAL_VIEW_INVOICES', N'View Invoices', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (13, N'BRK_PORTAL_DOCUMENTS_FORMS', N'Documents & Forms', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (14, N'BRK_PORTAL_PASSWORD', N'Password', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (15, N'BRK_PORTAL_SECURITY_QUESTIONS', N'Security Questions', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (16, N'BRK_PORTAL_FAQS', N'FAQs', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (17, N'BRK_PORTAL_CONTACT_US', N'Contact Us', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (18, N'BRK_PORTAL_GROUP', N'Group', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (19, N'BRK_PORTAL_MEMBER_ENROLLMENT', N'Member Enrollment', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (20, N'BRK_ROLE_MANAGEMENT', N'Role Management', 1, 1, CAST(N'2019-07-18T06:41:52.900' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (21, N'BRK_USER_MANAGEMENT', N'User Management', 1, 1, CAST(N'2019-08-21T09:26:28.167' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (22, N'MEM_LEFT_PAN_MEMBER_AND_PROGRAM_DETAILS', N'Left Pane - Member and Program Details', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (23, N'MEM_SHARE_REQUESTS', N'Recent Share Requests', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (24, N'MEM_FAMILY_ACCUMULATORS', N'Family Accumulators', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (25, N'MEM_INDIVIDUAL_MSRA_AND_LIMITS', N'Individual MSRA', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (26, N'MEM_CONTANCT_US', N'Contact Us', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (27, N'MEM_FAQ', N'FAQ', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (28, N'MEM_VIEW_MESSAGES', N'Recent Messages', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (29, N'MEM_CHANGE_PASSWORD', N'Change Password', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (30, N'MEM_CHANGE_SECURITY_QUESTIONS', N'Change Security Questions', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (31, N'MEM_SUBSCRIBER_INFORMATION', N'Subscriber information', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (32, N'MEM_DEPENDENT_INFORMATION', N'Dependent Information', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (33, N'MEM_SERVICE_INFORMATION', N'Service Information', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (34, N'MEM_DIGITAL_ID_CARDS', N'Digital ID Cards', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (35, N'MEM_SPECIAL_SERVICES', N'Special Services', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (36, N'MEM_MY_PLAN_DETAILS', N'My Plan Details', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (37, N'MEM_FIND_PROVIDERS', N'Find Providers', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (38, N'MEM_VIEW_PAYMENT_RECEIPTS', N'View Payment Receipts', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (39, N'MEM_CHANGE_PAYMENT_METHOD', N'Change Payment Method', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (40, N'MEM_DOCUMENTS_AND_FORMS', N'Documents and Forms', 2, 1, CAST(N'2019-07-17T12:16:45.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionDefinition] ([PermissionDefinitionId], [Code], [Name], [PermissionGroupId], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (41, N'BRK_PORTAL_NOSELL_STATES', N'No Sell States', 1, 1, CAST(N'2019-09-20 10:26:41.613' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PermissionDefinition] OFF
GO
SET IDENTITY_INSERT [dbo].[PortalRoleTypes] ON 
GO
INSERT [dbo].[PortalRoleTypes] ([PortalRoleTypeId], [Name]) VALUES (1, N'Internal')
GO
INSERT [dbo].[PortalRoleTypes] ([PortalRoleTypeId], [Name]) VALUES (2, N'External')
GO
SET IDENTITY_INSERT [dbo].[PortalRoleTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[PortalRoles] ON 
GO
INSERT [dbo].[PortalRoles] ([PortalRoleId], [Code], [Name], [IsCustomRole], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [PortalRoleTypeId], [Status]) VALUES (1, N'SYS_ADMIN', N'Systems Administrator', 0, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 18723, CAST(N'2019-08-28T13:24:30.343' AS DateTime), 1, 1)
GO
INSERT [dbo].[PortalRoles] ([PortalRoleId], [Code], [Name], [IsCustomRole], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [PortalRoleTypeId], [Status]) VALUES (2, N'BROKER', N'Broker', 0, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 31069, CAST(N'2019-08-28T12:03:41.383' AS DateTime), 2, 1)
GO
INSERT [dbo].[PortalRoles] ([PortalRoleId], [Code], [Name], [IsCustomRole], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [PortalRoleTypeId], [Status]) VALUES (3, N'BRK_SUPER_ADMIN', N'Broker Super Admin', 0, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL, 2, 1)
GO
INSERT [dbo].[PortalRoles] ([PortalRoleId], [Code], [Name], [IsCustomRole], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [PortalRoleTypeId], [Status]) VALUES (4, N'MEMBER', N'Member', 0, 1, CAST(N'2019-08-19T13:28:33.150' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime), 2, 1)
GO
SET IDENTITY_INSERT [dbo].[PortalRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[RolePermission] ON 
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, 1, 1, 2, 1, 2, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 18723, CAST(N'2019-08-28T13:24:30.343' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, 1, 2, 2, 1, 2, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 18723, CAST(N'2019-08-28T13:24:30.343' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (3, 2, 1, 2, 1, 2, 2, 2, 1, CAST(N'2019-08-28T12:03:41.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (4, 2, 3, 2, 1, 1, 2, 2, 1, CAST(N'2019-08-28T12:03:41.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (5, 2, 2, 2, 1, 2, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (6, 2, 4, 2, 1, 2, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (7, 2, 5, 2, 1, 2, 2, 2, 1, CAST(N'2019-08-28T12:03:41.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (8, 2, 6, 2, 2, 2, 2, 2, 1, CAST(N'2019-08-28T15:04:25.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (9, 2, 7, 1, 1, 2, 1, 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (10, 2, 8, 2, 1, 2, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (11, 2, 9, 2, 1, 2, 2, 2, 1, CAST(N'2019-08-28T12:03:41.383' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (12, 2, 10, 2, 1, 2, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (13, 2, 11, 2, 1, 2, 2, 1, 1, CAST(N'2019-08-28T12:03:04.183' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (14, 2, 12, 2, 1, 2, 2, 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (15, 2, 13, 1, 1, 1, 1, 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (16, 2, 14, 2, 1, 1, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (17, 2, 15, 2, 1, 1, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (18, 2, 16, 2, 2, 2, 2, 2, 1, CAST(N'2019-08-28T15:04:30.483' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (19, 2, 17, 2, 1, 2, 2, 2, 1, CAST(N'2019-08-28T12:03:04.183' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (20, 2, 18, 2, 1, 2, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (21, 2, 19, 1, 1, 2, 2, 2, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (22, 2, 20, 1, 1, 1, 2, 2, 1, CAST(N'2019-08-21T09:29:04.303' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (23, 2, 21, 1, 1, 1, 2, 2, 1, CAST(N'2019-08-21T09:29:12.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (24, 4, 22, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-17T12:18:35.250' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (25, 4, 23, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (26, 4, 24, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (27, 4, 25, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (28, 4, 26, 1, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (29, 4, 27, 2, 2, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (30, 4, 28, 2, 1, 1, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (31, 4, 29, 2, 1, 1, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (32, 4, 30, 2, 1, 1, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (33, 4, 31, 2, 1, 1, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (34, 4, 32, 1, 1, 1, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (35, 4, 33, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (36, 4, 34, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (37, 4, 35, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (38, 4, 36, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (39, 4, 37, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (40, 4, 38, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (41, 4, 39, 2, 1, 1, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (42, 4, 40, 2, 1, 2, 2, 2, 5, CAST(N'2019-07-31T12:41:39.840' AS DateTime), 25062, CAST(N'2019-08-26T13:51:23.593' AS DateTime))
GO
INSERT [dbo].[RolePermission] ([RolePermissionId], [PortalRoleId], [PermissionDefinitionId], [CanCreate], [CanRead], [CanUpdate], [CanDelete], [CanDownload], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (43, 2, 41, 2, 1, 1, 2, 2, 2, CAST(N'2019-09-20 10:26:41.613' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[RolePermission] OFF
GO

SET IDENTITY_INSERT [dbo].[CombinedProduct] ON 
GO
INSERT [dbo].[CombinedProduct] ([CombinedProductId], [PlanId], [ProductCode]) VALUES (1, N'25587, 25593', 25591)
GO
INSERT [dbo].[CombinedProduct] ([CombinedProductId], [PlanId], [ProductCode]) VALUES (2, N'25588, 25593', 25592)
GO
INSERT [dbo].[CombinedProduct] ([CombinedProductId], [PlanId], [ProductCode]) VALUES (3, N'25585, 25593', 25589)
GO
INSERT [dbo].[CombinedProduct] ([CombinedProductId], [PlanId], [ProductCode]) VALUES (4, N'25586, 25593', 25590)
GO
SET IDENTITY_INSERT [dbo].[CombinedProduct] OFF
GO

UPDATE PRODUCT SET ProductLogo = 'https://aliera-documents.s3.amazonaws.com/TrinityCare-EverydayValue-01%5B1%5D.png' WHERE ProductId = 518
UPDATE PRODUCT SET ProductLogo = 'https://aliera-documents.s3.amazonaws.com/Trinitycare-EverydayPlus-01%5B1%5D.png' WHERE ProductId = 519
UPDATE PRODUCT SET ProductLogo = 'https://aliera-documents.s3.amazonaws.com/TrinityCare-EverydayPremium-01%5B1%5D.png' WHERE ProductId = 520
UPDATE PRODUCT SET ProductLogo = 'https://aliera-documents.s3.amazonaws.com/TrinityCare-CompleteValue-01%5B1%5D.png' WHERE ProductId = 521
UPDATE PRODUCT SET ProductLogo = 'https://aliera-documents.s3.amazonaws.com/TrinityCare-CompletePlus-01%5B1%5D.png' WHERE ProductId = 522
UPDATE PRODUCT SET ProductLogo = 'https://aliera-documents.s3.amazonaws.com/TrinityCare-CompletePremium-01%5B1%5D.png' WHERE ProductId = 523

ALTER TABLE [dbo].[UserRoleAssociation]  WITH CHECK ADD  CONSTRAINT [UserRoleAssociation_role_fk] FOREIGN KEY([PortalRoleId])
REFERENCES [dbo].[PortalRoles] ([PortalRoleId])
GO
ALTER TABLE [dbo].[UserRoleAssociation] CHECK CONSTRAINT [UserRoleAssociation_role_fk]
GO

SET IDENTITY_INSERT [dbo].[Product] ON
GO
INSERT [dbo].[Product] 
([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) 
VALUES 
(533, N'Trinity Vision', 7, 1, CAST(N'2019-09-16T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/Trinity_HealthShare_Vision_Logo.png', NULL, CAST(30.00 AS Decimal(5, 2)), 25596, N'https://aliera-documents.s3.amazonaws.com/TrinityVision_SellSheet.pdf', NULL, 1, CAST(N'2019-09-16T15:22:55.000' AS DateTime), 1, NULL, NULL, CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Trinity Vision Sell Sheet', 0, 0, N'Vision', 0)
GO
INSERT [dbo].[Product] 
([ProductId], [Name], [ProductCategoryId], [ProductSubCategoryId], [StartDate], [TermDate], [ProductLogo], [ExcludedSaleStates], [ApplicationFee], [ProductCode], [DocumentPath], [Description], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [DocumentID], [FamilyRiderFee], [TobaccoUserFee], [ShellSheetName], [CanPayNextDay], [IsGroupProduct], [ProductLabel], [IsPolicyTerm]) 
VALUES 
(534, N'Trinity Dental & Vision', 7, 1, CAST(N'2019-09-16T00:00:00.000' AS DateTime), NULL, N'https://aliera-documents.s3.amazonaws.com/Trinity_HealthShare_DentalVision_Logo.png', NULL, CAST(30.00 AS Decimal(5, 2)), 25594, N'https://aliera-documents.s3.amazonaws.com/Trinity-VisionDental-NP-Brochure.pdf', NULL, 1, CAST(N'2019-09-16T15:22:55.000' AS DateTime), 1, NULL, NULL, CAST(0.00 AS Decimal(8, 2)), CAST(0.00 AS Decimal(8, 2)), N'Trinity Dental & Vision Sell Sheet', 0, 0, N'DentalVision', 0)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

UPDATE [Plan] SET ProductId = 533 WHERE PlanID in (145)
GO
UPDATE [Plan] SET ProductId = 534 WHERE PlanID in (143)
GO

INSERT [dbo].[PlanPackage] ([PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (143, NULL, 0)
GO
INSERT [dbo].[PlanPackage] ([PlanId], [PackagedPlanIds], [IsMigrated]) VALUES (145, NULL, 0)
GO

UPDATE Product SET FamilyRiderFee = 0.00 WHERE ProductId IN (521, 522, 523) 
GO
UPDATE Product SET TermDate = '2019-01-01 00:00:00.000'  WHERE ProductId IN (43, 45, 47)
GO

UPDATE MemberQuestionnaire SET MemberQuestionAnswer='Kidney Disease,Liver Disease,Hepatitis,Stenosis of the spine,Diabetes Type I,Diabetes Type II,Heart attack,Cancer (<5 years),Tumor,COPD,Irritable Bowel Disease,Heart Disease,High Blood Pressure,High Cholesterol,Epilepsy,Stroke,Paralysis,HIV/AIDS,None of the above'
WHERE MemberQuestionnaireId=9
GO

UPDATE [dbo].[Notification] SET [From]='noreply-portal@alieracompanies.com'
WHERE [Type] in (7,8,9,10,11,12,13,14,15,16,26)
GO

UPDATE [dbo].[Notification] SET [Content]='Hello <b>{firstname} {lastname},</b></br/> <br/>Per your request, please use the following link to reset your password for your member portal access. If you did not try to reset your password or if you need further assistance, please call our Member Services Team: 844-892-9994.<br/><br/><br/> <a href="{link}"> Password Reset Link </a> </br/> <br/> Thank You<br/>Aliera Healthcare'
WHERE [Type]=9
GO

INSERT INTO [dbo].[MasterData] ([Key], [Value]) VALUES ('MemberInquiryType', 'Program Information,memberservices@alieracompanies.com')
GO

INSERT INTO [dbo].[MasterData] ([Key], [Value]) VALUES ('MemberInquiryType', 'Monthly Contribution,billing@alieracompanies.com')
GO

INSERT INTO [dbo].[MasterData] ([Key], [Value]) VALUES ('MemberInquiryType', 'Sharing Request,msclaimescalation@AlieraCompanies.com')
GO

INSERT INTO [dbo].[MasterData] ([Key], [Value]) VALUES ('MemberInquiryType', 'Other,memberservices@alieracompanies.com')
GO

UPDATE [Plan] set Type = 1 WHERE PlanId in (660,678,769)
GO

SET IDENTITY_INSERT [dbo].[ProductProviderNetwork] ON
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (58, 533, 4)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (59, 534, 3)
INSERT [dbo].[ProductProviderNetwork] ([ProductProviderNetworkId], [ProductId], [ProviderNetworkId]) VALUES (60, 534, 4)
SET IDENTITY_INSERT [dbo].[ProductProviderNetwork] OFF

UPDATE MasterData SET [Value] = 'Last 3 Months' WHERE MasterDataId = 36
GO
UPDATE MasterData SET [Value] = 'Current Month to Date' WHERE MasterDataId = 42
GO
DELETE FROM MasterData WHERE MasterDataId IN (43,44,45,46)
GO

UPDATE [Notification]
SET Content ='From: {firstname} {lastname} &lt;{email} &gt;<br/><br/> Phone: {phonenumber} <br/><br/> Inquiry type: {Inquirytype} <br/><br/>  Message:<br/> {message}<br/><br/>Regards,<br/>Aliera Healthcare<br/>Member Services Team'
WHERE [Type] = 14
GO