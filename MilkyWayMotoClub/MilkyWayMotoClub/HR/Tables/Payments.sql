CREATE TABLE [HR].[Payments] (
    [Payment_Id]          SMALLINT        IDENTITY (1, 1) NOT NULL,
    [Payment_Code]        INT             NOT NULL,
    [Payment_Employee_Id] INT             NULL,
    [Payment_Value]       DECIMAL (10, 2) NOT NULL,
    [Payment_Bonus]       DECIMAL (10, 2) NULL,
    [Payment_Period_From] DATE            NOT NULL,
    [Payment_Period_To]   DATE            NOT NULL,
    PRIMARY KEY CLUSTERED ([Payment_Id] ASC),
    CONSTRAINT [Payments_FK_Employee_Payment] FOREIGN KEY ([Payment_Employee_Id]) REFERENCES [dbo].[Employees] ([Employee_Code]),
    UNIQUE NONCLUSTERED ([Payment_Code] ASC)
);

