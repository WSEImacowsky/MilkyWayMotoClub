CREATE TABLE [dbo].[CatalogPrices] (
    [Price_Id]          INT             IDENTITY (1, 1) NOT NULL,
    [Model_Id]          INT             DEFAULT ((0)) NULL,
    [Model_Access_From] DATE            NULL,
    [Model_Access_To]   DATE            NULL,
    [Price_Value]       DECIMAL (10, 2) DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Price_Id] ASC),
    CONSTRAINT [CatalogPrices_FK_Model_Id] FOREIGN KEY ([Model_Id]) REFERENCES [dbo].[Models] ([Model_Id])
);



