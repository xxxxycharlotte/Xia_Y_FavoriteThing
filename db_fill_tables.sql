START TRANSACTION;

-- ----------------------------------------------------------------

INSERT INTO `movies`(`name`, `shortname`, `poster`, `banner`, `descr`, `releasedate`, `country`, `director`, `duration`)
VALUES (
    "Monster University",
    "Monster Univ.",
    "posters/monsters_univ_poster.jpg",
    "banners/monsters_univ_banner.jpg",
    "Ever since he was a kid monster, Mike Wazowski (Billy Crystal) has dreamed of becoming a Scarer. To make his dream a reality, he enrolls at Monsters University. During his first semester, he meets Sulley (John Goodman), a natural-born Scarer. Sulley and Mike engage in a fierce rivalry that ultimately gets them both kicked out of MUs elite Scare Program. To make things right, Mike and Sulley — along with a bunch of misfit monsters — will have to learn to work together.",
    "2013-06-21",
    "Canada",
    "Dan Scanlon",
    110
);

SET @last_id = LAST_INSERT_ID();

INSERT INTO `characters`(`movie_id`, `name`, `image`)
VALUES (
    @last_id,
    "James P. Sullivan",
    "characters/monsters_univ_char1.png"
);

INSERT INTO `characters`(`movie_id`, `name`, `image`)
VALUES (
    @last_id,
    "Mike Wazowski",
    "characters/monsters_univ_char2.png"
);

-- ----------------------------------------------------------------

INSERT INTO `movies`(`name`, `shortname`, `poster`, `banner`, `descr`, `releasedate`, `country`, `director`, `duration`)
VALUES (
    "Zootopia",
    "Zootopia",
    "posters/zootopia_poster.jpg",
    "banners/zootopia_banner.jpg",
    "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law. Determined to prove herself, Judy jumps at the opportunity to solve a mysterious case. Unfortunately, that means working with Nick Wilde, a wily fox who makes her job even harder.",
    "2016-03-04",
    "Canada",
    "Byron Howard, Rich Moore",
    110
);

SET @last_id = LAST_INSERT_ID();

INSERT INTO `characters`(`movie_id`, `name`, `image`)
VALUES (
    @last_id,
    "Nick Wilde",
    "characters/zootopia_char1.png"
);

INSERT INTO `characters`(`movie_id`, `name`, `image`)
VALUES (
    @last_id,
    "Lt. Judy Hopps",
    "characters/zootopia_char2.png"
);

-- ----------------------------------------------------------------

INSERT INTO `movies`(`name`, `shortname`, `poster`, `banner`, `descr`, `releasedate`, `country`, `director`, `duration`)
VALUES (
    "Cinderella",
    "Cinderella",
    "posters/cinderella_poster.jpg",
    "banners/cinderella_banner.jpg",
    "With a wicked stepmother (Eleanor Audley) and two jealous stepsisters (Rhoda Williams, Lucille Bliss) who keep her enslaved and in rags, Cinderella (Ilene Woods) stands no chance of attending the royal ball. When her fairy godmother (Verna Felton) appears and magically transforms her reality into a dream come true, Cinderella enchants the handsome Prince Charming at the ball, but must face the wrath of her enraged stepmother and sisters when the spell wears off at midnight.",
    "1950-02-22",
    "USA",
    "Clyde Geronimi, Wilfred Jackson, Hamilton Luske",
    76
);

SET @last_id = LAST_INSERT_ID();

INSERT INTO `characters`(`movie_id`, `name`, `image`)
VALUES (
    @last_id,
    "Cinerella",
    "characters/cinderella_char1.png"
);

INSERT INTO `characters`(`movie_id`, `name`, `image`)
VALUES (
    @last_id,
    "Fairy Godmother",
    "characters/cinderella_char2.png"
);

COMMIT;
