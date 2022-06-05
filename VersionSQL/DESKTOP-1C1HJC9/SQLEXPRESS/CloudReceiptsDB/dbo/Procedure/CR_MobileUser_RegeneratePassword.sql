/****** Object:  Procedure [dbo].[CR_MobileUser_RegeneratePassword]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[CR_MobileUser_RegeneratePassword]  

	@Email varchar (150)= null,
	@GenID varchar (150)= null
	--,
	--@CR_VerifyString varchar (50)
AS
BEGIN 
     SET NOCOUNT ON 


	 --	IF EXISTS (SELECT CR_Email FROM CloudReceipts_MobileUser WHERE CR_Email=@Email and CR_RowActive='Active')
    --BEGIN
   
DECLARE @s varchar(15);
SET @s=(SELECT SUBSTRING(@Email, 1, 2) AS ExtractString)+@GenID
--SET @s = (
--SELECT
--	c1 AS [text()]
--FROM
--	(
--	SELECT TOP (5) c1
--	FROM
--	  (
--    VALUES
--      ('A'), ('B'), ('C'), ('D'), ('E'), ('F'), ('G'), ('H'), ('I'), ('J'),
--      ('K'), ('L'), ('M'), ('N'), ('O'), ('P'), ('Q'), ('R'), ('S'), ('T'),
--      ('U'), ('V'), ('W'), ('X'), ('Y'), ('Z'), ('0'), ('1'), ('2'), ('3'),
--      ('4'), ('5'), ('6'), ('7'), ('8'), ('9')	
--	  ) AS T1(c1)
--	ORDER BY ABS(CHECKSUM(NEWID()))
--	) AS T2
--FOR XML PATH('')
--);


update CloudReceipts_MobileUser set CR_Password=@s WHERE CR_Email=@Email and CR_RowActive='Active'
  select CR_Password As CR_Password from CloudReceipts_MobileUser  WHERE CR_Email=@Email and CR_RowActive='Active'
--select CR_Password from CloudReceipts_MobileUser  WHERE CR_Email=@Email and CR_RowActive='Active'

    --END
  -- ELSE
 --  BEGIN
   --tak gunA
   --select '12345ABC' as CR_Password from CloudReceipts_MobileUser  WHERE CR_Email=@Email and CR_RowActive='Active'
  --select g.Password from GPSuser g  where g.UserName = @UserName and g.EmailReg=@Email and Status='1'
  -- END

	 --Select ID, CR_MykadNo,CR_AccountNo,CR_AccountName, CR_UseName,CR_Password,CR_Email,CR_PhoneNumber,CR_RegisterDate,CR_Status,CR_LastLoginDate,CR_LoginIP,CR_VeriyDate,CR_ModifiedDate,CR_Version,CR_Photo,[dbo].[CloudReceiptsMobileUser_VersionDayUsed](CR_AccountNo) as DayUsed, [CR_EndDateDay] from CloudReceipts_MobileUser where CR_UseName=@UserName and CR_Password=@Password  and CR_RowActive='Active' and 1=1
     
   --select '12345ABC' as CR_Password from CloudReceipts_MobileUser  WHERE CR_Email=@Email and CR_RowActive='Active'
	 --update CloudReceipts_MobileUser
	 --set CR_LastLoginDate=getDate()
	 --where CR_UseName=@UserName and CR_Password=@Password  and CR_RowActive='Active' and 1=1


    

	  
	END



	  






		
