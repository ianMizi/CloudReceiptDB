/****** Object:  Procedure [dbo].[MembershipCardEnterprisesEntitled_Delete]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[MembershipCardEnterprisesEntitled_Delete]
  
      @ID int = Null,
	  @CreatedBy as varchar (250)=Null
     
AS 
BEGIN 
     SET NOCOUNT ON 
Update  MembershipCardEnterprisesEntitled
set RowStatus='InActive',
ModifiedBy=@CreatedBy,
ModifiedDate=getDate()
where ID=@ID

END
