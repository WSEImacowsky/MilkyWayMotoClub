CREATE TABLE [dbo].[Employees] (
    [Employee_Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Employee_Code]     INT           NOT NULL,
    [Employee_Name]     VARCHAR (100) NOT NULL,
    [Employee_Surname]  VARCHAR (100) NOT NULL,
    [Employee_Position] VARCHAR (100) NOT NULL,
    [Employee_Pesel]    VARCHAR (11)  NOT NULL,
    [Employee_Email]    VARCHAR (100) NULL,
    [Employee_Address]  VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Employee_Id] ASC),
    UNIQUE NONCLUSTERED ([Employee_Address] ASC),
    UNIQUE NONCLUSTERED ([Employee_Code] ASC),
    UNIQUE NONCLUSTERED ([Employee_Email] ASC),
    UNIQUE NONCLUSTERED ([Employee_Pesel] ASC),
    UNIQUE NONCLUSTERED ([Employee_Surname] ASC)
);



