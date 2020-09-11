use codeup_test_db;

SELECT * FROM albums WHERE artist = 'The Eagles';

use employees;

select * from employees where last_name = 'Bamford';


use codeup_test_db;

CREATE TABLE cars (
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      make VARCHAR(100) NOT NULL,
                      model VARCHAR(100) NOT NULL,
                      primary key (id),
                      unique (model)
);

INSERT INTO cars (make, model) VALUES ('Datsun', 'Fairlady Z'), ('Nissan', 'Sentra');

ALTER TABLE cars DROP COLUMN year;

ALTER TABLE cars ADD COLUMN year INT UNSIGNED NOT NULL;