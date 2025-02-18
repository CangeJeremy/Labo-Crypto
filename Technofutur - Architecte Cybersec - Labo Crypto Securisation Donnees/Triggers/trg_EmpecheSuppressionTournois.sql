CREATE TRIGGER [trg_EmpecheSuppressionTournois]
ON [Tournois]
FOR DELETE
AS
BEGIN
	RAISERROR('Suppression de tournoi interdite.', 16, 1);
	ROLLBACK;
END
