CREATE DATABASE NobelDB;
use NobelDB;

CREATE TABLE Nobel_win (
    year INT,
    subject VARCHAR(50),
    winner VARCHAR(100),
    country VARCHAR(50),
    category VARCHAR(50)
);

INSERT INTO Nobel_win VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),

(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),

(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),

(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),

(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1994, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

-- 1:
SELECT YEAR, SUBJECT, WINNER
FROM Nobel_win
WHERE YEAR = 1970;

-- 2:
SELECT YEAR, SUBJECT, WINNER, COUNTRY
FROM Nobel_win
WHERE SUBJECT = 'Chemistry'
AND YEAR BETWEEN 1965 AND 1975;

-- 3:
SELECT YEAR, SUBJECT, WINNER, COUNTRY
FROM Nobel_win
WHERE WINNER LIKE 'Louis%';

-- 4:
SELECT *
FROM Nobel_win
WHERE SUBJECT NOT LIKE 'P%'
ORDER BY YEAR DESC, WINNER ASC;

-- 5:
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM Nobel_win
WHERE YEAR = 1970
ORDER BY
CASE
    WHEN SUBJECT IN ('Chemistry', 'Economics') THEN 1
    ELSE 0
END,
SUBJECT ASC;