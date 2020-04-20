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
    FOREIGN KEY (author_id) REFERENCES users(id)
);

CREATE TABLE question_follows (   
    id INTEGER NOT NULL PRIMARY KEY,
    author_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES users(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE replies (
    id INTEGER NOT NULL PRIMARY KEY,
    parent_id INTEGER,
    body VARCHAR(255),
    author_id INTEGER,
    subject_question VARCHAR(255) NOT NULL,
    FOREIGN KEY(author_id) REFERENCES users(id),
    FOREIGN KEY(parent_id) REFERENCES replies(id)
);

CREATE TABLE question_likes ( 
    id INTEGER NOT NULL PRIMARY KEY,
    question_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);

INSERT INTO 
    users (fname, lname)
VALUES
    ('Ricky', 'Arora');

INSERT INTO 
    users (fname, lname)
VALUES
    ('Sharan', 'Lubana');

INSERT INTO 
    questions (title, body, author_id)
VALUES
    ('question_name', 'question_body', 1);


INSERT INTO 
    questions
    (title, body,author_id)
VALUES
    ('question_name2', 'question_body2', 2);


INSERT INTO 
    question_follows (author_id,question_id)
VALUES 
    (1,1);

INSERT INTO 
    question_follows
    (author_id,question_id)
VALUES
    (2, 2);


INSERT INTO 
    replies(parent_id, body, author_id, subject_question) 
VALUES
    (1, 'parent_body', 1,'hi');

INSERT INTO 
    replies
    (parent_id, body, author_id, subject_question)
VALUES
    (2, 'parent_body2', 2, 'hi');
INSERT INTO 
    question_likes (question_id, user_id)
VALUES 
    (1,1);
INSERT INTO 
    question_likes (question_id, user_id)
VALUES
    (2, 2);