/** Create database */
CREATE DATABASE mydatabase;
GO
USE mydatabase;
GO
/** Create schema */
CREATE SCHEMA myschema;
GO

/** create table */
CREATE TABLE myschema.mytable (
    id INT PRIMARY KEY IDENTITY (1, 1),
    name VARCHAR (50) NOT NULL
);
GO