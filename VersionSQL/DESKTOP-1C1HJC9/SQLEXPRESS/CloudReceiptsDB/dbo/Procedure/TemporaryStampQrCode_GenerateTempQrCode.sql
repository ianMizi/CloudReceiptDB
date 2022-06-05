/****** Object:  Procedure [dbo].[TemporaryStampQrCode_GenerateTempQrCode]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[TemporaryStampQrCode_GenerateTempQrCode]
@StampCampaignCode as varchar(250),
@EnterpriseAccNo as varchar(250),
@SubscriberAccNo as varchar(250)

AS

--BEGIN

--Declare @StampCardCode as varchar (500)=null  
--  -- set @StampCardCode=( SELECT top 1 StampCardCode FROM [CloudReceiptsDB].[dbo].[AyohaUserStampCard] where StampCampaignCode='84938-CRCom-71100-0133376958-346273-Custome' and EnterpriseAccNo='CRCom-71100' and SubscriberAccNo='Mizi-01113218926-9309422' and StampedStatus='NO' order by ID Asc)
--  set @StampCardCode=( SELECT top 1 StampCardCode FROM [CloudReceiptsDB].[dbo].[AyohaUserStampCard] where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and SubscriberAccNo=@SubscriberAccNo and StampedStatus='NO' order by ID Asc)
  

--  DELETE FROM TemporaryStampQrCode WHERE StampCardCode=@StampCardCode

--END





BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Declare @StampCardCode as varchar (500)=null  
  -- set @StampCardCode=( SELECT top 1 StampCardCode FROM [CloudReceiptsDB].[dbo].[AyohaUserStampCard] where StampCampaignCode='84938-CRCom-71100-0133376958-346273-Custome' and EnterpriseAccNo='CRCom-71100' and SubscriberAccNo='Mizi-01113218926-9309422' and StampedStatus='NO' order by ID Asc)
  set @StampCardCode=( SELECT top 1 StampCardCode FROM [CloudReceiptsDB].[dbo].[AyohaUserStampCard] where StampCampaignCode=@StampCampaignCode and EnterpriseAccNo=@EnterpriseAccNo and SubscriberAccNo=@SubscriberAccNo and StampedStatus='NO' order by ID Asc)
  
 IF NOT EXISTS (SELECT StampCardCode  FROM TemporaryStampQrCode WHERE StampCardCode=@StampCardCode) 
  
  insert Into TemporaryStampQrCode (StampCardCode) values (@StampCardCode)
 







END
BEGIN

select TempStampQrCode from TemporaryStampQrCode where StampCardCode=@StampCardCode

END
