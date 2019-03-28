/* Pour �viter les probl�mes �ventuels de perte de donn�es, passez attentivement ce script en revue avant de l'ex�cuter en dehors du contexte du Concepteur de bases de donn�es.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Avion
	DROP COLUMN test
GO
ALTER TABLE dbo.Avion SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Avion', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Avion', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Avion', 'Object', 'CONTROL') as Contr_Per 