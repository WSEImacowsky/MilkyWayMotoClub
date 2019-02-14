CREATE TABLE [HR].[Salaries] (
    [Salary_Id]          SMALLINT        IDENTITY (1, 1) NOT NULL,
    [Salary_Code]        SMALLINT        NOT NULL,
    [Salary_Amount]      DECIMAL (10, 2) NOT NULL,
    [Salary_Employee_Id] INT             NULL,
    [Salary_Period_From] DATE            NOT NULL,
    [Salary_Period_To]   DATE            NULL,
    PRIMARY KEY CLUSTERED ([Salary_Id] ASC),
    CONSTRAINT [Salaries_FK_Employee_Salary] FOREIGN KEY ([Salary_Employee_Id]) REFERENCES [dbo].[Employees] ([Employee_Code]),
    UNIQUE NONCLUSTERED ([Salary_Code] ASC)
);

