/****** Object:  Procedure [dbo].[StampCard_UpdateShowHide]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[StampCard_UpdateShowHide]  

@ID int,
@StampCampaignCode varchar (50), 
@EnterpriseAccNo varchar(100),
@ModifiedBy varchar (100),
@StampContentNote varchar (550),
@ShowHide varchar (100)
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 


	 update StampCard
	 set ShowHide=@ShowHide,StampContentNote=@StampContentNote,ModifiedBy=@ModifiedBy,ModifiedDate=getDate()
	 where ID=@ID and EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode=@StampCampaignCode




	END



	--SELECT *
 -- FROM [CloudReceiptsDB].[dbo].[StampCard]

 -- SELECT *
 -- FROM [CloudReceiptsDB].[dbo].[StampCampaign]
