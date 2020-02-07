ALTER SESSION SET CURRENT_SCHEMA = Salghamdi;

DROP TABLE music;
CREATE TABLE music(
                    genre varchar(50),
                    name_of_piece varchar(20),
                    date_Played Date,
                    duration_Played number(30),
                    date_Added Date,
                    artist varchar(15),
                    Album varchar(15),
                    Cost_of_piece number(6)
                    );

                    
INSERT into music values(
                'Rock',
                'Billy',
                '12-Feb-2015',
                55,
                '12-Feb-2015',
                'Micheal Reeves',
                'The wow',
                15
                );
                
INSERT into music (genre,name_of_piece,date_Played) values(
                'Reee',
                'Matthew',
                '12-March-2001'
                );
INSERT into music(genre,name_of_piece,date_Played)values(
                'Reee',
                'Nathan',
                '12-March-1969'
                );                
                
INSERT into music values(
                'Country',
                'Billy',
                '12-Feb-2019',
                55,
                '12-Feb-2019',
                'Omair Duadu',
                'KSA',
                15
                );               


SELECT * from music;
                    