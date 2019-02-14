CREATE TABLE [Service].[Services] (
    [Service_Id]          SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Service_Code]        INT           NOT NULL,
    [Service_Description] VARCHAR (250) NOT NULL,
    PRIMARY KEY CLUSTERED ([Service_Id] ASC),
    UNIQUE NONCLUSTERED ([Service_Code] ASC)
);

