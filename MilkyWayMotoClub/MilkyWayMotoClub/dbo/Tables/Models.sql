CREATE TABLE [dbo].[Models] (
    [Model_Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Model_Code] INT           NOT NULL,
    [Model_Name] VARCHAR (100) NOT NULL,
    [Brand_Id]   SMALLINT      DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([Model_Id] ASC),
    CONSTRAINT [Models_FK_Brand_Id] FOREIGN KEY ([Brand_Id]) REFERENCES [dbo].[Brands] ([Brand_Id]),
    UNIQUE NONCLUSTERED ([Model_Code] ASC),
    UNIQUE NONCLUSTERED ([Model_Name] ASC)
);



