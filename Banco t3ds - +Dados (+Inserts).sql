USE t3ds;
SELECT * FROM musica; #
SELECT * FROM album; #
SELECT * FROM usuario; #
SELECT * FROM genero; #
SELECT * FROM historico;
SELECT * FROM musica_artista;
SELECT * FROM artista;  #
SELECT * FROM notifica; #
##############################################################
INSERT INTO playlist (capa, titulo_playlist, id_usuario, id_musica )
VALUES ('capa.jpg', 'Meus favoritos',1,6);
###################################################################################################################################

INSERT INTO album (titulo_album, duracao_album, descricao, id_artista) VALUES
('Acústico MTV', '00:63:00', 'Versão acústica ao vivo com os maiores sucessos do Capital Inicial.', 1),
('24K Magic','00: 34:00', 'Álbum pop e funk com estilo retrô e vibe dançante de Bruno Mars.', 2),
('Thriller', '00:42:00', 'Álbum mais vendido da história, com hits como ''Billie Jean'' e ''Beat It''.', 3),
('The Marshall Mathers LP', '00:72:00', 'Um dos álbuns mais impactantes e controversos do rap.', 4),
('Nevermind', '00:49:00', 'Álbum icônico do grunge que levou o Nirvana ao estrelato.', 5),
('Night Visions', '00:43:00', 'Estreia da banda com hits como "Radioactive" e "Demons".', 6),
('A Rush of Blood to the Head', '00:55:00', 'Álbum introspectivo e melódico, aclamado pela crítica.', 7),
('Back in Black', '00:42:00', 'Tributo a Bon Scott, com riffs marcantes e energia pura.', 8),
('Sobre Todas as Forças', '00:60:00', 'Sucesso do reggae brasileiro com mensagens sociais.', 9),
('Lado B Lado A', '00:66:00', 'Mistura de rap, rock e reggae com críticas sociais fortes.', 10),
('American Idiot', '00:57:00', 'Ópera punk rock crítica à política americana.', 11),
('Wasting Light', '00:47:00', 'Gravado em fita analógica, considerado um dos melhores do Foo Fighters.', 12),
('Toxicity', '00:44:00', 'Mistura agressiva de metal e crítica política e social.', 13),
('Appetite for Destruction', '00:54:00', 'Álbum de estreia com clássicos como "Sweet Child O'' Mine".', 14),
('A Night at the Opera', '00:43:00', 'Álbum inovador com faixas épicas como "Bohemian Rhapsody".', 15),
('From Under the Cork Tree', '00:43:00', 'Sucesso do pop punk dos anos 2000.', 16),
('Hybrid Theory', '00:38:00', 'Mistura de rock, rap e eletrônico que marcou gerações.', 17),
('Native', '00:48:00', 'Pop rock com grandes hits como "Counting Stars".', 18),
('Midnight Memories', '00:47:00', 'Transição do pop adolescente para um som mais maduro.', 19),
('Calango', '00:48:00', 'Sucesso do pop rock brasileiro com elementos de reggae.', 20),
('Metallica (The Black Album)', '00:62:00', 'Álbum com som mais acessível e grandes sucessos como "Enter Sandman".', 21);
###############################################################################################################################
INSERT INTO historico (data_historico, id_usuario) VALUES ();
##################################################################################
INSERT INTO historico (data_historico, id_usuario, id_musica) VALUES
('2024-03-15', 1, 1),  -- Geovanny ouviu 'Primeiros Erros'
('2025-07-22', 2, 2),  -- Felipe ouviu 'Die With A Smile'
('2024-11-05', 3, 3),  -- Heitor ouviu 'Thriller'
('2025-01-18', 4, 4),  -- Bianca ouviu 'Mockngbird'
('2024-08-30', 5, 5),  -- Messi ouviu 'All Apologies'
('2024-12-12', 6, 6),  -- Rafael ouviu 'Beliver'
('2025-04-27', 7, 7),  -- Cristano ouviu 'Yellow'
('2025-09-09', 8, 8),  -- Gisele ouviu 'Thunderstruck'
('2024-06-03', 9, 9),  -- Calleri ouviu 'Girassol'
('2025-02-14', 10, 10); -- Naruto ouviu 'Anjo (Pra quem tem fé)'


