/****** Object:  Procedure [dbo].[AyohaUserProfile_UnClaimedTotalStampPoint]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaUserProfile_UnClaimedTotalStampPoint]
  
	@SubscriberAccNo varchar (250)
	
AS 
BEGIN 
     SET NOCOUNT ON 
	 Declare @AccountNo  as varchar(250)
	 Declare @UnClaimedTotalPoint  int
	 Declare @UnClaimedTotalStamp  int

	 Set @AccountNo=(select @SubscriberAccNo)
	 set @UnClaimedTotalPoint=(Select [dbo].[LoyaltyPoint_TotalPoint_UnClaimed] (@AccountNo) as TotalPoint)
     set @UnClaimedTotalStamp=(Select [dbo].[LoyaltyStamp_TotalStamps_UnClaimed] (@AccountNo) as TotalStamp)
   
 Select @UnClaimedTotalPoint as UnClaimedTotalPoint, @UnClaimedTotalStamp as UnClaimedTotalStamp,0 as NextRedeemPoint,0 as NextRedeemStamp

END
