DROP DATABASE IF EXISTS manager_user;
CREATE DATABASE manager_user;
USE manager_user;
CREATE TABLE users (
 id  INT(3) NOT NULL AUTO_INCREMENT,
 `name` VARCHAR(120) NOT NULL,
 email VARCHAR(220) NOT NULL,
 country VARCHAR(120),
 PRIMARY KEY (id)
);

INSERT INTO users(`name`, email, country) VALUES('Minh','minh@codegym.vn','Viet Nam');
INSERT INTO users(`name`, email, country) VALUES('Kante','kante@che.uk','Kenia');

DELIMITER $$
CREATE PROCEDURE get_user_by_id(IN user_id INT)

BEGIN

    SELECT users.name, users.email, users.country

    FROM users

    WHERE users.id = user_id;

    END$$

DELIMITER ;


DELIMITER $$
CREATE PROCEDURE select_user()
BEGIN

SELECT * FROM users;

END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE edit_user(  id_update_product INT,
 name VARCHAR(120) ,
 email VARCHAR(220) ,
 country VARCHAR(120)
 )

BEGIN
UPDATE users SET `name` =  `name`, email = email, country = country
WHERE id = id_update_product;
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE delete_user(id_delete int)
BEGIN 
DELETE FROM users WHERE id =id_delete;
END $$ 
DELIMITER ;


DELIMITER $$

CREATE PROCEDURE insert_user(

IN user_name varchar(50),

IN user_email varchar(50),

IN user_country varchar(50)

)

BEGIN
    INSERT INTO users(`name`, email, country) VALUES(user_name, user_email, user_country);

    END$$

DELIMITER ;