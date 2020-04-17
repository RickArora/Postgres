PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER NOT NULL PRIMARY KEY, 
    fname VARCHAR(255),
    lname VARCHAR(255)
);

CREATE TABLE questions (
    id INTEGER NOT NULL PRIMARY KEY,
    title VARCHAR(255),
    body VARCHAR(255),
    author_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES USERS(id)
);

CREATE TABLE question_follows (   
    id INTEGER NOT NULL PRIMARY KEY,
    fname VARCHAR(255),
    lname VARCHAR(255),
    title VARCHAR(255),
    body VARCHAR(255),
    author_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES USERS(id),
    questions_id INTEGER NOT NULL,
    FOREIGN KEY (questions_id) REFERENCES QUESTIONS(id)
);

CREATE TABLE replies (
    id INTEGER NOT NULL PRIMARY KEY,
    parent_reply VARCHAR(255),
    subject_question VARCHAR(255),
    body VARCHAR(255),
    author_id INTEGER,
    subject_question VARCHAR(255) NOT NULL,
    FOREIGN KEY(author_id) REFERENCES USERS(id)
);

CREATE TABLE question_likes ( 
    id INTEGER NOT NULL PRIMARY KEY,
    likes VARCHAR(255),
    author_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES USERS(id),
    questions_id INTEGER NOT NULL,
    FOREIGN KEY (questions_id) REFERENCES QUESTIONS(id)
);