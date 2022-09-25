CREATE DATABASE IF NOT EXISTS todo6vitrinevirtual
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;

USE todo6vitrinevirtual;

CREATE TABLE IF NOT EXISTS tbProdutos (
id_produto INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR(80) NOT NULL,
descricao_produto VARCHAR(200) ,
cod_categoria INT NOT NULL,
quantidade INT NOT NULL,
preco DECIMAL(10,2) NOT NULL,
tamanho VARCHAR(50),
cor VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS tbClientes (
cpf VARCHAR(11) PRIMARY KEY NOT NULL,
nome_cliente VARCHAR(255),
idade_cliente INT, 
sexo VARCHAR(1) NULL
);

CREATE TABLE IF NOT EXISTS tbAvaliacao (
id_avaliacao INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
titulo_avaliacao VARCHAR(50), 
data_avaliacao DATE,
nota VARCHAR(5),
comentarios VARCHAR(200),
id_produto INT,
cpf VARCHAR(11), 
FOREIGN KEY (id_produto) REFERENCES tbprodutos(id_produto), 
CONSTRAINT fk_clientes FOREIGN KEY (cpf) REFERENCES tbClientes(cpf)
);


