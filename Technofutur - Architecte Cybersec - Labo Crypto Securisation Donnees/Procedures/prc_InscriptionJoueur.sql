CREATE PROCEDURE [dbo].[prc_InscriptionJoueur]
    @Pseudo NVARCHAR(50),
    @Email NVARCHAR(100),
    @MotDePasse NVARCHAR(255),
    @DateNaissance DATE,
    @Genre NVARCHAR(10),
    @ELO INT = 1200,
    @Role NVARCHAR(10) = 'Joueur'
AS
BEGIN
    INSERT INTO Joueurs (Pseudonyme, Email, Passwd, DateNaissance, Genre, ELO, Role)
    VALUES (@Pseudo, @Email, dbo.HashPassword(@MotDePasse), @DateNaissance, @Genre, @ELO, @Role);
END;
