/****** Object:  Procedure [dbo].[Advertisement_loadMedia]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Advertisement_loadMedia]
  
       
  
      @AdvertisementCode as varchar(250) = Null,     
	  @EnterpriseHQAccNo as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 


SELECT AdvertisementImg as AdvertismentMediaUrl, AdvertisementImgNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Image') As MediaType
    FROM AdvertisementImages
	WHERE AdvertisementCode=@AdvertisementCode and EnterpriseHQAccNo=@EnterpriseHQAccNo and RowStatus='Active'
   UNION
    SELECT AdvertisementVideo as AdvertismentMediaUrl, AdvertisementVideoNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Video') As MediaType
    FROM AdvertisementVideo
		WHERE AdvertisementCode=@AdvertisementCode and EnterpriseHQAccNo=@EnterpriseHQAccNo and RowStatus='Active'
   UNION
    SELECT AdvertisementAudio as AdvertismentMediaUrl, AdvertisementAudioNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Audio') As MediaType
    FROM AdvertisementAudio
			WHERE AdvertisementCode=@AdvertisementCode and EnterpriseHQAccNo=@EnterpriseHQAccNo and RowStatus='Active'
END
