CREATE TABLE [Service].[Orders] (
    [Order_Service_Id]     INT             IDENTITY (1, 1) NOT NULL,
    [Order_Service_Code]   INT             NOT NULL,
    [Service_Id]           INT             NULL,
    [Order_Service_Date]   DATE            NULL,
    [Order_Service_Price]  DECIMAL (10, 2) NULL,
    [Order_Service_Status] INT             NULL,
    PRIMARY KEY CLUSTERED ([Order_Service_Id] ASC),
    CONSTRAINT [Orders_FK_Service_Id] FOREIGN KEY ([Service_Id]) REFERENCES [Service].[Services] ([Service_Code]),
    CONSTRAINT [Orders_FK_Service_Status] FOREIGN KEY ([Order_Service_Status]) REFERENCES [Service].[StatusOrderDictionary] ([Status_Order_Code]),
    UNIQUE NONCLUSTERED ([Order_Service_Code] ASC)
);

