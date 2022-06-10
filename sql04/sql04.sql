USE ASDF_DB;

INSERT INTO asdf_db.gnere(Genre) VALUES 
('RAP'),
('EDM');

INSERT INTO asdf_db.artist(artitsName) VALUES
('ZPU'),
('NACH');

INSERT INTO asdf_db.album(albumName, dateReleased) VALUES 
('WHATEVER', '2002-02-20'),
('NONE', '2002-02-20');

select * FROM asdf_db.album;

select * FROM asdf_db.artist;

/*
ALTER TABLE album MODIFY dateReleased DATE;

alter table album rename column anbumName TO albumName;
*/