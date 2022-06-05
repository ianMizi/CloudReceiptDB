/****** Object:  Procedure [dbo].[Insert_FlatInvoiceItemsDetails]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[Insert_FlatInvoiceItemsDetails]  


@ID int
 ,@Descriptions varchar (150)=null
      , @Quantity int
      , @Price decimal(18, 2)
      , @Amount decimal(18, 2)
      , @InvoiceNo varchar (150)=null
      , @ReceiptNo varchar (150)=null
      , @CloudReceiptNo varchar (150)=null
      , @RowStatus varchar (150)=null
      , @CreatedBy varchar (150)=null
      , @CreatedDate varchar (150)=null
      , @TaxAmount decimal(18, 2)
      , @DiscountAmount decimal(18, 2)
      , @AccountNo varchar (150)=null
	  , @GroupNo varchar (550)=null
AS 
BEGIN 
     SET NOCOUNT ON 
     
   IF Not EXISTS (SELECT ID  FROM FlatInvoiceItemsDetails WHERE ID=@ID  and 1=1)
 
	   INSERT INTO dbo.FlatInvoiceItemsDetails
          ( 
                [Descriptions]
      ,[Quantity]
      ,[Price]
      ,[Amount]
      ,[InvoiceNo]
      ,[ReceiptNo]
      ,[CloudReceiptNo]
      ,[RowStatus]
      ,[CreatedBy]
      ,[CreatedDate]
      ,[TaxAmount]
      ,[DiscountAmount]
      ,[AccountNo]
	      ,[GroupNo]
		          ) 
     VALUES 
          ( 

  @Descriptions
      ,@Quantity
      ,@Price
      ,@Amount
      ,@InvoiceNo
      ,@ReceiptNo
      ,@CloudReceiptNo
      ,@RowStatus
      ,@CreatedBy
      ,getDate()
      ,@TaxAmount
      ,@DiscountAmount
      ,@AccountNo
	  ,@GroupNo
	  )


	  else

	  Update FlatInvoiceItemsDetails
	  set 
	  Descriptions=@Descriptions
	        ,Quantity=@Quantity
      ,Price=@Price
      ,Amount=@Amount
      ,InvoiceNo=@InvoiceNo
      ,ReceiptNo=@ReceiptNo
      ,CloudReceiptNo=@CloudReceiptNo
      ,RowStatus=@RowStatus
      ,CreatedBy=@CreatedBy
      ,CreatedDate=getDate()
      ,TaxAmount=@TaxAmount
      ,DiscountAmount=@DiscountAmount
      ,AccountNo=@AccountNo
	       ,GroupNo=@GroupNo
	  where ID =@ID

	END
