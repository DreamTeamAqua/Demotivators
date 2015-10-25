CREATE TABLE [dbo].[Demotivator]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [IdUserCreator] INT NOT NULL, 
    [URLcreate] NCHAR(10) NOT NULL, 
    [Name] NCHAR(10) NOT NULL, 
    [Date] DATETIME NOT NULL, 
    [Description] NCHAR(10) NOT NULL, 
    [Rating] INT NOT NULL, 
    [String1] NCHAR(30) NOT NULL, 
    [String2] NCHAR(50) NOT NULL, 
    [Image] IMAGE NOT NULL, 
    CONSTRAINT [FK_Demotivator] FOREIGN KEY ([IdUserCreator]) REFERENCES [User]([Id])
)
