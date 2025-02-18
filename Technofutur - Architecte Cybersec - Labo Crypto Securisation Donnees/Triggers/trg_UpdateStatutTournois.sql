CREATE TRIGGER [trg_UpdateStatutTournois]
ON [Inscriptions]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
	DECLARE @IdTournoi INT;
    DECLARE @NbInscrits INT;
    DECLARE @NbMinJoueurs INT;

    SELECT @IdTournoi = [IdTournoi] FROM inserted;

    SELECT @NbInscrits = COUNT(*) FROM [dbo].[Inscriptions] WHERE [IdTournoi] = @IdTournoi;

    SELECT @NbMinJoueurs = [NbMinJoueurs] FROM [dbo].[Tournois] WHERE [Id] = @IdTournoi;

    IF @NbInscrits >= @NbMinJoueurs
    BEGIN
        UPDATE [dbo].[Tournois]
        SET [Statut] = 'en cours'
        WHERE [Id] = @IdTournoi;
    END;
END
