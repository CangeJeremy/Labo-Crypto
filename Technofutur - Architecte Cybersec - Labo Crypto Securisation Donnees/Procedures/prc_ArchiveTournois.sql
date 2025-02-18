CREATE PROCEDURE [dbo].[prc_ArchiveTournois]
    @IdTournoi INT
AS
BEGIN
    INSERT INTO [dbo].[ArchiveTournois] ([IdTournoi], [Nom], [Lieu], [Statut]) SELECT [Id], [Nom], [Lieu], [Statut] FROM [dbo].[Tournois] WHERE [Id] = @IdTournoi;
    UPDATE [dbo].[Tournois] SET [Statut] = 'Archivé' WHERE [Id] = @IdTournoi;
END
