USE escola;

-- 1️⃣ Orquestras (5 inserts)
INSERT INTO Orquestra (id_orquestra, nome, cidade, pais, data_criacao) 
VALUES (1,'Filarmônica de Viena','Viena','Áustria','1842-03-28');
INSERT INTO Orquestra (id_orquestra, nome, cidade, pais, data_criacao) 
VALUES (2,'Orquestra Sinfônica de São Paulo','São Paulo','Brasil','1954-01-01');
INSERT INTO Orquestra (id_orquestra, nome, cidade, pais, data_criacao) 
VALUES (3,'Filarmônica de Berlim','Berlim','Alemanha','1882-05-01');
INSERT INTO Orquestra (id_orquestra, nome, cidade, pais, data_criacao) 
VALUES (4,'Orquestra Nacional da França','Paris','França','1930-06-15');
INSERT INTO Orquestra (id_orquestra, nome, cidade, pais, data_criacao) 
VALUES (5,'Orquestra Metropolitana','Londres','Reino Unido','1925-09-01');

-- 2️⃣ Sinfonias (5 inserts)
INSERT INTO Sinfonia (id_sinfonia, nome, compositor, data_criacao, id_orquestra) 
VALUES (1,'Sinfonia nº 5','Beethoven','1808-12-22',1);
INSERT INTO Sinfonia (id_sinfonia, nome, compositor, data_criacao, id_orquestra) 
VALUES (2,'Sinfonia nº 9','Beethoven','1824-05-07',1);
INSERT INTO Sinfonia (id_sinfonia, nome, compositor, data_criacao, id_orquestra) 
VALUES (3,'Sinfonia nº 40','Mozart','1788-07-25',3);
INSERT INTO Sinfonia (id_sinfonia, nome, compositor, data_criacao, id_orquestra) 
VALUES (4,'Sinfonia nº 6','Beethoven','1808-12-22',2);
INSERT INTO Sinfonia (id_sinfonia, nome, compositor, data_criacao, id_orquestra) 
VALUES (5,'Sinfonia nº 1','Tchaikovsky','1866-04-24',5);

-- 3️⃣ Músicos (5 inserts)
INSERT INTO Musico (id_musico, nome, identidade, nacionalidade, data_nascimento, id_orquestra, email, telefone, genero) 
VALUES (1,'João Silva','123456','Brasileiro','1990-01-01',2,'joao@email.com','11999999999','M');
INSERT INTO Musico (id_musico, nome, identidade, nacionalidade, data_nascimento, id_orquestra, email, telefone, genero) 
VALUES (2,'Anna Muller','789101','Alemã','1985-04-10',3,'anna@email.com','49988887777','F');
INSERT INTO Musico (id_musico, nome, identidade, nacionalidade, data_nascimento, id_orquestra, email, telefone, genero) 
VALUES (3,'Carlos Pereira','456789','Português','1992-09-15',2,'carlos@email.com','21977776666','M');
INSERT INTO Musico (id_musico, nome, identidade, nacionalidade, data_nascimento, id_orquestra, email, telefone, genero) 
VALUES (5,'Paulo Gomes','111222','Brasileiro','1988-02-14',1,'paulo@email.com','11988889999','M');
INSERT INTO Musico (id_musico, nome, identidade, nacionalidade, data_nascimento, id_orquestra, email, telefone, genero) 
VALUES (6,'Lucia Rossi','333444','Italiana','1991-07-23',3,'lucia@email.com','21988887766','F');

-- 4️⃣ Funções (3 inserts)
INSERT INTO Funcao (id_funcao, nome_funcao, descricao) 
VALUES (1,'Maestro','Responsável pela regência da orquestra');
INSERT INTO Funcao (id_funcao, nome_funcao, descricao) 
VALUES (2,'Violinista','Toca violino');
INSERT INTO Funcao (id_funcao, nome_funcao, descricao) 
VALUES (4,'Trompetista','Toca trompete');

-- 5️⃣ Instrumentos (2 inserts)
INSERT INTO Instrumento (id_instrumento, nome, tipo, afinacao) 
VALUES (1,'Violino','Cordas','Mi');
INSERT INTO Instrumento (id_instrumento, nome, tipo, afinacao) 
VALUES (2,'Piano','Teclas','C');

-- 6️⃣ Relação Musico_Funcao_Sinfonia (2 inserts)
INSERT INTO Musico_Funcao_Sinfonia (id_musico, id_funcao, id_sinfonia, data_inicio) 
VALUES (1,2,1,'2020-01-01');
INSERT INTO Musico_Funcao_Sinfonia (id_musico, id_funcao, id_sinfonia, data_inicio) 
VALUES (2,1,2,'2019-05-10');

-- 7️⃣ Relação Musico_Instrumento_Sinfonia (2 inserts)
INSERT INTO Musico_Instrumento_Sinfonia (id_musico, id_instrumento, id_sinfonia) 
VALUES (1,1,1);
INSERT INTO Musico_Instrumento_Sinfonia (id_musico, id_instrumento, id_sinfonia) 
VALUES (2,2,2);