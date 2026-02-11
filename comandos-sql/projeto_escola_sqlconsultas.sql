-- 1) Listar todos os músicos e suas orquestras
SELECT m.nome, o.nome AS orquestra
FROM Musico m
JOIN Orquestra o ON m.id_orquestra = o.id_orquestra;

-- 2) Listar todas as sinfonias com os nomes das orquestras
SELECT s.nome, s.compositor, o.nome AS orquestra
FROM Sinfonia s
JOIN Orquestra o ON s.id_orquestra = o.id_orquestra;

-- 3) Buscar músicos e as funções desempenhadas
SELECT m.nome, f.nome_funcao, s.nome AS sinfonia
FROM Musico_Funcao_Sinfonia mfs
JOIN Musico m ON mfs.id_musico = m.id_musico
JOIN Funcao f ON mfs.id_funcao = f.id_funcao
JOIN Sinfonia s ON mfs.id_sinfonia = s.id_sinfonia;

-- 4) Listar os instrumentos tocados em cada sinfonia
SELECT s.nome AS sinfonia, i.nome AS instrumento, m.nome AS musico
FROM Musico_Instrumento_Sinfonia mis
JOIN Sinfonia s ON mis.id_sinfonia = s.id_sinfonia
JOIN Instrumento i ON mis.id_instrumento = i.id_instrumento
JOIN Musico m ON mis.id_musico = m.id_musico;

-- 5) Músicos nascidos após 1990
SELECT nome, data_nascimento
FROM Musico
WHERE data_nascimento > '1990-01-01';

-- 6) Quantidade de músicos por orquestra
SELECT o.nome AS orquestra, COUNT(m.id_musico) AS qtd_musicos
FROM Orquestra o
LEFT JOIN Musico m ON o.id_orquestra = m.id_orquestra
GROUP BY o.nome;

-- 7) Sinfonias compostas por Beethoven
SELECT nome, data_criacao
FROM Sinfonia
WHERE compositor = 'Beethoven';

-- 8) Listar os músicos e seus instrumentos
SELECT m.nome, i.nome AS instrumento
FROM Musico_Instrumento_Sinfonia mis
JOIN Musico m ON mis.id_musico = m.id_musico
JOIN Instrumento i ON mis.id_instrumento = i.id_instrumento;

-- 9) Sinfonias tocadas por músicos brasileiros
SELECT DISTINCT s.nome
FROM Musico m
JOIN Musico_Funcao_Sinfonia mfs ON m.id_musico = mfs.id_musico
JOIN Sinfonia s ON mfs.id_sinfonia = s.id_sinfonia
WHERE m.nacionalidade = 'Brasileiro';

-- 10) Instrumentos e o número de músicos aptos
SELECT i.nome, COUNT(mis.id_musico) AS qtd_musicos
FROM Instrumento i
LEFT JOIN Musico_Instrumento_Sinfonia mis ON i.id_instrumento = mis.id_instrumento
GROUP BY i.nome;

-- 11) Data de início das funções em cada sinfonia
SELECT m.nome, f.nome_funcao, s.nome AS sinfonia, mfs.data_inicio
FROM Musico_Funcao_Sinfonia mfs
JOIN Musico m ON mfs.id_musico = m.id_musico
JOIN Funcao f ON mfs.id_funcao = f.id_funcao
JOIN Sinfonia s ON mfs.id_sinfonia = s.id_sinfonia;

-- 12) Orquestras fundadas antes de 1900
SELECT nome, data_criacao
FROM Orquestra
WHERE data_criacao < '1900-01-01';

-- 13) Músicos e seus emails
SELECT nome, email FROM Musico;

-- 14) Buscar o músico mais novo
SELECT nome, data_nascimento
FROM Musico
ORDER BY data_nascimento DESC
LIMIT 1;

-- 15) Buscar o músico mais velho
SELECT nome, data_nascimento
FROM Musico
ORDER BY data_nascimento ASC
LIMIT 1;

-- 16) Músicos que já tocaram em sinfonias de Mozart
SELECT DISTINCT m.nome
FROM Musico m
JOIN Musico_Funcao_Sinfonia mfs ON m.id_musico = mfs.id_musico
JOIN Sinfonia s ON mfs.id_sinfonia = s.id_sinfonia
WHERE s.compositor = 'Mozart';

-- 17) Funções existentes na base
SELECT * FROM Funcao;

-- 18) Quantidade de sinfonias por orquestra
SELECT o.nome, COUNT(s.id_sinfonia) AS qtd_sinfonias
FROM Orquestra o
LEFT JOIN Sinfonia s ON o.id_orquestra = s.id_orquestra
GROUP BY o.nome;

-- 19) Orquestras e seus países
SELECT nome, pais FROM Orquestra;

-- 20) Subselect: músicos que são maestros
SELECT nome 
FROM Musico 
WHERE id_musico IN (
    SELECT id_musico 
    FROM Musico_Funcao_Sinfonia 
    WHERE id_funcao = (SELECT id_funcao FROM Funcao WHERE nome_funcao = 'Maestro')
);
