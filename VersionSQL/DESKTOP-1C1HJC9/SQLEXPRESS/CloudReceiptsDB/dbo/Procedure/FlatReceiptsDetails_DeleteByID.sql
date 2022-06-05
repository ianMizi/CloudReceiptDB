/****** Object:  Procedure [dbo].[FlatReceiptsDetails_DeleteByID]    Committed by VersionSQL https://www.versionsql.com ******/

Create PROCEDURE [dbo].[FlatReceiptsDetails_DeleteByID]  

@ID int,
	@FlatReceiptsBSCloudreceiptAccountNo varchar(50),
		@FlatReceiptsCreatedBy varchar(50)
AS 
BEGIN 
     SET NOCOUNT ON 
     
update FlatReceiptsDetails
Set RowStatus='InActive'
,[FlatReceiptsModifiedDate]=GETDATE(),
[FlatReceiptsCreatedBy]=@FlatReceiptsCreatedBy
where ID=@ID and [FlatReceiptsBSCloudreceiptAccountNo]=@FlatReceiptsBSCloudreceiptAccountNo

	END
