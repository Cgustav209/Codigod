USE t3ds;
#SELECIONAR todos os campos(*) nome_tabela
SELECT * FROM artista;
INSERT INTO artista (nome_artista, nacionalidade) VALUES ('Capital Inicial','Brasileira');#1
INSERT INTO artista (nome_artista, nacionalidade) VALUES ('Bruno Mars','Americana');#2
INSERT INTO artista (nome_artista, nacionalidade) VALUES  ('Michael Jackson','Americana');#3
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Eminem','Americana');#4
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Nirvana','Americana');#5
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Imagine Dragons','Americana');#6
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Coldplay','Americana'); #7
INSERT INTO artista (nome_artista, nacionalidade) VALUES('AC/DC','Australiana'); #8
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Cidade Negra','Brasileira');#9
INSERT INTO artista (nome_artista, nacionalidade) VALUES('O Rappa','Brasileira'); #10
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Green Day','Americana');#11
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Foo Fighters','Americana');#12
INSERT INTO artista (nome_artista, nacionalidade) VALUES('System Of A Down','Americana');#13
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Guns N Roses ','Americana');#14
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Queen','Britanica');#15
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Fall Out Boy','Americana');#16
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Linkin Park','Americana');#17
INSERT INTO artista (nome_artista, nacionalidade) VALUES('OneRepublic','Americana');#18
INSERT INTO artista (nome_artista, nacionalidade) VALUES('One Direction','Britanica');#19
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Skank','Brasileira');#20
INSERT INTO artista (nome_artista, nacionalidade) VALUES('Metallica','Americana');#21

SELECT * FROM genero;
INSERT INTO genero (titulo_genero) VALUES ('Rock'),('Pop'),('Pop Rock'),('Metal Rock'),('Reggae'),('Rap');
SELECT * FROM musica;

INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Primeiros Erros','00:05:35',1,3);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Die With A Smile','00:04:12',2,2);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Thriller','00:13:41',3,1);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Mockngbird','00:04:18',4,6);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('All Apologies','00:03:35',5,1);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Beliver','00:05:06',6,2);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Yellow','00:04:33',7,3);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Thunderstruck','00:04:53',8,1);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Girassol','00:03:57',9,5);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Anjo (Pra quem tem fé)','00:06:43',10,5);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('American Idiot','00:02:55',11,3);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Everlong','00:04:52',12,3);
INSERT INTO musica (titulo_musica, duracao, id_artista, id_genero) VALUES('Choup Suey','00:03:31',13,4);




ALTER TABLE musica ADD COLUMN caminho VARCHAR (200) NOT NULL;
UPDATE musica SET caminho = "musica/musical.mp3" WHERE id_musica = 4;
SELECT * FROM musica WHERE titulo_musica LIKE 'T' AND duracao>'00:03:00'; ## SELECIONAR E FILTRAR
