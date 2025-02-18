CREATE TABLE [dbo].[ArchiveInscriptions]
(
	[Id] INT NOT NULL IDENTITY,
    [IdInscription] INT NOT NULL,
    [IdJoueur] INT NOT NULL,
    [IdTournoi] INT NOT NULL,
    [DateInscription] DATETIME NOT NULL,
    [DateSuppression] DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT [PK_ArchiveInscriptions] PRIMARY KEY ([Id])
)
