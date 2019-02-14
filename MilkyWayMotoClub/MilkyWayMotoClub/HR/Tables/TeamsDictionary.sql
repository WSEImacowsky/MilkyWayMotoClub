CREATE TABLE [HR].[TeamsDictionary] (
    [Team_Id]          SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Team_Code]        SMALLINT      NOT NULL,
    [Team_Description] VARCHAR (250) NOT NULL,
    [Team_Employee]    INT           NULL,
    PRIMARY KEY CLUSTERED ([Team_Id] ASC),
    CONSTRAINT [Teams_FK_Employee_Team] FOREIGN KEY ([Team_Employee]) REFERENCES [dbo].[Employees] ([Employee_Code]),
    UNIQUE NONCLUSTERED ([Team_Code] ASC)
);



