USE todo6vitrinevirtual; 
INSERT INTO tbprodutos
	(id_produto, nome_produto, descricao_produto, cod_categoria, quantidade, preco, tamanho, cor)
VALUES
	(DEFAULT,"BLUSA ALONGADA", "BLUSA ALONGADA EM TRICÔ COM ESTAMPA ANIMAL", "2", "10", "139", "PLUS SIZE", "MARROM"),
	(DEFAULT,"BLUSA ALONGADA2", "BLUSA ALONGADA EM TRICÔ COM ESTAMPA ANIMAL", "2", "10", "139", "PLUS SIZE", "PRETA"),
	(DEFAULT,"BLUSA TRICO P", "BLUSA CURTA EM TRICÔ CANELADO COM ABOTOAMENTO FRONTAL BEGE", "2", "5", "59.90", "P", "BRANCO"),
	(DEFAULT,"BLUSA TRICO M", "BLUSA CURTA EM TRICÔ CANELADO COM ABOTOAMENTO FRONTAL BEGE", "2", "5", "59.90", "M", "VERDE"),
	(DEFAULT,"BLUSA TRICO G", "BLUSA CURTA EM TRICÔ CANELADO COM ABOTOAMENTO FRONTAL BEGE", "2", "5", "59.90", "G", "AMARELO"),
	(DEFAULT,"CALÇA MOM P", "CALÇA MOM EM JEANS COM CINTO-LENÇO E BARRA DOBRADA BLUE JEANS", "2", "8", "159.90", "P", "AZUL"),
	(DEFAULT,"CALÇA MOM M", "CALÇA MOM EM JEANS COM CINTO-LENÇO E BARRA DOBRADA BLUE JEANS", "2", "8", "159.90", "M", "VERMELHO"),
	(DEFAULT,"CALÇA MOM G", "CALÇA MOM EM JEANS COM CINTO-LENÇO E BARRA DOBRADA BLUE JEANS", "2", "8", "159.90", "G", "BRANCO"),
	(DEFAULT,"CALÇA ANOS 90 G", "CALÇA ANOS 90 EM JEANS DESTROYED AZUL", "2", "5", "99.90", "P", "AZUL"),
	(DEFAULT,"JAQUETA JEANS P ", "JAQUETA TRUCKER EM JEANS COM BOLSOS AZUL", "3", "10", "199.90", "P", "AZUL"),
	(DEFAULT,"JAQUETA JEANS M ", "JAQUETA TRUCKER EM JEANS COM BOLSOS AZUL ESCURO", "3", "10", "199.90", "M", "PRETO"),
	(DEFAULT,"CAMISA BASICA M", "CAMISETA COMFORT EM ALGODÃO TEXTURIZADO MANGA LONGA PRETO", "3", "5", "70.90", "M", "PRETO"),
	(DEFAULT,"CAMISA BASICA G", "CAMISETA COMFORT EM ALGODÃO TEXTURIZADO MANGA LONGA PRETO", "3", "5", "70.90", "G", "PRETO"),
	(DEFAULT,"CALÇA INFANTIL EM MOLETOM", "CALÇA INFANTIL EM MOLETOM ESTAMPA CAMUFLADA COM BOLSOS EM ZÍPER - TAM 5 A 14 VERDE", "1", "12", "59.90", "TAM 05 A 14 ANOS", "VERDE"),
	(DEFAULT,"CALÇA INFANTIL EM MOLETOM", "CALÇA INFANTIL EM MOLETOM ESTAMPA CAMUFLADA COM BOLSOS EM ZÍPER - TAM 5 A 14 VERDE", "1", "12", "59.90", "TAM 05 A 14 ANOS", "VERDE");
    
INSERT INTO tbclientes
	(cpf, nome_cliente, idade_cliente, sexo)
VALUES 
	("18565492073", "Benjamim Andrade Silva", "16", "M"),
	("21185802851", "Davi Pereira Lemos", "32", "M"),
	("23185802853", "Helena Andrade", "25", "F"),
	("33185802855", "Samuel Rosa", "18", "M"),
	("23185702857", "Joana Andrade Lemos", "32", "F"), 
	("13185804853", "Joana Maria Torres",  "22", "F"), 
	("10185802853", "Adriana Cintia",  "19", "F"), 
	("12185802812", "Natan Andrade", "14", "M"),
	("32185802325", "Cristian Levi", 44, "M"),
	("10185322325", "Mariana Noah", "25", "F");
  
  INSERT INTO tbAvaliacao
	(id_avaliacao, cpf, id_produto, nota, titulo_avaliacao, data_avaliacao, comentarios)
VALUES
	(DEFAULT, "18565492073", "14", "1", "Muito Bom", "2022-09-01", "Produto superou as minhas expectativas!"),
    (DEFAULT, "18565492073", "15", "2", "Bom", "2022-09-01", "Produto ficou top!"),
    (DEFAULT, "18565492073", "13", "5", "Muito Ruim", "2022-09-01", "Além da demora na entrega, produto de péssima qualidade!"), 
    (DEFAULT, "21185802851", "10", "2", "Bom", "2022-09-02", "Produto ficou top!"),
    (DEFAULT, "23185802853", "1", "1", "Muito Bom", "2022-09-04", "Produto superou as minhas expectativas!"), 
	(DEFAULT, "23185802853", "2", "1", "Muito Bom", "2022-09-04", "Produto superou as minhas expectativas!"), 
    (DEFAULT, "23185802853", "3", "2", "Bom", "2022-09-04", "Produto ficou top!"), 
    (DEFAULT, "33185802855", "10", "3", "Normal", "2022-09-04", "Era o que eu estava querendo comprar!"), 
    (DEFAULT, "33185802855", "11", "3", "Normal", "2022-09-04", "Era o que eu estava querendo comprar!"), 
    (DEFAULT, "33185802855", "12", "3", "Normal", "2022-09-04", "Era o que eu estava querendo comprar!"), 
    (DEFAULT, "33185802855", "13", "3", "Normal", "2022-09-06", "Era o que eu estava querendo comprar!"),
    (DEFAULT, "23185702857", "4", "1", "Muito Bom", "2022-09-06", "Produto superou as minhas expectativas!"),
    (DEFAULT, "23185702857", "5", "1", "Muito Bom", "2022-09-06", "Produto superou as minhas expectativas!"), 
    (DEFAULT, "13185804853", "6", "2", "Bom", "2022-09-06", "Produto ficou top!"),
    (DEFAULT, "10185802853", "5", "1", "Muito Bom", "2022-09-07", "Produto superou as minhas expectativas!"), 
    (DEFAULT, "13185804853", "6", "1", "Muito Bom", "2022-09-07", "Produto superou as minhas expectativas!"), 
    (DEFAULT, "13185804853", "7", "1", "Muito Bom", "2022-09-07", "Produto superou as minhas expectativas!"), 
    (DEFAULT, "13185804853", "8", "2", "Bom", "2022-09-08", "Produto ficou top!"), 
    (DEFAULT, "13185804853", "9", "2", "Bom", "2022-09-08", "Produto ficou top!"), 
    (DEFAULT, "12185802812", "10", "1", "Muito Bom", "2022-09-10", "Produto superou as minhas expectativas!"), 
    (DEFAULT, "12185802812", "11", "1", "Muito Bom", "2022-09-10", "Produto superou as minhas expectativas!"), 
    (DEFAULT, "12185802812", "12", "1", "Muito Bom", "2022-09-10", "Produto superou as minhas expectativas!"),
    (DEFAULT, "12185802812", "13", "2", "Bom", "2022-09-10", "Produto ficou top!"), 
    (DEFAULT, "12185802812", "14", "2", "Bom", "2022-09-12", "Produto ficou top!"), 
    (DEFAULT, "12185802812", "15", "2", "Bom", "2022-09-12", "Produto ficou top!"), 
    (DEFAULT, "32185802325", "13", "5", "Muito Ruim", "2022-09-12", "Além da demora na entrega, produto de péssima qualidade!"),
    (DEFAULT, "32185802325", "13", "5", "Muito Ruim", "2022-09-12", "Além da demora na entrega, produto de péssima qualidade!"),
    (DEFAULT, "32185802325", "13", "4", "Ruim", "2022-07-12", "Decepcionado com a qualidade do produto!"),
    (DEFAULT, "32185802325", "13", "4", "Ruim", "2022-07-15", "Decepcionado com a qualidade do produto!"),
    (DEFAULT, "32185802325", "13", "4", "Ruim", "2022-07-15", "Decepcionado com a qualidade do produto!");
    
    SELECT * FROM tbavaliacao
 
 

    

