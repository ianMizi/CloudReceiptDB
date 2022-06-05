/****** Object:  Procedure [dbo].[AyohaUserStampCard_Check_StampedStatus]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[AyohaUserStampCard_Check_StampedStatus]  


      @TempStampQRCode varchar (250)
	   
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 

   Declare @StampCardCode as varchar(500)
   set @StampCardCode=(select StampCardCode from [TemporaryStampQrCode] where TempStampQRCode=@TempStampQRCode)
   select StampedStatus from AyohaUserStampCard where StampCardCode=@StampCardCode

	END

--		begin

--delete from [dbo].[TemporaryStampQrCode]
--where TempStampQrCode=@TempStampQRCode

--end
