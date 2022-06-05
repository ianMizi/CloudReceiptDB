/****** Object:  Procedure [dbo].[StampCampaign_UpdateStampContent]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCampaign_UpdateStampContent]  


@StampContentNo varchar (50), 
@StampCampaignCode varchar (50), 
@StampContent varchar (5500) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 

	 if (@StampContentNo='1')
update StampCampaign
set Stamp1=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='2')
update StampCampaign
set Stamp2=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='3')
update StampCampaign
set Stamp3=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='4')
update StampCampaign
set Stamp4=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='5')
update StampCampaign
set Stamp5=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='6')
update StampCampaign
set Stamp6=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='7')
update StampCampaign
set Stamp7=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='8')
update StampCampaign
set Stamp8=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='9')
update StampCampaign
set Stamp9=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='10')
update StampCampaign
set Stamp10=@StampContent
where StampCampaignCode=@StampCampaignCode
else
	 if (@StampContentNo='11')
update StampCampaign
set Stamp11=@StampContent
where StampCampaignCode=@StampCampaignCode






	END
