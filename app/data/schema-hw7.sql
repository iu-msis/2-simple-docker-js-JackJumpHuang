New:
create database msis;

use msis;

CREATE TABLE Comments (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    commentText TEXT
);

INSERT INTO Comments (id, commentText) VALUES
(1, "I have something important to say"),
(2, "D&S is awesome"),
(3, ":) --> smile emoji");

select * from Comments;
