/*
   Wednesday, January 30, 201912:26:08 PM
   User: 
   Server: MCHEAVY
   Database: TankBuddy
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
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
ALTER TABLE dbo.Tank
	DROP CONSTRAINT FK__Tank__UserId__3E52440B
GO
ALTER TABLE dbo.[User] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Tank
	(
	Id int NOT NULL IDENTITY (1, 1),
	Name varchar(255) NOT NULL,
	UserId int NOT NULL,
	Length decimal(8, 2) NOT NULL,
	Width decimal(8, 2) NOT NULL,
	Depth decimal(8, 2) NOT NULL,
	pH decimal(4, 2) NOT NULL,
	Temp int NOT NULL,
	dH int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Tank SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_Tank ON
GO
IF EXISTS(SELECT * FROM dbo.Tank)
	 EXEC('INSERT INTO dbo.Tmp_Tank (Id, Name, UserId, Length, Width, Depth, pH, Temp, dH)
		SELECT Id, Name, UserId, CONVERT(decimal(8, 2), Length), CONVERT(decimal(8, 2), Width), CONVERT(decimal(8, 2), Depth), CONVERT(decimal(4, 2), pH), Temp, dH FROM dbo.Tank WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Tank OFF
GO
ALTER TABLE dbo.Fish
	DROP CONSTRAINT FK__Fish__TankId__3D5E1FD2
GO
ALTER TABLE dbo.Filter
	DROP CONSTRAINT FK__Filter__TankId__3F466844
GO
DROP TABLE dbo.Tank
GO
EXECUTE sp_rename N'dbo.Tmp_Tank', N'Tank', 'OBJECT' 
GO
ALTER TABLE dbo.Tank ADD CONSTRAINT
	PK__Tank__3214EC075AEC82AB PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Tank ADD CONSTRAINT
	FK__Tank__UserId__3E52440B FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.[User]
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Filter ADD CONSTRAINT
	FK__Filter__TankId__3F466844 FOREIGN KEY
	(
	TankId
	) REFERENCES dbo.Tank
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.Filter SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Fish ADD CONSTRAINT
	FK__Fish__TankId__3D5E1FD2 FOREIGN KEY
	(
	TankId
	) REFERENCES dbo.Tank
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE dbo.Fish SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
