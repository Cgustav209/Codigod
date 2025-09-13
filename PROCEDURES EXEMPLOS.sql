USE t3ds;
##################################################################################
DELIMITER //
CREATE PROCEDURE inserir_musica(
IN titulo VARCHAR (150),
IN duracao TIME,
IN artista INT,
IN genero INT,
IN caminho VARCHAR(150)
)
BEGIN
INSERT INTO musica (titulo_musica, duracao ,id_artista, id_genero, caminho)
VALUES (titulo, duracao, artista, genero, caminho);
END//
DELIMITER ;;

CALL inserir_musica('Best of you','00:04:15','12','3','musica/musical.mp3');

select*from musica;
##################################################################################
DELIMITER $$
CREATE PROCEDURE BuscarIdUsuarios(
IN id INT)
BEGIN
SELECT*FROM usuario WHERE id_usuario = id ;
END $$
DELIMITER ;;

CALL BuscarIdUsuarios(10);
#DROP PROCEDURE BuscarIdUsuarios
--------------------------------------------------
DELIMITER $$
CREATE PROCEDURE ObterUsuarios()
BEGIN
SELECT * FROM usuario;
END $$
DELIMITER ;;

CALL ObterUsuarios();

#################################################################################
