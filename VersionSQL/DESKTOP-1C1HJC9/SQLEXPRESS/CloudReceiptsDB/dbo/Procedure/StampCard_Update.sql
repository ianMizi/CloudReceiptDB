/****** Object:  Procedure [dbo].[StampCard_Update]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[StampCard_Update]  

@ID int,
@StampCampaignCode varchar (50), 
@StampContent varchar (5500) ,
@StampContentNote varchar (500) ,
@EnterpriseAccNo varchar(100),
@ModifiedBy varchar (100),
@TextOne varchar (100),
@TextTwo varchar(100),
@isRedeemItem varchar(100)
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 


	 update StampCard
	 set StampContent=@StampContent,StampContentNote=@StampContentNote,TextOne=@TextOne,TextTwo=@TextTwo,ModifiedBy=@ModifiedBy,ModifiedDate=getDate(),isRedeemItem=@isRedeemItem
	 where ID=@ID and EnterpriseAccNo=@EnterpriseAccNo




	END



	--SELECT *
 -- FROM [CloudReceiptsDB].[dbo].[StampCard]

 -- SELECT *
 -- FROM [CloudReceiptsDB].[dbo].[StampCampaign]
