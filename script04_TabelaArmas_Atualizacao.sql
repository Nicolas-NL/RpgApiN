﻿BEGIN TRANSACTION;
GO

ALTER TABLE [Armas] ADD [PersonagemId] int NOT NULL DEFAULT 0;
GO

UPDATE [Armas] SET [PersonagemId] = 1
WHERE [Id] = 1;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemId] = 2
WHERE [Id] = 2;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemId] = 3
WHERE [Id] = 3;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemId] = 4
WHERE [Id] = 4;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemId] = 5
WHERE [Id] = 5;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemId] = 6
WHERE [Id] = 6;
SELECT @@ROWCOUNT;

GO

UPDATE [Armas] SET [PersonagemId] = 7
WHERE [Id] = 7;
SELECT @@ROWCOUNT;

GO

UPDATE [Usuarios] SET [PasswordHash] = 0x8E5E892712A931489144812DDFF237F1A889549DF2D6AF23091DD64D7E0ACA5D6CB2F3D2246F10AA86E57135C7913CE0C0D093E4D8312FF6E15B7B62A8680FDF, [PasswordSalt] = 0x7BF5E581371000D4599C9105605BCE0E7D32ADABC15A3793644BA4942F87BAFA6FA678DADF36EEF7CA86C4A785CBBEA0866FA05D1ED95269666F89353C03D3CE74BC206581A05E2B1BBC602845CA4539436AC61287EF49C1ADC89F8FD8D16E246231AC8B00C19AD207EADB45B0373D91D245CCF419AC397310D83D40E3291071
WHERE [Id] = 1;
SELECT @@ROWCOUNT;

GO

CREATE UNIQUE INDEX [IX_Armas_PersonagemId] ON [Armas] ([PersonagemId]);
GO

ALTER TABLE [Armas] ADD CONSTRAINT [FK_Armas_Personagens_PersonagemId] FOREIGN KEY ([PersonagemId]) REFERENCES [Personagens] ([Id]) ON DELETE CASCADE;
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230730171950_MigracaoUmParaUm', N'7.0.4');
GO

COMMIT;
GO

