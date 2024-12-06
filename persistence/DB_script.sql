-- CREATE DATABASE project_database;

-- CREATE TABLE Users (
-- 	   userID INTEGER NOT NULL UNIQUE AUTO_INCREMENT,
--     name VARCHAR(100),
--     email VARCHAR(100),
--     PRIMARY KEY (userID)
-- );

-- CREATE TABLE Shoots (
-- 	shootID int NOT NULL UNIQUE AUTO_INCREMENT,
--     name VARCHAR(150),
--     date DATE,
--     userID int,
--     PRIMARY KEY (shootID),
--     FOREIGN KEY (userID) REFERENCES Users(userID)
-- );

-- CREATE TABLE Photos (
-- 	photoID int NOT NULL UNIQUE AUTO_INCREMENT,
--     fileName VARCHAR(50),
--     shootID int,
--     PRIMARY KEY (photoID),
--     FOREIGN KEY (shootID) REFERENCES Shoots(shootID)
-- );

-- CREATE TABLE Comments (
-- 	commentID int NOT NULL UNIQUE AUTO_INCREMENT,
--     date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     text VARCHAR(250),
--     photoID int,
--     shootID int,
--     PRIMARY KEY (commentID),
--     FOREIGN KEY (photoID) REFERENCES Photos(photoID),
--     FOREIGN KEY (shootID) REFERENCES Shoots(shootID)
-- );
/*
ALTER TABLE Comments
ADD userID int,
ADD FOREIGN KEY (userID) REFERENCES Users(userID);
*/

