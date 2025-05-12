create database sistemasdetarefas;
 
CREATE TABLE funcionaria

(

    email VARCHAR(100) PRIMARY KEY,     

    nomecompleto VARCHAR(150) NOT NULL,        

    senha VARCHAR(255) NOT NULL,     

    perguntadeseguranca VARCHAR(255) NOT NULL,     

    resposta VARCHAR(255) NOT NULL,

    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    lembrar_senha BOOLEAN
 
);
 
INSERT INTO funcionaria(email, nomecompleto, senha, perguntadeseguranca, resposta);
VALUES("mariaclara@gmail.com", "maria clara silva", "12345", "comida prefererida", "feijoada");
 
UPDATE funcionaria 
SET senha = "54321"
WHERE perguntadeseguranca = "comida preferida" AND resposta = "feijoada";
 
 
CREATE TABLE tarefa
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ano VARCHAR(20) NOT NULL,
    atividade VARCHAR(50) NOT NULL,
    semana INT NOT NULL,
    mes VARCHAR(50) NOT NULL,
    situacao VARCHAR(100) NOT NULL DEFALT "Pendente",
    nomefuncionaria VARCHAR(150) NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    email_funcionaria VARCHAR(150), 
    FOREIGN KEY(email_funcionaria) REFERENCES funcionaria(email)
);
INSERT INTO tarefa(id, ano, atividade, semana, mes, situacao, nomefuncionaria);
VALUES(1234567, "2025", "Arquivo dos livros", 4, "Abril", "Pendente", "Maria Clara");
 
SELECT atividade, semana, mes, ano, nomefuncionaria, situacao
FROM tarefa;
 
UPDATE tarefa
SET situacao = "Finalizado"
WHERE id = 1234567;
 
DELETE FROM tarefa
WHERE id = 1234567;
 
SELECT perguntadeseguranca, senha
FROM funcionaria
WHERE email = "mariaclara@gmail.com";
 
 
