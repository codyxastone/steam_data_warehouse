/*
==========================================================
CREATE DATABASE AND SCHEMAS
==========================================================
Script Purpose:

	Check to see if SteamDatabase exists, if not it will create the database
	along with the bronze, silver and gold schemas.

WARNING:
	Rinning this script will drop the entier 'SteamDatabase' if it exists.
	All data in the database will be permanently deleted. Ensure proper backups
	are up to date before running this script.
*/

USE MASTER;
GO
--Check if database already exists. If so drop it.
IF EXISTS(SELECT 1 FROM sys.databases WHERE NAME = 'SteamDatabase')

BEGIN
	ALTER DATABASE SteamDatabase SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE SteamDatabase;
END

--Create the SteamDatabase database.
CREATE DATABASE SteamDatabase;
GO

USE SteamDatabase;
GO

--Create the bronze, silver and gold schemas.
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
