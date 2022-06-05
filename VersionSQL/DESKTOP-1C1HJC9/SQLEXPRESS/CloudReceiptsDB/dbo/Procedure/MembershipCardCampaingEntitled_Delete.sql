/****** Object:  Procedure [dbo].[MembershipCardCampaingEntitled_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[MembershipCardCampaingEntitled_Delete]
  
      @ID int = Null,
	  @CreatedBy as varchar (250)=Null
     
AS 
BEGIN 
     SET NOCOUNT ON 
Update  MembershipCardCampaingEntitled
set RowStatus='InActive',
ModifiedBy=@CreatedBy,
ModifiedDate=getDate()
where ID=@ID

END
