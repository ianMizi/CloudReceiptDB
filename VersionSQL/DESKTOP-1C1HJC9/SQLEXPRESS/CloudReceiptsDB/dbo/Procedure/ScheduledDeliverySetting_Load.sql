/****** Object:  Procedure [dbo].[ScheduledDeliverySetting_Load]    Committed by VersionSQL https://www.versionsql.com ******/

CREATE PROCEDURE [dbo].[ScheduledDeliverySetting_Load]  


@ID int
      , @EnterpriseAccountNo varchar (150) 
    
    
    
   
	 
AS 
BEGIN 

      
     SET NOCOUNT ON 


	declare @NotificationCode varchar (250)
	 set @NotificationCode=(select [NotificationCode] from [NotificationsMaster] where ID=@ID and [EnterpriseAccNo]=@EnterpriseAccountNo)
	  Select top 1 g.*,N.Audience,N.NotificationTitle from  ScheduledDeliverySetting g inner join Notifications n on g.NotificationCode=n.NotificationCode
	 where g.NotificationCode=@NotificationCode and g.EnterpriseAccountNo=@EnterpriseAccountNo and g.RowStatus='Active'
	  --Select * from  ScheduledDeliverySetting	
	  --where NotificationCode=@NotificationCode  and EnterpriseAccountNo=@EnterpriseAccountNo And RowStatus='Active'

	END


	-- Select top 1 g.*,N.Audience,N.NotificationTitle from  ScheduledDeliverySetting g inner join Notifications n on g.NotificationCode=n.NotificationCode
	-- where g.NotificationCode='SMS-2126-CRKLI-36416' and g.EnterpriseAccountNo='CRKLI-36416' and g.RowStatus='Active'



	-- select * from NotificationsMaster order by ID desc

	--Select * from  ScheduledDeliverySetting	order by ID desc
	--select * from NotificationsMaster order by ID desc
	--select * from Notifications where NotificationCode='SMS-2126-CRKLI-36416'  order by ID desc
