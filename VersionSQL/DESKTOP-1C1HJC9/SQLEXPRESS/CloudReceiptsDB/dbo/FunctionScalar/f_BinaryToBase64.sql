﻿/****** Object:  Function [dbo].[f_BinaryToBase64]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE FUNCTION dbo.f_BinaryToBase64(@bin VARBINARY(MAX))
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @Base64 VARCHAR(MAX)
    
    /*
        SELECT dbo.f_BinaryToBase64(CONVERT(VARBINARY(MAX), 'Converting this text to Base64...'))
    */
    
    SET @Base64 = CAST(N'' AS XML).value('xs:base64Binary(xs:hexBinary(sql:variable("@bin")))','VARCHAR(MAX)')
    
    RETURN @Base64
END
