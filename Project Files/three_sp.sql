DELIMITER $$

CREATE PROCEDURE complete_time_table(IN show_id INT(11), screen_id INT(11), language_id INT(11), start_time TIME, dimension_id INT(11), movie_id INT(11), date_insert DATE)        
BEGIN

INSERT INTO show_instance_table VALUES (show_id , screen_id , language_id , start_time , dimension_id , movie_id);
INSERT INTO time_table VALUES (movie_id, show_id,date_insert, start_time);

END $$

DELIMITER ;

call complete_time_table (19,1,1,'09:00:00',1,2,'2017-04-21');



DELIMITER $$

CREATE PROCEDURE payment (IN payment_id INT(11), transaction_id INT(11), seat_id INT(11),show_id INT(11))
BEGIN 

DECLARE total_amount INT(11);
SELECT category_show_instance_price INTO total_amount FROM category_show_instance_jst WHERE category_show_instance_category_id IN (SELECT row_category_jst_row_id FROM row_category_jst WHERE row_category_jst_row_id IN (SELECT seat_row_jst_row_id FROM seat_row_jst WHERE seat_row_jst_seat_id = seat_id)) AND category_show_instance_jst.category_show_instance_show_id = show_id;

INSERT INTO payment_table VALUES (payment_id,transaction_id, seat_id, 100, show_id);
UPDATE `theatre`.`seat_show_instance_jst` SET `seat_show_instance_seat_reserved`='1' WHERE `seat_show_instance_jst_show_id`= show_id AND `seat_show_instance_jst_seat_id` = seat_id;

END $$
DELIMITER ;

call payment(2,1002,2,1);



DELIMITER $$

CREATE PROCEDURE set_price (IN show_id INT(11), gold_price INT(11), silver_price INT(11), bronze_price INT(11))
BEGIN

INSERT INTO category_show_instance_jst VALUES (1, show_id, gold_price);
INSERT INTO category_show_instance_jst VALUES (2, show_id, silver_price);
INSERT INTO category_show_instance_jst VALUES (3, show_id, bronze_price);


END $$
DELIMITER ;

call set_price(19,120,100,80);


call set_price(1,120,100,80);