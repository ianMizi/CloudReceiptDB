/****** Object:  Procedure [dbo].[FlatReceiptsDetails_getByFlatReceiptsGroupID]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[FlatReceiptsDetails_getByFlatReceiptsGroupID]  

@FlatReceiptsGroupID varchar(550),
	@FlatReceiptsBSCloudreceiptAccountNo varchar(50)
AS 
BEGIN 
     SET NOCOUNT ON 
     
--	 select [ID],[Descriptions],[Quantity],[Price],[Amount],[FlatReceiptsID],[FlatReceiptsGroupID],[FlatReceiptsBSCloudreceiptAccountNo],[FlatReceiptsCreatedDate],[FlatReceiptsCreatedBy],
--[FlatReceiptsNo],[IsSent] where [FlatReceiptsGroupID]=@FlatReceiptsGroupID and [FlatReceiptsBSCloudreceiptAccountNo]=@FlatReceiptsBSCloudreceiptAccountNo
	  SELECT ROW_NUMBER() OVER(ORDER BY ID) as Num,ID,[Descriptions],[Quantity],[Price],[Amount],[FlatReceiptsID],[FlatReceiptsGroupID],[FlatReceiptsBSCloudreceiptAccountNo],[FlatReceiptsCreatedDate],[FlatReceiptsCreatedBy],
[FlatReceiptsNo],[IsSent], [FlatReceiptsModifiedDate],[RowStatus] from  [dbo].[FlatReceiptsDetails] where [FlatReceiptsGroupID]=@FlatReceiptsGroupID and [FlatReceiptsBSCloudreceiptAccountNo]=@FlatReceiptsBSCloudreceiptAccountNo
And RowStatus='Active'
	END
