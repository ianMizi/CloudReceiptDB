/****** Object:  Function [dbo].[ReceiptsAttachments_getContentsFilesName]    Committed by VersionSQL https://www.versionsql.com ******/

Create FUNCTION [dbo].[ReceiptsAttachments_getContentsFilesName](@CloudReceiptAccNo varchar(100),@FlatReceiptID varchar(100))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @Result varchar(MAX)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
 
    SET @Result = (   select FilesName from ReceiptsAttachments where CloudReceiptAccNo=@CloudReceiptAccNo AND FlatReceiptsID=@FlatReceiptID )
   

   

    RETURN @Result
END
