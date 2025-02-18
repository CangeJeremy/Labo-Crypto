CREATE TABLE [dbo].[Joueurs]
(
	[Id] INT NOT NULL IDENTITY,
	[Pseudonyme] NVARCHAR(50) NOT NULL,
	[Email] NVARCHAR(255) NOT NULL,
	[Passwd] BINARY(64) NOT NULL,
	[DateNaissance] DATE NOT NULL,
	[Genre] NVARCHAR(10) NOT NULL,
	[Elo] INT NOT NULL DEFAULT 1200,
	[Role] NVARCHAR(10) NOT NULL

	CONSTRAINT [PK_Joueurs] PRIMARY KEY ([Id]),
	CONSTRAINT [UK_Joueurs_Pseudonyme] UNIQUE ([Pseudonyme]),
	CONSTRAINT [UK_Joueurs_Email] UNIQUE ([Email]),
	CONSTRAINT [CHECK_Joueurs_Elo] CHECK ([Elo] BETWEEN 0 AND 3000),
	CONSTRAINT [CHECK_Joueurs_Role] CHECK ([Role] IN ('Admin', 'Joueur'))
)
