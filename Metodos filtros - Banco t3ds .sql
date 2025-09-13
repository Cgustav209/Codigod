USE t3ds;

## SELECIONAR DE                 LUGAR       SEMELHANTE
SELECT * FROM usuario WHERE nome LIKE '%Michael%';

SELECT * FROM artista WHERE nacionalidade = 'Brasileira'; ## SELECIONAR E FILTRAR
#############################################
### COUNT = CONTAR
SELECT count(id_artista) FROM artista;


SELECT * FROM usuario WHERE nascimento BETWEEN '1960-01-01' AND '2010-01-01' AND month (nascimento) = '04';
SELECT * FROM artista WHERE nacionalidade NOT IN ('Americana');
#################################
SELECT * FROM musica WHERE duracao BETWEEN '00-02-00'AND '00-20-00';
SELECT * FROM musica WHERE duracao BETWEEN '00-03-00'AND '00-05-00'
################################

#ORDENAR         DECRESENTE
ORDER BY duracao DESC;
SELECT nome FROM usuario ORDER BY nome ASC;# A-Z
SELECT nome FROM usuario ORDER BY nome DESC;# Z-A

##################################
#selecionar titulo da musica e o nome do genero das tabelas musica e genero
# inner join une as tabelas verificando a relacao entre elas, ou seja chave estrangeira
SELECT m.titulo_musica, g.titulo_genero FROM musica m INNER JOIN genero g ON m.id_genero = g.id_genero;
