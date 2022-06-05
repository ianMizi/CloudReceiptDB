/****** Object:  Procedure [dbo].[AdvertisementVideo_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AdvertisementVideo_InsertUpdate]
  
       
      @ID as int,
      @AdvertisementCode as varchar(250) = Null,
      @AdvertisementVideo as varchar(250) = Null,
      @AdvertisementVideoName as varchar(250) = Null,
      @AdvertisementVideoNote as varchar(250) = Null,
      @EnterpriseAccNo as varchar(250) = Null,
	  @EnterpriseHQAccNo as varchar(250) = Null,
	  @RowStatus as varchar(250) = Null,
	  @CreatedBy as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 

     Declare @AccountName as varchar(250)
	set @AccountName = (select AccountName from AyohaEnterprisesUser where AccountNo=@CreatedBy and RowActive='Active')
 IF  EXISTS (SELECT ID,EnterpriseHQAccNo,AdvertisementCode  FROM AdvertisementVideo WHERE  ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode and RowStatus='Active')
 
 Update dbo.AdvertisementVideo
          
    Set
    AdvertisementCode= @AdvertisementCode,
      AdvertisementVideo=@AdvertisementVideo,
      AdvertisementVideoName=@AdvertisementVideoName,
      AdvertisementVideoNote=@AdvertisementVideoNote,
	   RowStatus=@RowStatus,
	   CreatedBy=@AccountName,
	   CreatedDate=getDate()
	where  ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode
 
 ELSE
 
     INSERT INTO dbo.AdvertisementVideo
          ( 
        [AdvertisementCode]
      ,[AdvertisementVideo]
      ,[AdvertisementVideoName]
      ,[AdvertisementVideoNote]
      ,[EnterpriseAccNo]
      ,[EnterpriseHQAccNo]
	  ,[CreatedBy]     
          ) 
     VALUES 
          ( 
		  @AdvertisementCode,   
      @AdvertisementVideo,
      @AdvertisementVideoName,
      @AdvertisementVideoNote,
      @EnterpriseAccNo,
      @EnterpriseHQAccNo,
	  @AccountName                             
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
