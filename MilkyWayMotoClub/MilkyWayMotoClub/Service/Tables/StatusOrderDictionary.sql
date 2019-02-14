CREATE TABLE [Service].[StatusOrderDictionary] (
    [Status_Order_Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Status_Order_Code]        INT           NOT NULL,
    [Status_Order_Description] VARCHAR (250) NULL,
    PRIMARY KEY CLUSTERED ([Status_Order_Id] ASC),
    UNIQUE NONCLUSTERED ([Status_Order_Code] ASC)
);

