CREATE TABLE [dbo].[Models] (
    [Model_Id]   SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Model_Code] VARCHAR (10)  NOT NULL,
    [Model_Name] VARCHAR (100) NOT NULL,
    [Brand_Id]   SMALLINT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Model_Id] ASC),
    UNIQUE NONCLUSTERED ([Model_Code] ASC),
    UNIQUE NONCLUSTERED ([Model_Name] ASC)
);

