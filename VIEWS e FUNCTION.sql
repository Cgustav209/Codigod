use t3ds;
CREATE VIEW dados_musicas AS SELECT m.titulo_musica, m.duracao, a.nome_artista, g.titulo_genero FROM musica AS m JOIN artista AS a ON m.id_artista = a.id_artista JOIN genero AS g ON m.id_genero = g.id_genero;
SELECT * FROM dados_musicas;
##############################################
-- ATIVIDADE  ##METODO                   TABELAS PUXADAS               TABELA PRINCIPAL    RENOMEAR  TABELA SEGUNDARIA RENOMEIA E VALIDA COM ALGO QUE TEM NAS DUAS TABELAS
CREATE VIEW perfil_usuario AS SELECT u.nome, p.titulo_playlist, h.id_historico FROM usuario AS u JOIN playlist AS p ON u.id_usuario = p.id_usuario 
## SEGUNDA TABELA SEGUNDARIA
JOIN historico AS h ON u.id_usuario = u.id_usuario;
SELECT * FROM perfil_usuario;


CREATE VIEW playlist_prontas AS SELECT p.titulo_playlist, al.titulo_album, m.titulo_musica FROM playlist AS p JOIN album AS al ON p.id_artista = al.id_artista JOIN musica AS m ON p.id_artista = m.id_artista;

############################

DELIMITER $$
CREATE FUNCTION calcular_idade(nascimento DATE)
	RETURNS INT DETERMINISTIC
	BEGIN
		RETURN TIMESTAMPDIFF(YEAR, nascimento, CURRENT_DATE());
	END$$
DELIMITER ;;
SELECT nome, calcular_idade(nascimento) as idade FROM usuario;
SELECT * FROM usuario;
UPDATE usuario SET idade = calcular_idade(nascimento) WHERE id_usuario > 0 
