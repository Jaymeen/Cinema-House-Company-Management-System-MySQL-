SELECT movie_description FROM movie_table WHERE movie_name = 'Sakhavu';

SELECT movie_length FROM movie_table WHERE movie_name = 'Fast and Furious 8';

SELECT movie_censor_certi FROM movie_table WHERE movie_name = 'Wrong Side Raju';

SELECT movie_release_date FROM movie_table WHERE movie_name = 'Naam Shabana';

SELECT movie_name FROM movie_table WHERE movie_id in (SELECT dimension_movie_jst_movie_id FROM dimension_movie_jst WHERE dimension_movie_jst_dimension_id 
in(SELECT dimension_id FROM dimension_table WHERE dimension_name = '2D' ));

SELECT movie_name FROM movie_table WHERE movie_id in (SELECT dimension_movie_jst_movie_id FROM dimension_movie_jst WHERE dimension_movie_jst_dimension_id 
in(SELECT dimension_id FROM dimension_table WHERE dimension_name = '3D' ));

SELECT movie_name FROM movie_table WHERE movie_id in (SELECT language_movie_jst_movie_id FROM language_movie_jst WHERE language_movie_jst_language_id 
in(SELECT language_id FROM language_table WHERE language_name = 'Hindi' ));

SELECT movie_name FROM movie_table WHERE movie_id in (SELECT language_movie_jst_movie_id FROM language_movie_jst WHERE language_movie_jst_language_id 
in(SELECT language_id FROM language_table WHERE language_name = 'English' ));

SELECT movie_name FROM movie_table WHERE movie_id in (SELECT genre_movie_jst_movie_id FROM genre_movie_jst WHERE genre_movie_jst_genre_id 
in(SELECT genre_id FROM genre_table WHERE genre_name = 'Thriller' ));


SELECT movie_name FROM movie_table WHERE movie_id in (SELECT time_table_movie_id FROM time_table WHERE time_table_date = '2017-04-20');

SELECT movie_name FROM movie_table WHERE movie_release_date > '2017-04-20';

SELECT movie_table.movie_name , dimension_movie_jst.dimension_movie_jst_movie_id , dimension_table.dimension_name
FROM ((dimension_movie_jst
INNER JOIN movie_table ON movie_table.movie_id = dimension_movie_jst.dimension_movie_jst_movie_id)
INNER JOIN dimension_table ON dimension_table.dimension_id = dimension_movie_jst.dimension_movie_jst_dimension_id
 AND movie_table.movie_name = 'Baahubali 2'
 AND dimension_table.dimension_name = '3D');

SELECT seat_show_instance_seat_reserved FROM seat_show_instance_jst WHERE seat_show_instance_jst_seat_id 
in (SELECT seat_row_jst_seat_id FROM seat_row_jst WHERE seat_row_jst_seat_name = 'A8') and seat_show_instance_jst_show_id = '2' ;

SELECT dimension_name FROM dimension_table WHERE dimension_id in (SELECT show_instance_dimension_id FROM show_instance_table WHERE show_instance_show_id = '1');

SELECT show_instance_start_time FROM show_instance_table WHERE show_instance_show_id = '2';

SELECT screen_name FROM screen_table WHERE screen_id in (SELECT show_instance_screen_id FROM show_instance_table WHERE show_instance_show_id = '1');

SELECT language_name FROM language_table WHERE language_id in (SELECT show_instance_language_id FROM show_instance_table WHERE show_instance_show_id = '1');
	
SELECT category_table.category_name, category_show_instance_jst.category_show_instance_price, category_show_instance_jst.category_show_instance_show_id
FROM category_show_instance_jst
INNER JOIN category_table ON category_show_instance_jst.category_show_instance_show_id = '1'AND category_show_instance_jst.category_show_instance_category_id = category_table.category_id;

SELECT category_table.category_name, category_show_instance_jst.category_show_instance_price, category_show_instance_jst.category_show_instance_show_id
FROM category_show_instance_jst
INNER JOIN category_table ON category_show_instance_jst.category_show_instance_category_id = category_table.category_id;

SELECT show_instance_table.show_instance_show_id , category_table.category_name , category_show_instance_jst.category_show_instance_price
FROM ((category_show_instance_jst
INNER JOIN category_table ON category_show_instance_jst.category_show_instance_category_id = category_table.category_id)
INNER JOIN show_instance_table ON show_instance_table.show_instance_show_id = category_show_instance_jst.category_show_instance_show_id
 AND show_instance_table.show_instance_start_time = '09:00:00');

SELECT movie_name FROM movie_table WHERE movie_id in(SELECT show_instance_movie_id FROM show_instance_table WHERE show_instance_start_time = '09:00:00');

SELECT category_table.category_name, category_show_instance_jst.category_show_instance_price, category_show_instance_jst.category_show_instance_show_id
FROM category_show_instance_jst
INNER JOIN category_table ON category_show_instance_jst.category_show_instance_show_id = '1'
AND category_show_instance_jst.category_show_instance_category_id = category_table.category_id
AND category_table.category_name = 'GOLD';

SELECT screen_total_rows FROM screen_table WHERE screen_id = '1';

SELECT screen_total_seats FROM screen_table WHERE screen_id = '2';


SELECT category_table.category_name, row_category_jst.row_category_jst_row_id
FROM row_category_jst
INNER JOIN category_table ON row_category_jst.row_category_jst_screen_id = '1'
AND row_category_jst.row_category_jst_category_id = category_table.category_id;

SELECT seat_row_jst_seat_name FROM seat_row_jst WHERE seat_row_jst_row_id = '3';
















