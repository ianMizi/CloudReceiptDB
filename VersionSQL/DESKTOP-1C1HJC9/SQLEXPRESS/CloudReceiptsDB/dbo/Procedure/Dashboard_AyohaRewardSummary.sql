/****** Object:  Procedure [dbo].[Dashboard_AyohaRewardSummary]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Dashboard_AyohaRewardSummary]  


      @SubscriberAccNo varchar (250)
	   
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 
 Declare    @StrSubscriberAccNo varchar (250)=@SubscriberAccNo
 Declare @CountsStamp as int
  Declare @CountsPoint as int
  Declare @CountCampaignRewardTypeStamp as int
  Declare @CountCampaignRewardTypePoint as int
 
 
 
 
 DECLARE @StartDate DATE = dateadd(day, 1-datepart(dw, getdate()), CONVERT(date,getdate())) 
  , @EndDate DATE = dateadd(day, 7-datepart(dw, getdate()), CONVERT(date,getdate()))


--Select  DATEADD(DAY, nbr - 1, @StartDate) as CurrentWeekDates
--FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY c.ID ) AS Nbr
--          FROM     [AyohaUserStampCard] c
--        ) nbrs
--WHERE   nbr - 1 <= DATEDIFF(DAY, @StartDate, @EndDate)








Set @CountsStamp=(SELECT Sum(CountsStamp) as CountsStamp
FROM [LoyaltyStamp]
WHERE StampedByDate in (Select  DATEADD(DAY, nbr - 1, @StartDate) as CurrentWeekDates
FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY c.ID ) AS Nbr
          FROM     [LoyaltyStamp] c
        ) nbrs
WHERE   nbr - 1 <= DATEDIFF(DAY, @StartDate, @EndDate))
and SubscriberAccNo=@StrSubscriberAccNo and RowStatus='Active' and StampClaimStatus='UnClaimed')




Set @CountsPoint=(SELECT Sum(CountsPoint) as CountsPoint
FROM [LoyaltyPoint]
WHERE PointedByDate in (Select  DATEADD(DAY, nbr - 1, @StartDate) as CurrentWeekDates
FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY c.ID ) AS Nbr
          FROM     [LoyaltyPoint] c
        ) nbrs
WHERE   nbr - 1 <= DATEDIFF(DAY, @StartDate, @EndDate))
and SubscriberAccNo=@StrSubscriberAccNo and RowStatus='Active' and PointClaimStatus='UnClaimed')





	END

	BEGIN


	Set @CountCampaignRewardTypeStamp=(SELECT  Count(CampaignRewardType) as CountCampaignRewardTypeStamp
  FROM [CloudReceiptsDB].[dbo].[Membership]
  where SubscriberAccNo=@StrSubscriberAccNo and RowStatus='Active' and CampaignRewardType='Stamp')



	END


	BEGIN


Set @CountCampaignRewardTypePoint=(	SELECT  Count(CampaignRewardType)  as CountCampaignRewardTypePoint
  FROM [CloudReceiptsDB].[dbo].[Membership]
  where SubscriberAccNo=@StrSubscriberAccNo and RowStatus='Active' and CampaignRewardType='Point')



	END


	Begin


	select @CountsStamp as CountsStamp,@CountsPoint as CountsPoint,@CountCampaignRewardTypeStamp as CountCampaignRewardTypeStamp,@CountCampaignRewardTypePoint as CountCampaignRewardTypePoint

	end
