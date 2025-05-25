USE holy_grail;

DROP TABLE IF EXISTS food;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS food_category;

CREATE TABLE food (
    food_id INT UNSIGNED auto_increment primary key,
    name VARCHAR(255),
    price VARCHAR(255),
    calories SMALLINT UNSIGNED,
    description VARCHAR(255),
    pictureUrl VARCHAR(255)
);

CREATE TABLE category (
    category_id INT UNSIGNED auto_increment primary key,
    name VARCHAR(32)
);

CREATE TABLE food_category (
    food_id INT UNSIGNED,
    category_id INT UNSIGNED,
    PRIMARY KEY (food_id, category_id)
);