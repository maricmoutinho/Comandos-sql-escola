-- ======================
-- UPDATES/DELETES
-- ======================
UPDATE Musico SET telefone = '11988887777' WHERE id_musico = 1;
UPDATE Musico SET nacionalidade = 'Italiana' WHERE id_musico = 3;
UPDATE Orquestra SET cidade = 'Rio de Janeiro' WHERE id_orquestra = 2;
UPDATE Sinfonia SET compositor = 'Mozart' WHERE id_sinfonia = 1;
UPDATE Musico SET nome = 'Carlos Silva' WHERE id_musico = 5;
UPDATE Musico SET telefone = '21999999999' WHERE id_musico = 6;
UPDATE Musico SET nacionalidade = 'Alemã' WHERE id_musico = 7;
UPDATE Orquestra SET nome = 'Orquestra Filarmônica' WHERE id_orquestra = 3;
UPDATE Funcao SET nome_funcao = 'Pianista' WHERE id_funcao = 4;
UPDATE Instrumento SET nome = 'Flauta Doce' WHERE id_instrumento = 2;


DELETE FROM Musico_Instrumento_Sinfonia WHERE id_musico = 2 AND id_instrumento = 2;
DELETE FROM Musico_Funcao_Sinfonia WHERE id_musico = 2 AND id_funcao = 1;
DELETE FROM Musico WHERE id_musico = 6;
DELETE FROM Sinfonia WHERE id_sinfonia = 5;
DELETE FROM Orquestra WHERE id_orquestra = 5;
DELETE FROM Funcao WHERE id_funcao = 4;
DELETE FROM Instrumento WHERE id_instrumento = 2;
DELETE FROM Musico_Instrumento_Sinfonia WHERE id_sinfonia = 4;
DELETE FROM Musico_Funcao_Sinfonia WHERE id_sinfonia = 2;
DELETE FROM Musico WHERE id_musico = 3;