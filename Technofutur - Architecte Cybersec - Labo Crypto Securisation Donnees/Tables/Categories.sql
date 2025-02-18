CREATE TABLE [dbo].[Categories]
(
	[Id] INT NOT NULL IDENTITY,
    [Nom] NVARCHAR(20) NOT NULL,
    [AgeMin] INT NOT NULL,
    [AgeMax] INT NOT NULL,

    CONSTRAINT [PK_Categories] PRIMARY KEY ([Id])
)
