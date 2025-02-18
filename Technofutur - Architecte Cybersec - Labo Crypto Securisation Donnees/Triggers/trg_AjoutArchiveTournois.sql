CREATE TRIGGER [trg_AjoutArchiveTournois]
ON [Tournois]
FOR DELETE
AS
BEGIN
	SET NOCOUNT ON;
    IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ArchiveTournois')
    BEGIN
        CREATE TABLE [dbo].[ArchiveTournois]
        (
            [Id] INT NOT NULL IDENTITY,
            [IdTournoi] INT NOT NULL,
            [Nom] NVARCHAR(100) NOT NULL,
            [Lieu] NVARCHAR(100),
            [Statut] NVARCHAR(20) NOT NULL,
            [DateSuppression] DATETIME NOT NULL DEFAULT GETDATE(),

            CONSTRAINT [PK_ArchiveTournois] PRIMARY KEY ([Id])
        );
    END;
END
