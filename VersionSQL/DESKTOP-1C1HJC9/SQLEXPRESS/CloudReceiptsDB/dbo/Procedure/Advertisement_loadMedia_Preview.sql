/****** Object:  Procedure [dbo].[Advertisement_loadMedia_Preview]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Advertisement_loadMedia_Preview]
  
       
  
      @AdvertisementCode as varchar(250) = Null,     
	  @EnterpriseHQAccNo as varchar(250) = Null
AS 
BEGIN 
     SET NOCOUNT ON 


SELECT AdvertisementImg as AdvertismentMediaUrl, AdvertisementImgNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Image') As MediaType,AdvertisementImgName as MediaFileName,[dbo].[Enterprises_GetEnterpriseName](EnterpriseAccNo) As EnterpriseName,[dbo].[Advertisement_GetAdvertisementTitle](EnterpriseAccNo,AdvertisementCode) As AdvertisementTitle,[dbo].[Enterprises_GetEnterpriseLogoPath](EnterpriseAccNo) As EnterpriseLogoPath
    FROM AdvertisementImages
	WHERE AdvertisementCode=@AdvertisementCode and EnterpriseHQAccNo=@EnterpriseHQAccNo and RowStatus='Active'
   UNION
    SELECT AdvertisementVideo as AdvertismentMediaUrl, AdvertisementVideoNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Video') As MediaType,AdvertisementVideoName as MediaFileName,[dbo].[Enterprises_GetEnterpriseName](EnterpriseAccNo) As EnterpriseName,[dbo].[Advertisement_GetAdvertisementTitle](EnterpriseAccNo,AdvertisementCode) As AdvertisementTitle,[dbo].[Enterprises_GetEnterpriseLogoPath](EnterpriseAccNo) As EnterpriseLogoPath
    FROM AdvertisementVideo
		WHERE AdvertisementCode=@AdvertisementCode and EnterpriseHQAccNo=@EnterpriseHQAccNo and RowStatus='Active'
   UNION
    SELECT AdvertisementAudio as AdvertismentMediaUrl, AdvertisementAudioNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Audio') As MediaType,AdvertisementAudioName as MediaFileName,[dbo].[Enterprises_GetEnterpriseName](EnterpriseAccNo) As EnterpriseName,[dbo].[Advertisement_GetAdvertisementTitle](EnterpriseAccNo,AdvertisementCode) As AdvertisementTitle,[dbo].[Enterprises_GetEnterpriseLogoPath](EnterpriseAccNo) As EnterpriseLogoPath
    FROM AdvertisementAudio
			WHERE AdvertisementCode=@AdvertisementCode and EnterpriseHQAccNo=@EnterpriseHQAccNo and RowStatus='Active'
END
