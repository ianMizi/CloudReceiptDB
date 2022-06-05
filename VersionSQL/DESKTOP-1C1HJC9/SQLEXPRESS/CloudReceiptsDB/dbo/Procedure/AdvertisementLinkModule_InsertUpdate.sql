/****** Object:  Procedure [dbo].[AdvertisementLinkModule_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AdvertisementLinkModule_InsertUpdate]
  
      
      @ID as int,
      @AdvertisementCode as varchar(250) = Null,
      @ModuleCode as int = Null,
      @ModuleName as varchar(250) = Null,
	  @ModuleDesc as varchar(550) = Null,
	  @RowStatus as varchar(250) = Null,
	  @EnterpriseHQAccNo as varchar(250) = Null,
      @EnterpriseAccNo as varchar(250) = Null,	 
	  @CreatedBy as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 

     Declare @AccountName as varchar(250)
	set @AccountName = (select AccountName from AyohaEnterprisesUser where AccountNo=@CreatedBy and RowActive='Active')
 IF  EXISTS (SELECT EnterpriseHQAccNo,AdvertisementCode,ModuleCode  FROM AdvertisementLinkModule WHERE  EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode and RowStatus='Active' and ModuleCode=@ModuleCode)
 
 Update dbo.AdvertisementLinkModule
          
    Set
    AdvertisementCode= @AdvertisementCode,
      ModuleCode=@ModuleCode,
      ModuleName=@ModuleName,
	  ModuleDesc=@ModuleDesc,
	   RowStatus=@RowStatus,
	   CreatedBy=@AccountName,
	   CreatedDate=getDate()
	where   EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode and ModuleCode=@ModuleCode
 
 ELSE
 
     INSERT INTO dbo.AdvertisementLinkModule
          ( 
        [AdvertisementCode]
      ,[ModuleCode]
      ,[ModuleName]
	  ,[ModuleDesc]
      ,[EnterpriseAccNo]
      ,[EnterpriseHQAccNo]
	  ,[CreatedBy]     
          ) 
     VALUES 
          ( 
		  @AdvertisementCode,   
      @ModuleCode,
      @ModuleName,
	  @ModuleDesc,
      @EnterpriseAccNo,
      @EnterpriseHQAccNo,
	  @AccountName                             
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
