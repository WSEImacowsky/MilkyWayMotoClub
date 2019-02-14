CREATE TABLE [HR].[PositionDictionary] (
    [Position_Id]                   SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Position_Code]                 SMALLINT      NOT NULL,
    [Position_Description]          VARCHAR (250) NOT NULL,
    [Position_Employee]             INT           NULL,
    [Position_Employee_Period_From] DATE          NOT NULL,
    [Position_Employee_Period_To]   DATE          NULL,
    PRIMARY KEY CLUSTERED ([Position_Id] ASC),
    CONSTRAINT [Positions_FK_Employee_Position] FOREIGN KEY ([Position_Employee]) REFERENCES [dbo].[Employees] ([Employee_Code]),
    UNIQUE NONCLUSTERED ([Position_Code] ASC)
);



