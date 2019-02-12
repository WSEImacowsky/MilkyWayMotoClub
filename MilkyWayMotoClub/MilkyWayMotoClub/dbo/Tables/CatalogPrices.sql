CREATE TABLE [dbo].[CatalogPrices] (
    [Price_Id]          SMALLINT        IDENTITY (1, 1) NOT NULL,
    [Model_Id]          SMALLINT        NOT NULL,
    [Model_Access_From] DATE            NULL,
    [Model_Access_To]   DATE            NULL,
    [Price_Value]       DECIMAL (10, 2) DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Price_Id] ASC),
    CHECK ([Price_Value]>=(0))
);

