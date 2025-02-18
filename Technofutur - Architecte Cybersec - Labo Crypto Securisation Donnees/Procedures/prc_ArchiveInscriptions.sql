CREATE PROCEDURE [dbo].[prc_ArchiveInscriptions]
    @IdInscription INT
AS
BEGIN
    INSERT INTO [dbo].[ArchiveInscriptions] ([IdInscription], [IdJoueur], [IdTournoi], [DateInscription], [DateSuppression]) SELECT [Id], [IdJoueur], [IdTournoi], [DateInscription], GETDATE() FROM [dbo].[Inscriptions] WHERE [Id] = @IdInscription;
    DELETE FROM [dbo].[Inscriptions] WHERE [Id] = @IdInscription;
END
