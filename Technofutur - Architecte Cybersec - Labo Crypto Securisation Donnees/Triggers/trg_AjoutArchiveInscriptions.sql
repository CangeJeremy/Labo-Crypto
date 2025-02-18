CREATE TRIGGER [trg_AjoutArchiveInscriptions]
ON [Inscriptions]
FOR DELETE
AS
BEGIN
	SET NOCOUNT ON;
	IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'ArchiveInscriptions')
    BEGIN
        CREATE TABLE [dbo].[ArchiveInscriptions]
        (
            [Id] INT NOT NULL IDENTITY,
            [IdInscription] INT NOT NULL,
            [IdJoueur] INT NOT NULL,
            [IdTournoi] INT NOT NULL,
            [DateInscription] DATETIME NOT NULL,
            [DateSuppression] DATETIME NOT NULL DEFAULT GETDATE(),

            CONSTRAINT [PK_ArchiveInscriptions] PRIMARY KEY ([Id])
        );
    END;
END
