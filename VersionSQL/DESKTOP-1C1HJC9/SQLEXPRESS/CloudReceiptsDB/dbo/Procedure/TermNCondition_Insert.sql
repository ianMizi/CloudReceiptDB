/****** Object:  Procedure [dbo].[TermNCondition_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[TermNCondition_Insert]  


@ID int
 ,@Term_N_Condition varchar (MAX)=null
      , @Jenis varchar (150)=null  
      , @EnterpriseAcc varchar (150)=null
	  , @RowStatus varchar (50)=null
	  , @CreatedBy varchar (150)=null
AS 
BEGIN 
     SET NOCOUNT ON 
     
   IF Not EXISTS (SELECT ID  FROM TermNCondition WHERE ID=@ID  and 1=1)
 
	   INSERT INTO dbo.TermNCondition
          ( 
                [Term_N_Condition]
      ,[Jenis]
      ,[EnterpriseAcc]
      ,[RowStatus]
	   ,[CreatedBy]
    
		          ) 
     VALUES 
          ( 

  @Term_N_Condition
      ,@Jenis
      ,@EnterpriseAcc
      ,@RowStatus
      ,@CreatedBy
	  )


	  else

	  Update TermNCondition
	  set 
	  Term_N_Condition=@Term_N_Condition
	        ,Jenis=@Jenis
      ,EnterpriseAcc=@EnterpriseAcc
      ,RowStatus=@RowStatus
      ,ModifiedBy=@CreatedBy
      ,ModifiedDate=getDate()
    
	  where ID =@ID

	END
