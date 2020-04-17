PRAGMA foreign_keys = ON;

CREATE TABLE users (
    fname VARCHAR(255),
    lname VARCHAR(255)
);

CREATE TABLE questions (
    title VARCHAR(255),
    body VARCHAR(255),
    author VARCHAR(255) FOREIGN KEY REFERENCES --(something)
);

CREATE TABLE question_follows (
    fname VARCHAR(255),
    1name VARCHAR(255),
    title VARCHAR(255),
    body VARCHAR(255),
    author VARCHAR(255) FOREIGN KEY REFERENCES --(something)
);

CREATE TABLE replies (
    -- to do
);

CREATE TABLE question_likes (
    -- to do
);