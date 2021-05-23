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
        
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn001', 'name001', 'author001', 'publishing001', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn002', 'name002', 'author002', 'publishing002', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn003', 'name003', 'author003', 'publishing003', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn004', 'name004', 'author004', 'publishing004', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn005', 'name005', 'author005', 'publishing005', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn006', 'name006', 'author006', 'publishing006', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn007', 'name007', 'author007', 'publishing007', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn008', 'name008', 'author008', 'publishing008', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn009', 'name009', 'author009', 'publishing009', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn010', 'name010', 'author010', 'publishing010', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn011', 'name011', 'author011', 'publishing011', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn012', 'name012', 'author012', 'publishing012', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn013', 'name013', 'author013', 'publishing013', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn014', 'name014', 'author014', 'publishing014', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn015', 'name015', 'author015', 'publishing015', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn016', 'name016', 'author016', 'publishing016', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn017', 'name017', 'author017', 'publishing017', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn018', 'name018', 'author018', 'publishing018', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn019', 'name019', 'author019', 'publishing019', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn020', 'name020', 'author020', 'publishing020', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn021', 'name021', 'author021', 'publishing021', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn022', 'name022', 'author022', 'publishing022', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn023', 'name023', 'author023', 'publishing023', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn024', 'name024', 'author024', 'publishing024', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn025', 'name025', 'author025', 'publishing025', 'assets/images/books/placeholder.png', 1, 10, 19.99, 1, NOW());

INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn001', 'name001', 'author001', 'publishing001', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn002', 'name002', 'author002', 'publishing002', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn003', 'name003', 'author003', 'publishing003', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn004', 'name004', 'author004', 'publishing004', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn005', 'name005', 'author005', 'publishing005', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn006', 'name006', 'author006', 'publishing006', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn007', 'name007', 'author007', 'publishing007', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn008', 'name008', 'author008', 'publishing008', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn009', 'name009', 'author009', 'publishing009', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn010', 'name010', 'author010', 'publishing010', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn011', 'name011', 'author011', 'publishing011', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn012', 'name012', 'author012', 'publishing012', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn013', 'name013', 'author013', 'publishing013', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn014', 'name014', 'author014', 'publishing014', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn015', 'name015', 'author015', 'publishing015', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn016', 'name016', 'author016', 'publishing016', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn017', 'name017', 'author017', 'publishing017', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn018', 'name018', 'author018', 'publishing018', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn019', 'name019', 'author019', 'publishing019', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn020', 'name020', 'author020', 'publishing020', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn021', 'name021', 'author021', 'publishing021', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn022', 'name022', 'author022', 'publishing022', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn023', 'name023', 'author023', 'publishing023', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn024', 'name024', 'author024', 'publishing024', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn025', 'name025', 'author025', 'publishing025', 'assets/images/books/placeholder.png', 1, 10, 19.99, 2, NOW());

INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn001', 'name001', 'author001', 'publishing001', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn002', 'name002', 'author002', 'publishing002', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn003', 'name003', 'author003', 'publishing003', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn004', 'name004', 'author004', 'publishing004', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn005', 'name005', 'author005', 'publishing005', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn006', 'name006', 'author006', 'publishing006', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn007', 'name007', 'author007', 'publishing007', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn008', 'name008', 'author008', 'publishing008', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn009', 'name009', 'author009', 'publishing009', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn010', 'name010', 'author010', 'publishing010', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn011', 'name011', 'author011', 'publishing011', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn012', 'name012', 'author012', 'publishing012', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn013', 'name013', 'author013', 'publishing013', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn014', 'name014', 'author014', 'publishing014', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn015', 'name015', 'author015', 'publishing015', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn016', 'name016', 'author016', 'publishing016', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn017', 'name017', 'author017', 'publishing017', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn018', 'name018', 'author018', 'publishing018', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn019', 'name019', 'author019', 'publishing019', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn020', 'name020', 'author020', 'publishing020', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn021', 'name021', 'author021', 'publishing021', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn022', 'name022', 'author022', 'publishing022', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn023', 'name023', 'author023', 'publishing023', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn024', 'name024', 'author024', 'publishing024', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn025', 'name025', 'author025', 'publishing025', 'assets/images/books/placeholder.png', 1, 10, 19.99, 3, NOW());

INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn001', 'name001', 'author001', 'publishing001', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn002', 'name002', 'author002', 'publishing002', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn003', 'name003', 'author003', 'publishing003', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn004', 'name004', 'author004', 'publishing004', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn005', 'name005', 'author005', 'publishing005', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn006', 'name006', 'author006', 'publishing006', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn007', 'name007', 'author007', 'publishing007', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn008', 'name008', 'author008', 'publishing008', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn009', 'name009', 'author009', 'publishing009', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn010', 'name010', 'author010', 'publishing010', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn011', 'name011', 'author011', 'publishing011', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn012', 'name012', 'author012', 'publishing012', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn013', 'name013', 'author013', 'publishing013', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn014', 'name014', 'author014', 'publishing014', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn015', 'name015', 'author015', 'publishing015', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn016', 'name016', 'author016', 'publishing016', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn017', 'name017', 'author017', 'publishing017', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn018', 'name018', 'author018', 'publishing018', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn019', 'name019', 'author019', 'publishing019', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn020', 'name020', 'author020', 'publishing020', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn021', 'name021', 'author021', 'publishing021', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn022', 'name022', 'author022', 'publishing022', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn023', 'name023', 'author023', 'publishing023', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn024', 'name024', 'author024', 'publishing024', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());
INSERT INTO book (isbn, name, author, publishing, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('isbn025', 'name025', 'author025', 'publishing025', 'assets/images/books/placeholder.png', 1, 10, 19.99, 4, NOW());