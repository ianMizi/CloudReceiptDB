/****** Object:  Procedure [dbo].[BusinessType_load]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[BusinessType_load]


AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select * from BusinessType where RowStatus='Active'

END
