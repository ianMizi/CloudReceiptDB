/****** Object:  Procedure [dbo].[AyohaUserProfile_Insert]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaUserProfile_Insert]
  
  

	  
       @AccountNo as varchar(250) = Null,
       @AccountName as varchar(250) = Null,
       @Email as varchar(250) = Null,
       @PhoneNo as varchar(250) = Null,
       @Photo as varchar(250) = Null,
       --@Gender as varchar(250) = Null,
       --@DOB as varchar(250) = Null,
       @UserName as varchar(250) = Null,
       @Katalaluan as varchar(250) = Null,
	   @PhotoName as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 

	 --declare @AccountNo as varchar(250) = Null
	 --Set @AccountNo=@AccountName+'-'+@PhoneNo+'-'+(select [dbo].[AyohaUserProfile_Count]() as t)




	   INSERT INTO dbo.AyohaUserProfile
          ( 
         
	
       [AccountNo]
      ,[AccountName]
      ,[Email]
      ,[PhoneNo]
      ,[Photo]
      --,[Gender]
      --,[DOB]
      ,[UserName]
      ,[Katalaluan]
	  ,[PhotoName] 
          ) 
     VALUES 
          ( 
     @AccountNo,
       @AccountName,
       @Email,
       @PhoneNo,
       @Photo,
       --@Gender,
       --@DOB,
       @UserName,
       @Katalaluan,
	   @PhotoName      
          ) 
END

--select * from AyohaEnterprisesUser
