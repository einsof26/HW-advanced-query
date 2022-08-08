CREATE TABLE IF NOT EXISTS Genres(
    genre_id INTEGER PRIMARY KEY,
    genre_name VARCHAR(60)
    );
    
CREATE TABLE IF NOT EXISTS Singers(
    singer_id INTEGER PRIMARY KEY,
    singer_name VARCHAR(60)
   );
  
CREATE TABLE IF NOT EXISTS SingersGenres(
    singergenre_id SERIAL PRIMARY KEY,
    singer_id INTEGER REFERENCES Singers(singer_id),
    genre_id INTEGER REFERENCES Genres(genre_id)
    );
    
CREATE TABLE IF NOT EXISTS Albums (
    album_id INTEGER PRIMARY KEY,
    album_name VARCHAR(60),
    release_year INTEGER
   );
  
CREATE TABLE IF NOT EXISTS SingersAlbums(
    singeralbum_id SERIAL PRIMARY KEY,
    singer_id INTEGER REFERENCES Singers(singer_id),
    album_id INTEGER REFERENCES Albums(album_id)
    );
   
CREATE TABLE IF NOT EXISTS Tracks(
    track_id INTEGER PRIMARY KEY,
    track_name VARCHAR(60),
    track_duration INTEGER,
    album_id INTEGER REFERENCES Albums(album_id)
    );

CREATE TABLE IF NOT EXISTS Collections(
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(60),
    collection_year INTEGER   
    );
    
CREATE TABLE IF NOT EXISTS CollectionsTracks(
    collectiontracks_id SERIAL PRIMARY KEY,
    collection_id INTEGER REFERENCES Collections(collection_id),
    track_id INTEGER REFERENCES Tracks(track_id)
    );
