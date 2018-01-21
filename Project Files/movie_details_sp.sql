delimiter //

create procedure insert_genre_movie_jst(in movie_id int(11) , in genre_name varchar(45))
begin

 declare genre_id_var int(11);
   
    select genre_id into genre_id_var from genre_table where genre_table.genre_name = genre_name;
    insert into genre_movie_jst (genre_movie_jst_movie_id , genre_movie_jst_genre_id) values (movie_id , genre_id_var);

end //

delimiter //
create procedure insert_language_1(in movie_id int(11) , in language_name_1 varchar(45))
begin

 declare language_id_var int(11);
   
    select language_id into language_id_var from language_table where language_table.language_name = language_name_1;
    insert into language_movie_jst values (movie_id , language_id_var);
	
end //

delimiter //
create procedure insert_language_2(in movie_id int(11) , in language_name_1 varchar(45) , in language_2 varchar(45))
begin

  declare language_id_var int(11);
  
  select language_id into language_id_var from language_table where language_table.language_name = language_name_1;
  insert into language_movie_jst (language_movie_jst_movie_id , language_movie_jst_language_id) values (movie_id , language_id_var);
  
  select language_id into language_id_var from language_table where language_table.language_name = language_name_2;
  insert into language_movie_jst (language_movie_jst_movie_id , language_movie_jst_language_id) values (movie_id , language_id_var);
  
end //

delimiter //
create procedure insert_language_3(in movie_id int(11) , in language_name_1 varchar(45) , in language_name_2 varchar(45) , in language_3 varchar(45))
begin

  declare language_id_var int(11);
  
  select language_id into language_id_var from language_table where language_table.language_name = language_name_1;
  insert into language_movie_jst (language_movie_jst_movie_id , language_movie_jst_language_id) values (movie_id , language_id_var);
  
  select language_id into language_id_var from language_table where language_table.language_name = language_name_2;
  insert into language_movie_jst (language_movie_jst_movie_id , language_movie_jst_language_id) values (movie_id , language_id_var);
  
  select language_id into language_id_var from language_table where language_table.language_name = language_name_3;
  insert into language_movie_jst (language_movie_jst_movie_id , language_movie_jst_language_id) values (movie_id , language_id_var);

end //

delimiter //
create procedure insert_dimension_1(in movie_id int(11) , in dimension_name_1 varchar(45))
begin

  declare dimension_id_var int(11);
  
  select dimension_id into dimension_id_var from dimension_table where dimension_table.dimension_name = dimension_name_1;
  insert into dimension_movie_jst (dimension_movie_jst_movie_id , dimension_movie_jst_dimension_id) values (movie_id , dimension_id_var);

end //

delimiter //
create procedure insert_dimension_2(in movie_id int(11) , in dimension_name_1 varchar(45) , in dimension_name_2 varchar(45))
begin

  declare dimension_id_var int(11);
  
  select dimension_id into dimension_id_var from dimension_table where dimension_table.dimension_name = dimension_name_1;
  insert into dimension_movie_jst (dimension_movie_jst_movie_id , dimension_movie_jst_dimension_id) values (movie_id , dimension_id_var);

  select dimension_id into dimension_id_var from dimension_table where dimension_table.dimension_name = dimension_name_2;
  insert into dimension_movie_jst (dimension_movie_jst_movie_id , dimension_movie_jst_dimension_id) values (movie_id , dimension_id_var);
  
end //


delimiter //
create procedure insert_movies(in movie_name varchar(45) , in movie_description varchar(45) , in movie_length float , in movie_censor_certi varchar(45) , in movie_release_date date , in language_sequence varchar(10) , in dimension_sequence char(2) , in genre_name varchar(45))
begin 

  declare movie_id_var int(11);
  
  insert into movie_table (movie_name , movie_description , movie_length , movie_censor_certi , movie_release_date) values (movie_name , movie_description , movie_length , movie_censor_certi , movie_release_date);
  
  select movie_id into movie_id_var from movie_table where movie_table.movie_name = movie_name;
  
  call insert_genre_movie_jst(movie_id_var , genre_name);
  
  case 
  when (language_sequence = '001')
  then call insert_language_1(movie_id_var , 'Tamil');
  
  when (language_sequence = '010')
  then call insert_language_1(movie_id_var , 'English');
  
  when (language_sequence = '011')
  then call insert_language_2(movie_id_var , 'English' , 'Tamil');

  when (language_sequence = '100')
  then call insert_language_1(movie_id_var , 'Hindi');
	
  when (language_sequence = '101')
  then call insert_language_2(movie_id_var , 'Hindi' , 'Tamil');

  when (language_sequence = '110')
  then call insert_language_2(movie_id_var , 'Hindi' , 'English');
  
  when (language_sequence = '111')
  then call insert_language_3(movie_id_var , 'Hindi' , 'English' , 'Tamil');
  end case;
  
  case
  when (dimension_sequence = '11')
  then call insert_dimension_2(movie_id_var , '2D' , '3D');
  
  when (dimension_sequence = '10')
  then call insert_dimension_1(movie_id_var , '2D');
  end case;
end //

delimiter ;

call insert_movies('Smurfs','Animated Movie', 90, 'U/A', '2017-04-29', '100', '11','Comedy');
