-- 1) View de músicos e orquestras
CREATE VIEW vw_musicos_orquestras AS
SELECT m.nome AS musico, o.nome AS orquestra
FROM Musico m
JOIN Orquestra o ON m.id_orquestra = o.id_orquestra;

-- 2) View de sinfonias por compositor
CREATE VIEW vw_sinfonias_compositor AS
SELECT nome, compositor, data_criacao FROM Sinfonia;

-- 3) View de músicos e funções
CREATE VIEW vw_musicos_funcoes AS
SELECT m.nome, f.nome_funcao, s.nome AS sinfonia
FROM Musico_Funcao_Sinfonia mfs
JOIN Musico m ON mfs.id_musico = m.id_musico
JOIN Funcao f ON mfs.id_funcao = f.id_funcao
JOIN Sinfonia s ON mfs.id_sinfonia = s.id_sinfonia;

-- 4) View de instrumentos tocados
CREATE VIEW vw_instrumentos_sinfonias AS
SELECT s.nome AS sinfonia, i.nome AS instrumento, m.nome AS musico
FROM Musico_Instrumento_Sinfonia mis
JOIN Sinfonia s ON mis.id_sinfonia = s.id_sinfonia
JOIN Instrumento i ON mis.id_instrumento = i.id_instrumento
JOIN Musico m ON mis.id_musico = m.id_musico;

-- 5) View de orquestras antigas
CREATE VIEW vw_orquestras_antigas AS
SELECT nome, data_criacao
FROM Orquestra
WHERE data_criacao < '1900-01-01';

-- 6) View de músicos com emails
CREATE VIEW vw_musicos_contato AS
SELECT nome, email, telefone FROM Musico;

-- 7) View de funções cadastradas
CREATE VIEW vw_funcoes AS
SELECT * FROM Funcao;

-- 8) View de músicos brasileiros
CREATE VIEW vw_musicos_brasileiros AS
SELECT nome, nacionalidade FROM Musico WHERE nacionalidade = 'Brasileiro';

-- 9) View de sinfonias Beethoven
CREATE VIEW vw_sinfonias_beethoven AS
SELECT nome, data_criacao FROM Sinfonia WHERE compositor = 'Beethoven';

-- 10) View de músicos e instrumentos
CREATE VIEW vw_musicos_instrumentos AS
SELECT m.nome, i.nome AS instrumento
FROM Musico_Instrumento_Sinfonia mis
JOIN Musico m ON mis.id_musico = m.id_musico
JOIN Instrumento i ON mis.id_instrumento = i.id_instrumento;
