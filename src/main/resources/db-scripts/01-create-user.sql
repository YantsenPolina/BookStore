CREATE USER 'bookstoreapp'@'localhost' IDENTIFIED BY 'bookstoreapp';
GRANT ALL PRIVILEGES ON * . * TO 'bookstoreapp'@'localhost';
ALTER USER 'bookstoreapp'@'localhost' IDENTIFIED WITH mysql_native_password BY 'bookstoreapp';
