DROP DATABASE IF exists ASDF_DB;
CREATE DATABASE If not exists ASDF_DB;

USE ASDF_DB;

CREATE TABLE IF NOT EXISTS Gnere (
	idGendre INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Genre VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	idAlbum INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	anbumName VARCHAR(255) NOT NULL,
    dateReleased DATETIME
);

CREATE TABLE IF NOT EXISTS Artist (
	artistId INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    artitsName VARCHAR(255) NOT NULL
);