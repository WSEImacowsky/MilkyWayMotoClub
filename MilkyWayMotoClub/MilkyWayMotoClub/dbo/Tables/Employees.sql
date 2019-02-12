CREATE TABLE [dbo].[Employees] (
    [Employee_Id]       SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Employee_Name]     VARCHAR (100) NOT NULL,
    [Employee_Surname]  VARCHAR (100) NOT NULL,
    [Employee_Position] VARCHAR (100) NOT NULL,
    [Employee_Pesel]    VARCHAR (11)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Employee_Id] ASC),
    UNIQUE NONCLUSTERED ([Employee_Pesel] ASC),
    UNIQUE NONCLUSTERED ([Employee_Surname] ASC)
);

