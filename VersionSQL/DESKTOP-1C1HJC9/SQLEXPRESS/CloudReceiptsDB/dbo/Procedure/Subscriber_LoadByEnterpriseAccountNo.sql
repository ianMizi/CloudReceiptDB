/****** Object:  Procedure [dbo].[Subscriber_LoadByEnterpriseAccountNo]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Subscriber_LoadByEnterpriseAccountNo]
 



      @EnterpriseAccountNo varchar (250)= null
     
	
AS 
BEGIN 
     SET NOCOUNT ON 

    select   ROW_NUMBER() OVER(ORDER BY ES.ID DESC) AS RowNumber,    ES.SubcriberAccNo,ES.SubscribedDate,
	 CM.CR_AccountName,CM.CR_Email,CM.CR_PhoneNumber ,[dbo].[Enterprise_LoyaltyCardType](@EnterpriseAccountNo) as LoyaltyCardType,
	 [dbo].[LoyaltyStamp_CountStamps](@EnterpriseAccountNo,ES.SubcriberAccNo) as countStamps,[dbo].[LoyaltyStamp_LastStampsDate](@EnterpriseAccountNo,ES.SubcriberAccNo) as LastStampDate,
	 [dbo].[LoyaltyStamp_LastStampsBy](@EnterpriseAccountNo,ES.SubcriberAccNo)as LastStampBy,ES.SearchCol,CM.CR_Photo from EnterpriseSubscriber ES inner join CloudReceipts_MobileUser CM
  on ES.SubcriberAccNo=CM.CR_AccountNo where ES.EnterpriseAccNo=@EnterpriseAccountNo  
       
END
