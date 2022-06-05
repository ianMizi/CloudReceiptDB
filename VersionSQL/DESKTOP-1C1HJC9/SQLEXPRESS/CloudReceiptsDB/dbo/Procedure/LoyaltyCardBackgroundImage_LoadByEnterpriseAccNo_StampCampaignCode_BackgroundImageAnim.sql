/****** Object:  Procedure [dbo].[LoyaltyCardBackgroundImage_LoadByEnterpriseAccNo_StampCampaignCode_BackgroundImageAnim]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[LoyaltyCardBackgroundImage_LoadByEnterpriseAccNo_StampCampaignCode_BackgroundImageAnim]


@EnterpriseAccNo as varchar(250),
@StampCampaignCode as varchar(250)

AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
--select  b.PlateNumber,b.VehicleModel ,b.CustomerName,b.CustomerIdentity,b.Mileage,b.TotalAmount,b.UTCBillDate,bd.BillId,bd.Quantity,bd.Description,bd.Price,bd.Amount,ud.ReferralPerson,c.CompanyName from Bills b inner join BillDetails bd
--  on b.BillId = bd.BillId
--  inner join UserDetails ud on b.UserDetailId = ud.UserDetailId
--inner join Companies c on c.CompanyId = ud.CompanyId
--  where b.CustomerIdentity='1111111'
--  order by b.UTCBillDate desc
--Select * from LoyaltyCardBackgroundImage where EnterpriseAccNo=@EnterpriseAccNo and StampCampaignCode=@StampCampaignCode and RowStatus='Active' and ShowHide='Show'



Select L. * ,SC.isAnimated,SC.AnimatedInterval from LoyaltyCardBackgroundImage L  inner join [dbo].[StampCampaign] SC on L.StampCampaignCode=SC.StampCampaignCode
	where L.StampCampaignCode=@StampCampaignCode and L.EnterpriseAccNo=@EnterpriseAccNo  and L.ShowHide='Show' and L.RowStatus='Active'

END
