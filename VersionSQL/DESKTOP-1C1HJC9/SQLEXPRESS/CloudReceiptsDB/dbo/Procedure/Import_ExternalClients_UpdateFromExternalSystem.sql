/****** Object:  Procedure [dbo].[Import_ExternalClients_UpdateFromExternalSystem]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Import_ExternalClients_UpdateFromExternalSystem]
 



      @MobilePhone varchar (250)= null,
       @Email varchar (250)= null,
	     @PlayerID varchar (750)= null,
		 @UserLoginID varchar (250)= null
	
AS 
BEGIN 
     SET NOCOUNT ON 

 

  IF EXISTS (SELECT UserLoginID  FROM Import_ExternalClients WHERE UserLoginID=@UserLoginID and 1=1)
 Update Import_ExternalClients
 set PlayerID=@PlayerID,Email=@Email,MobilePhone=@MobilePhone
 where UserLoginID=@UserLoginID
 
 Update Import_ExternalClients
 set SearchCol=@MobilePhone +'|'+@Email+'|'+Name
 where UserLoginID=@UserLoginID     
       
END

--select* from  Import_ExternalClients where UserLoginID is null

--select I.AccountOwner,I.Email,I.Name,u.UserName,u.EmailReg from  Import_ExternalClients I inner join gpsuser u on I.Email=u.EmailReg

--update ExternalClients 
--set ExternalClients.UserLoginID=u.UserName
--from Import_ExternalClients ExternalClients
--inner join 
--gpsuser u
--on ExternalClients.Email=u.EmailReg



--select * into Import_ExternalClients_Backup from Import_ExternalClients

--select * from gpsuser where UserName='Khalish Nadime'
