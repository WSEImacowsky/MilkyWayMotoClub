CREATE TABLE [dbo].[Brands] (
    [Brand_Id]   SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Brand_Code] SMALLINT      NOT NULL,
    [Brand_Name] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([Brand_Id] ASC),
    UNIQUE NONCLUSTERED ([Brand_Code] ASC),
    UNIQUE NONCLUSTERED ([Brand_Name] ASC)
);



