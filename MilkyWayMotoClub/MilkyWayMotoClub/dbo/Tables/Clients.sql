CREATE TABLE [dbo].[Clients] (
    [Client_Id]             SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Client_Name]           VARCHAR (100) NOT NULL,
    [Client_Surname]        VARCHAR (100) NOT NULL,
    [Client_Id_Card_Number] VARCHAR (9)   NOT NULL,
    PRIMARY KEY CLUSTERED ([Client_Id] ASC),
    UNIQUE NONCLUSTERED ([Client_Id_Card_Number] ASC),
    UNIQUE NONCLUSTERED ([Client_Surname] ASC)
);

