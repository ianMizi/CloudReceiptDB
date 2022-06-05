/****** Object:  Procedure [dbo].[AdvertisementImages_InsertUpdate]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AdvertisementImages_InsertUpdate]
  
      
      @ID as int,
      @AdvertisementCode as varchar(250) = Null,
      @AdvertisementImg as varchar(250) = Null,
      @AdvertisementImgName as varchar(250) = Null,
      @AdvertisementImgNote as varchar(250) = Null,
      @EnterpriseAccNo as varchar(250) = Null,
	  @EnterpriseHQAccNo as varchar(250) = Null,
	  @RowStatus as varchar(250) = Null,
	  @CreatedBy as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 

     Declare @AccountName as varchar(250)
	set @AccountName = (select AccountName from AyohaEnterprisesUser where AccountNo=@CreatedBy and RowActive='Active')
 IF  EXISTS (SELECT ID,EnterpriseHQAccNo,AdvertisementCode  FROM AdvertisementImages WHERE  ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode and RowStatus='Active')
 
 Update dbo.AdvertisementImages
          
    Set
    AdvertisementCode= @AdvertisementCode,
      AdvertisementImg=@AdvertisementImg,
      AdvertisementImgName=@AdvertisementImgName,
      AdvertisementImgNote=@AdvertisementImgNote,
	   RowStatus=@RowStatus,
	   CreatedBy=@AccountName,
	   CreatedDate=getDate()
	where  ID=@ID and EnterpriseHQAccNo=@EnterpriseHQAccNo and AdvertisementCode=@AdvertisementCode
 
 ELSE
 
     INSERT INTO dbo.AdvertisementImages
          ( 
        [AdvertisementCode]
      ,[AdvertisementImg]
      ,[AdvertisementImgName]
      ,[AdvertisementImgNote]
      ,[EnterpriseAccNo]
      ,[EnterpriseHQAccNo]
	  ,[CreatedBy]     
          ) 
     VALUES 
          ( 
		  @AdvertisementCode,   
      @AdvertisementImg,
      @AdvertisementImgName,
      @AdvertisementImgNote,
      @EnterpriseAccNo,
      @EnterpriseHQAccNo,
	  @AccountName                             
          ) 
		 -- EXEC CR_CRSuiteUser_UpdateEnterpiseAccNo  @ID = @CRBU_username, @EnterpriseAccNo = @EnterpriseAccNo;
END
