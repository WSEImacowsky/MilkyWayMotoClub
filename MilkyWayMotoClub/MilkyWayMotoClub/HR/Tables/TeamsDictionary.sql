CREATE TABLE [HR].[TeamsDictionary] (
    [Team_Id]          SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Team_Code]        SMALLINT      NOT NULL,
    [Tema_Description] VARCHAR (250) NOT NULL,
    PRIMARY KEY CLUSTERED ([Team_Id] ASC),
    UNIQUE NONCLUSTERED ([Team_Code] ASC)
);

