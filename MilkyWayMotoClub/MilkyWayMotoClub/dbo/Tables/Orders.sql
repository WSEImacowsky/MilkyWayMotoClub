CREATE TABLE [dbo].[Orders] (
    [Order_Id]      SMALLINT IDENTITY (1, 1) NOT NULL,
    [Client_Id]     SMALLINT NOT NULL,
    [Employee_Id]   SMALLINT NOT NULL,
    [Model_Id]      SMALLINT NOT NULL,
    [Price_Id]      SMALLINT NOT NULL,
    [Order_Date]    DATE     NOT NULL,
    [Order_Receipt] DATE     NULL,
    [Order_Status]  BIT      NOT NULL,
    [Order_Paid]    BIT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Order_Id] ASC)
);

