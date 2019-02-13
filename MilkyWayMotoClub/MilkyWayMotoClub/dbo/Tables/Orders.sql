CREATE TABLE [dbo].[Orders] (
    [Order_Id]        SMALLINT        IDENTITY (1, 1) NOT NULL,
    [Client_Code]     INT             DEFAULT ((-1)) NULL,
    [Employee_Code]   INT             DEFAULT ((-1)) NULL,
    [Brand_Code]      SMALLINT        DEFAULT ((-1)) NULL,
    [Model_Code]      INT             DEFAULT ((-1)) NULL,
    [PriceCatalog_Id] INT             DEFAULT ((-1)) NULL,
    [Order_Discount]  DECIMAL (10, 2) DEFAULT ((0)) NULL,
    [Order_Price]     DECIMAL (10, 2) DEFAULT ((0)) NULL,
    [Order_Date]      DATE            NOT NULL,
    [Order_Receipt]   DATE            NULL,
    [Order_Status]    BIT             NOT NULL,
    [Order_Paid]      BIT             NOT NULL,
    PRIMARY KEY CLUSTERED ([Order_Id] ASC),
    CONSTRAINT [Orders_FK_Brand_Id] FOREIGN KEY ([Brand_Code]) REFERENCES [dbo].[Brands] ([Brand_Code]),
    CONSTRAINT [Orders_FK_Client_Id] FOREIGN KEY ([Client_Code]) REFERENCES [dbo].[Clients] ([Client_Code]),
    CONSTRAINT [Orders_FK_Employee_Id] FOREIGN KEY ([Employee_Code]) REFERENCES [dbo].[Employees] ([Employee_Code]),
    CONSTRAINT [Orders_FK_Model_Id] FOREIGN KEY ([Model_Code]) REFERENCES [dbo].[Models] ([Model_Code]),
    CONSTRAINT [Orders_FK_Price_Id] FOREIGN KEY ([PriceCatalog_Id]) REFERENCES [dbo].[CatalogPrices] ([Price_Id])
);



