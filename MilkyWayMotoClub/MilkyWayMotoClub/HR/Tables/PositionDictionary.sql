CREATE TABLE [HR].[PositionDictionary] (
    [Position_Id]          SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Position_Code]        SMALLINT      NOT NULL,
    [Position_Description] VARCHAR (250) NOT NULL,
    PRIMARY KEY CLUSTERED ([Position_Id] ASC),
    UNIQUE NONCLUSTERED ([Position_Code] ASC)
);

