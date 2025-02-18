CREATE TABLE [dbo].[Scores]
(
	[Id] INT NOT NULL IDENTITY,
    [IdJoueur] INT NOT NULL,
    [IdTournoi] INT NOT NULL,
    [NbRencontresJouees] INT NOT NULL DEFAULT 0,
    [NbVictoires] INT NOT NULL DEFAULT 0,
    [NbDefaites] INT NOT NULL DEFAULT 0,
    [NbEgalites] INT NOT NULL DEFAULT 0,

    CONSTRAINT [PK_Scores] PRIMARY KEY ([Id])
)
