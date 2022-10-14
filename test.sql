-- 1)
SELECT * FROM `film` WHERE `date_sortie` > '1960-00-00';
SELECT titre FROM `film` WHERE `date_sortie` < '1960-00-00';

-- 2)
UPDATE `film` SET `description` = 'un deux trois soleil' WHERE `film`.`id` = 35;

-- 3)
INSERT INTO `film` (`titre`, `slug`, `image`, `prix`, `description`, `date_sortie`) VALUES ('Indiana jones', 'black panther', 'Logo.png', '4567908', 'In Sha Allah j\'ai une bonne note', '2022-10-18');
INSERT INTO `films_categs` (`id_film`, `id_categorie`) VALUES ('44', '49'), ('44', '51'), ('44', '53');

-- 4)
SELECT * FROM commentaire, film, user WHERE commentaire.id_film = 43 && film.id = 43 && commentaire.id_user = user.id;


-- 5)
DELETE FROM film WHERE film.slug LIKE "t%";

-- 6)
SELECT DISTINCT commentaire.id_user, user.* FROM  user, commentaire WHERE user.id = commentaire.id_user;

-- 7)
SELECT * FROM film, films_categs WHERE films_categs.id_categorie = 53 && film.id = films_categs.id_film;

-- 8)
SELECT AVG(note) FROM commentaire;

-- 9)
SELECT * FROM film WHERE film.date_sortie LIKE "%-06-%";

-- 10)
SELECT DISTINCT commentaire.id_user, user.* FROM  user, commentaire WHERE user.id = commentaire.id_user && user.role = 1;
