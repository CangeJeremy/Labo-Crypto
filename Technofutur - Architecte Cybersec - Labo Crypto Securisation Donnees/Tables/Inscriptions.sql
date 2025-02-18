CREATE TABLE [dbo].[Inscriptions]
(
	[Id] INT NOT NULL IDENTITY,
    [IdJoueur] INT NOT NULL,
    [IdTournoi] INT NOT NULL,
    [DateInscription] DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT [PK_Inscriptions] PRIMARY KEY ([Id])
)
