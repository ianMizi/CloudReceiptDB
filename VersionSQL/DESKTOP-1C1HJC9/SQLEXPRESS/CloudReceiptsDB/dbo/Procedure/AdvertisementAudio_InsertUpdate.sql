/****** Object:  Procedure [dbo].[AdvertisementAudio_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AdvertisementAudio_InsertUpdate]
  
      
      
      @ID as int,
      @AdvertisementCode as varchar(250) = Null,
      @AdvertisementAudio as varchar(250) = Null,
      @AdvertisementAudioName as varchar(250) = Null,
      @AdvertisementAudioNote as varchar(250) = Null,
      @EnterpriseAccNo as varchar(250) = Null,
	  @EnterpriseHQAccNo as varchar(250) = Null,
	  @RowStatus as varchar(250) = Null,
	  @CreatedBy as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 

     Declare @AccountName as varchar(250)
	set @AccountName = (select AccountName from AyohaEnterprisesUser where AccountNo=@CreatedBy and RowActive='Active')
 IF  EXISTS (SELECT ID,EnterpriseHQAccNo,AdvertisementCode  FROM AdvertisementAudio WHERE  ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode and RowStatus='Active')
 
 Update dbo.AdvertisementAudio
          
    Set
    AdvertisementCode= @AdvertisementCode,
      AdvertisementAudio=@AdvertisementAudio,
      AdvertisementAudioName=@AdvertisementAudioName,
      AdvertisementAudioNote=@AdvertisementAudioNote,
	   RowStatus=@RowStatus,
	   CreatedBy=@AccountName,
	   CreatedDate=getDate()
	where  ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode
 
 ELSE
 
     INSERT INTO dbo.AdvertisementAudio
          ( 
        [AdvertisementCode]
      ,[AdvertisementAudio]
      ,[AdvertisementAudioName]
      ,[AdvertisementAudioNote]
      ,[EnterpriseAccNo]
      ,[EnterpriseHQAccNo]
	  ,[CreatedBy]     
          ) 
     VALUES 
          ( 
		  @AdvertisementCode,   
      @AdvertisementAudio,
      @AdvertisementAudioName,
      @AdvertisementAudioNote,
      @EnterpriseAccNo,
      @EnterpriseHQAccNo,
	  @AccountName                             
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
