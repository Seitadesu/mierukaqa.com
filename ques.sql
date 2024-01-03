drop database if exists mieruka;
create database mieruka default character set utf8 collate utf8_general_ci;
drop user if exists 'staff'@'localhost';
create user 'staff'@'localhost' identified by 'password';
grant all on mieruka.* to 'staff'@'localhost';
use mieruka;

CREATE TABLE question (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    q_text VARCHAR(200) NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE answer (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    q_answer VARCHAR(200) NOT NULL,
    question_id INT NOT NULL, 
    question_name VARCHAR(200) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (question_id) REFERENCES question(id)
);


insert into question values(null, '好きなご飯は？');
insert into question values(null, '好きな曲は？');
insert into question values(null, '今日の授業の感想は？');




