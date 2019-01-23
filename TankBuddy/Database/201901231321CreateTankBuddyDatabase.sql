CREATE DATABASE [TankBuddy]
GO

USE [TankBuddy]
GO

CREATE TABLE [User] 
(
	[Id] int PRIMARY KEY IDENTITY(1,1),
	[Name] varchar(255),
	[Uid] varchar(255),
	[Metric] bit
);

CREATE TABLE [Tank] 
(
	[Id] int PRIMARY KEY IDENTITY(1,1),
	[Name] varchar(255),
	[UserId] int,
	[Length] float,
	[Width] float,
	[Depth] float,
	[pH] float,
	[Temp] int,
	[dH] int
);

CREATE TABLE [Filter] 
(
	[Id] int PRIMARY KEY IDENTITY(1,1),
	[Name] varchar(255),
	[FlowRate] int,
	[Type] varchar(50),
	[TankId] int
);

CREATE TABLE [Fish] 
(
	[Id] int PRIMARY KEY IDENTITY(1,1),
	[Name] varchar(255),
	[Sex] bit,
	[TankId] int,
	[SpeciesId] int
);


ALTER TABLE [Fish] ADD FOREIGN KEY ([TankId]) REFERENCES [Tank] ([Id]) ON DELETE CASCADE;

ALTER TABLE [Tank] ADD FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]) ON DELETE CASCADE;

ALTER TABLE [Filter] ADD FOREIGN KEY ([TankId]) REFERENCES [Tank] ([Id]) ON DELETE CASCADE;
