DROP SCHEMA IF EXISTS `bookstore`;
CREATE SCHEMA `bookstore`;
USE `bookstore`;
CREATE TABLE IF NOT EXISTS `bookstore`.`book_category` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(255) NULL DEFAULT NULL,
    PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
CREATE TABLE IF NOT EXISTS `bookstore`.`book` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `isbn` VARCHAR(255) DEFAULT NULL,
    `name` VARCHAR(255) DEFAULT NULL,
    `author` VARCHAR(255) DEFAULT NULL,
    `publishing` VARCHAR(255) DEFAULT NULL,
    `unit_price` DECIMAL(13,2) DEFAULT NULL,
    `image_url` VARCHAR(255) DEFAULT NULL,
    `active` BIT DEFAULT 1,
    `units_in_stock` INT(11) DEFAULT NULL,
    `date_created` DATETIME(6) DEFAULT NULL,
    `last_updated` DATETIME(6) DEFAULT NULL,
    `category_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_category` (`category_id`),
    CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;
INSERT INTO book_category(category_name) VALUES ('Fantasy');
INSERT INTO book_category(category_name) VALUES ('Programming');
INSERT INTO book_category(category_name) VALUES ('English');
INSERT INTO book_category(category_name) VALUES ('Fiction');
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('978-0-00-750767-2', 'A Knight of the Seven Kingdoms', 'George R.R. Martin', 'HarperVoyager',
        'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('0-19-431456-1', 'How English Works', 'Michael Swan, Catherine Walter', 'Oxford University Press',
        'assets/images/books/placeholder.png', 1, 5, 9.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('978-0-00-748729-5', 'The Hobbit or There and Back Again', 'J.R.R. Tolkien', 'HarperCollinsPublishers',
        'assets/images/books/placeholder.png', 1, 10, 11.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('978-0-00-744803-6', 'A Game of Thrones', 'George R.R. Martin', 'HarperVoyager',
        'assets/images/books/placeholder.png',1 , 10, 29.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created)
VALUES ('0-7475-6320-9', "Schott\'s Original Miscellany", 'Ben Schott', 'Bloomsbury',
		'assets/images/books/placeholder.png', 1, 5, 4.99, 4, NOW());
