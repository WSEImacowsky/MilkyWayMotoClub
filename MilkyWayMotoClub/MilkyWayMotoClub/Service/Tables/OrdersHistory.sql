CREATE TABLE [Service].[OrdersHistory] (
    [History_Order_Id]                    INT  IDENTITY (1, 1) NOT NULL,
    [History_Order_Code]                  INT  NOT NULL,
    [History_Order_Date]                  DATE NULL,
    [History_OrderStatusChanged_Employee] INT  NULL,
    PRIMARY KEY CLUSTERED ([History_Order_Id] ASC),
    CONSTRAINT [OrdersHistory_FK_Employee] FOREIGN KEY ([History_OrderStatusChanged_Employee]) REFERENCES [Service].[Orders] ([Order_Service_Employee_Code]),
    UNIQUE NONCLUSTERED ([History_Order_Code] ASC)
);



