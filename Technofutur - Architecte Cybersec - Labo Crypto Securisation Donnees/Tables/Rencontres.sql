CREATE TABLE [dbo].[Rencontres]
(
	[Id] INT NOT NULL IDENTITY,
    [IdTournoi] INT NOT NULL,
    [IdJoueurBlanc] INT NOT NULL,
    [IdJoueurNoir] INT NOT NULL,
    [Resultat] NVARCHAR(10) NOT NULL DEFAULT 'non joué',

    CONSTRAINT [PK_Rencontres] PRIMARY KEY ([Id]),
    CONSTRAINT [CHECK_Rencontres_Resultat] CHECK ([Resultat] IN ('non joué', 'blanc', 'noir', 'égalité'))
)
