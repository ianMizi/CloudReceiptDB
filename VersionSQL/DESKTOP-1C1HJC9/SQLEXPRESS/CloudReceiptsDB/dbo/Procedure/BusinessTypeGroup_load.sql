/****** Object:  Procedure [dbo].[BusinessTypeGroup_load]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[BusinessTypeGroup_load]


AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Select * from BusinessTypeGroup where RowStatus='Active'

END
