/****** Object:  Procedure [dbo].[MembershipCard_UpdateRowStatus]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[MembershipCard_UpdateRowStatus]
  



	   @ID as int,
      @RowStatus as varchar(250) = Null,
      @EnterpriseAccNo as varchar(250) = Null,
	  @CreatedBy as varchar (250)
   

AS 
BEGIN 
     SET NOCOUNT ON 
 
 Update dbo.MembershipCard
          
    Set

	  
     ModifiedBy= @CreatedBy,
	 ModifiedDate=getDate(),
      RowStatus=@RowStatus

	WHERE EnterpriseAccNo=@EnterpriseAccNo and ID=@ID
 
	
END

--select * from AyohaEnterprisesUser
