USE t3ds;
SELECT * FROM artista LIMIT 5;# OFFSET 0;
SELECT * FROM musica WHERE duracao >'00:03:00' ORDER BY duracao ASC LIMIT 3;
SELECT * FROM genero ORDER BY titulo_genero ASC LIMIT 3; ###
SELECT * FROM genero LIMIT 3;
SELECT * FROM usuario WHERE nascimento ORDER BY nascimento ASC LIMIT 10;
SELECT MIN(duracao_album) FROM album ORDER BY duracao_album ASC LIMIT 2;
SELECT * FROM album where duracao_album;
SELECT * FROM artista WHERE nome_artista LIKE '%a';
SELECT * FROM album WHERE titulo_album LIKE '%live';
SELECT * FROM artista WHERE nacionalidade LIKE 'Bra%';
SELECT * FROM musica WHERE caminho LIKE '%.mp3';
SELECT m.titulo_musica, a.nome_artista FROM musica m INNER JOIN artista a ON m.id_artista = a.nome_artista;


## JOIN NA PRATICA
SELECT m.usuario, g.titulo_genero FROM musica m INNER JOIN genero g ON m.id_genero = g.id_genero;
#selecionar titulo da musica e o nome do genero das tabelas musica e genero

# inner join une as tabelas verificando a relacao entre elas, ou seja chave estrangeira
SELECT m.id_playlist, a.nome_usuario FROM playlist m INNER JOIN usuario a ON m.id_usuario = a.titulo_playlist;
#SELECT titulo_musica,id_historico,id_usuario from 

SELECT u.nome, p.titulo_playlist FROM usuario u INNER JOIN playlist p ON u.id_usuario = p.id_usuario;

SELECT u.nome, m.titulo_musica FROM usuario u INNER JOIN historico h ON u.id_usuario = h.id_usuario INNER JOIN musica m ON h.id_musica = m.id_musica;

SELECT u.nome, g.titulo_genero FROM historico h JOIN usuario u ON h.id_usuario = u.id_usuario JOIN musica m ON h.id_musica = m.id_musica JOIN genero g ON m.id_genero = g.id_genero;