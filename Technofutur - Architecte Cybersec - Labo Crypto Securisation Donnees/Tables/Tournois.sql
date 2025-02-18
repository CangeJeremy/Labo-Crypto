CREATE TABLE [dbo].[Tournois]
(
	[Id] INT NOT NULL IDENTITY,
    [Nom] NVARCHAR(100) NOT NULL,
    [Lieu] NVARCHAR(100),
    [NbMinJoueurs] INT NOT NULL DEFAULT 2,
    [NbMaxJoueurs] INT NOT NULL DEFAULT 32,
    [EloMin] INT NOT NULL DEFAULT 0,
    [EloMax] INT NOT NULL DEFAULT 3000,
    [Categorie] NVARCHAR(20) NOT NULL,
    [Statut] NVARCHAR(20) NOT NULL,
    [NumRondeCourante] INT NOT NULL DEFAULT 1,
    [WomenOnly] BIT NOT NULL DEFAULT 0,
    [DateFinInscriptions] DATE NOT NULL,
    [DateCreation] DATETIME NOT NULL DEFAULT GETDATE(),
    [DateMiseAJour] DATETIME NOT NULL DEFAULT GETDATE(),

    CONSTRAINT [PK_Tournois] PRIMARY KEY ([Id]),
    CONSTRAINT [CHECK_Tournois_NbJoueurs] CHECK ([NbMinJoueurs] >= 2 AND [NbMaxJoueurs] <= 32),
    CONSTRAINT [CHECK_Tournois_Elo] CHECK (([EloMin] >= 0) AND ([EloMax] <= 3000))
)
