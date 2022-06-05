/****** Object:  Procedure [dbo].[Advertisement_loadMedia_AdvertisementVIA]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Advertisement_loadMedia_AdvertisementVIA]
  
    
AS 
BEGIN 
     SET NOCOUNT ON 




	 SELECT AI.AdvertisementImg as AdvertismentMediaUrl,  AI.AdvertisementImgNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Image') As MediaType, AI.AdvertisementImgName as MediaFileName,
A.AdvertisementTitle,A.AdvertisementCode,A.AdvertisementEndDate,E.EnterpriseName,E.EnterpriseLogoPath,E.EnterpriseEmail,E.EnterpriseFacebook,E.EnterpriseInstagram,
E.EnterpriseCoordinate,E.EnterpriseTwiter,E.EnterpriseWebsite,E.PICContactNo
    FROM AdvertisementImages AI inner join Advertisement A on AI.AdvertisementCode = A.AdvertisementCode
	inner join Enterprises E on A.EnterpriseAccNo=E.EnterpriseAccNo 
	where A.AdvertisementStatus='Publishing' and A.AdvertisementType='VVIP'
	Union
	 SELECT AV.AdvertisementVideo as AdvertismentMediaUrl,  AV.AdvertisementVideoNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Video') As MediaType, AV.AdvertisementVideoName as MediaFileName,
A.AdvertisementTitle,A.AdvertisementCode,A.AdvertisementEndDate,E.EnterpriseName,E.EnterpriseLogoPath,E.EnterpriseEmail,E.EnterpriseFacebook,E.EnterpriseInstagram,
E.EnterpriseCoordinate,E.EnterpriseTwiter,E.EnterpriseWebsite,E.PICContactNo
    FROM AdvertisementVideo AV inner join Advertisement A on AV.AdvertisementCode = A.AdvertisementCode
	inner join Enterprises E on A.EnterpriseAccNo=E.EnterpriseAccNo 
	where A.AdvertisementStatus='Publishing' and A.AdvertisementType='VVIP'
	Union
	 SELECT AA.AdvertisementAudio as AdvertismentMediaUrl,  AA.AdvertisementAudioNote as AdvertismentMediaNote,[dbo].[Advertisment_MediaType]('Audio') As MediaType, AA.AdvertisementAudioName as MediaFileName,
A.AdvertisementTitle,A.AdvertisementCode,A.AdvertisementEndDate,E.EnterpriseName,E.EnterpriseLogoPath,E.EnterpriseEmail,E.EnterpriseFacebook,E.EnterpriseInstagram,
E.EnterpriseCoordinate,E.EnterpriseTwiter,E.EnterpriseWebsite,E.PICContactNo
    FROM AdvertisementAudio AA inner join Advertisement A on AA.AdvertisementCode = A.AdvertisementCode
	inner join Enterprises E on A.EnterpriseAccNo=E.EnterpriseAccNo 
	where A.AdvertisementStatus='Publishing' and A.AdvertisementType='VVIP'





END







	


	
	
