CREATE TABLE [dbo].[ArchiveTournois]
(
    [Id] INT NOT NULL IDENTITY,
    [IdTournoi] INT NOT NULL,
    [Nom] NVARCHAR(100) NOT NULL,
    [Lieu] NVARCHAR(100),
    [Statut] NVARCHAR(20) NOT NULL,
    [DateSuppression] DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT [PK_ArchiveTournois] PRIMARY KEY ([Id])
)
