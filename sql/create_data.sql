DROP TABLE IF EXISTS Person;
DROP TABLE IF EXISTS Film;
DROP TABLE IF EXISTS Watch;
DROP TABLE IF EXISTS Share;
DROP TABLE IF EXISTS Favorite;
DROP TABLE IF EXISTS Genre;
DROP TABLE IF EXISTS Episode;

-- Person table
CREATE TABLE Person (
    PersonID INT NOT NULL PRIMARY KEY,
    Username NVARCHAR(50) NOT NULL,
    Pass NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    FullName NVARCHAR(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Avatar NVARCHAR(255),
    RegisterDay DATE,
    AdminRole BIT DEFAULT 0,  
    Active BIT DEFAULT 1
);

-- Genre table
CREATE TABLE Genre (
    GenreID INT NOT NULL PRIMARY KEY,
    GenreName NVARCHAR(50) NOT NULL
);

-- Film table
CREATE TABLE Film (
    FilmID INT NOT NULL PRIMARY KEY,
    GenreID INT,
    FilmName NVARCHAR(100) NOT NULL,
    Poster NVARCHAR(255),
    Descriptions NVARCHAR(MAX),
    Quality NVARCHAR(50),
    DateUploaded DATE,
    Active BIT DEFAULT 1,
    FOREIGN KEY (GenreID) REFERENCES Genre(GenreID)
);

-- Episode table
CREATE TABLE Episode (
    EpisodeID INT NOT NULL PRIMARY KEY,
    EpisodeName NVARCHAR(100),
    FilmID INT,
    Thumbnail NVARCHAR(255),
    Link NVARCHAR(255),
    DateUploaded DATE,
    Active BIT DEFAULT 1,
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
);

-- Share table
CREATE TABLE Share (
    PersonID INT,
    FilmID INT,
    ShareDate DATE,
    PRIMARY KEY (PersonID, FilmID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
);

-- Favorite table
CREATE TABLE Favorite (
    PersonID INT,
    FilmID INT,
    FavoriteDate DATE,
    Active BIT DEFAULT 0,
    PRIMARY KEY (PersonID, FilmID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
);

-- Watch table
CREATE TABLE Watch (
    PersonID INT,
    FilmID INT,
    WatchDate DATE,
    PRIMARY KEY (PersonID, FilmID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID)
);
