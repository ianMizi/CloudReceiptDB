/****** Object:  Procedure [dbo].[Enterprises_LoadByRowStatus]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Enterprises_LoadByRowStatus]


@RowStatus as varchar(250)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

Select  E.* , [dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](E.BusinessTypeGroupCode) as BusinessTypeIconPath ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](E.BusinessTypeGroupCode) as BusinessTypeGroup from Enterprises E 
 where E.RowStatus=@RowStatus


--Select  E.* , [dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](E.BusinessTypeGroupCode) as BusinessTypeIconPath ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](E.BusinessTypeGroupCode) as BusinessTypeGroup from Enterprises E inner join StampCampaignEnterprises SCE 
--on E.EnterpriseAccNo=SCE.EnterpriseAccNo where SCE.RowStatus=@RowStatus


END



--Select  E.* , [dbo].[BusinessTypeGroup_GetBusinessTypeGroupsIconPath](E.BusinessTypeGroupCode) as BusinessTypeIconPath ,[dbo].[BusinessTypeGroup_GetBusinessTypeGroup](E.BusinessTypeGroupCode) as BusinessTypeGroup from Enterprises E inner join StampCampaignEnterprises SCE 
--on E.EnterpriseAccNo=SCE.EnterpriseAccNo where SCE.RowStatus='Active'
