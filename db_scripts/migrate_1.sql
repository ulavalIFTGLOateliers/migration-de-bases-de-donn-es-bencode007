CREATE TABLE band(
    bandName varchar(50) PRIMARY KEY,
    creation YEAR,
    genre varchar(50)
);

INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"), ("Mysterio", 2019, "pop");



ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician ADD role varchar(50);
ALTER TABLE musician ADD bandName varchar(50) ;

UPDATE musician SET role = "vocals", bandName="Crazy Duo" WHERE musician.singerName="Alina";
UPDATE musician SET role="guitar", bandName="Mysterio" WHERE musician.singerName="Mysterio";
UPDATE musician SET role="percussion", bandName="Crazy Duo" WHERE musician.singerName="Rainbow";
UPDATE musician SET role="piano", bandName="Luna" WHERE musician.singerName="Luna";

#ALTER TABLE musician ADD FOREIGN KEY(bandName) REFERENCES band(bandName);
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;



