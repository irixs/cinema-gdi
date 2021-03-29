INSERT INTO Pessoa VALUES(14557863669,'Joao da Silva', 'joaodasilva@gmail.com');
INSERT INTO Pessoa VALUES(14557874569,'Maria da Silva', 'mariadasilva@gmail.com');
INSERT INTO Pessoa VALUES(17849863669,'Carlos da Silva', 'carlosdasilva@gmail.com');
INSERT INTO Pessoa VALUES(87456863669,'Maicon da Silva', 'maicondasilva@gmail.com');
INSERT INTO Pessoa VALUES(12374863669,'Adriana da Silva', 'adrianadasilva@gmail.com');
INSERT INTO Pessoa VALUES(87456867456,'Jaqueline Medeiros', 'jaquelinemedeiros@gmail.com');
INSERT INTO Pessoa VALUES(87748567456,'Roberta Medeiros', 'robertamedeiros@gmail.com');
INSERT INTO Pessoa VALUES(56986867456,'Robson Medeiros', 'robsonmedeiros@gmail.com');
INSERT INTO Pessoa VALUES(47566867456, 'Marcos Medeiros', 'marcosmedeiros@gmail.com');
INSERT INTO Pessoa VALUES(82346867456, 'Virginia Medeiros', 'virginiamedeiros@gmail.com');
INSERT INTO Pessoa VALUES(018155210-82, 'Eliete Cavalcanti', 'elite26@gmail.com');
INSERT INTO Pessoa VALUES(67979876016, 'Joaci Costa', 'joacicosta10@gmail.com');
INSERT INTO Pessoa VALUES(48448111001, 'Sabrina Medeiros', 'sabrinamedeiros15@gmail.com');


INSERT INTO Cinema VALUES(1, 9);
INSERT INTO Cinema VALUES(2, 4);
INSERT INTO Cinema VALUES(3, 7);
INSERT INTO Cinema VALUES(4, 5);
INSERT INTO Cinema VALUES(5, 3);



INSERT INTO Ingresso VALUES('L10',1,1);
INSERT INTO Ingresso VALUES('L11',1,1);
INSERT INTO Ingresso VALUES('B04',4,3);
INSERT INTO Ingresso VALUES('K12',5,4);
INSERT INTO Ingresso VALUES('C16',3,5);

INSERT INTO Filme VALUES(1, 'Star Wars', 'Ficção Científica', '12');
INSERT INTO Filme VALUES(2, 'Esqueceram de Mim', 'Comédia', 'L');
INSERT INTO Filme VALUES(3, 'Coringa', 'Drama', '18');
INSERT INTO Filme VALUES(4, 'Como Treinar o seu Dragão', 'Animação', 'L');
INSERT INTO Filme VALUES(5, 'Palm Springs', 'Ficção', '14');

INSERT INTO Sala VALUES(1, 300);
INSERT INTO Sala VALUES(2, 250);
INSERT INTO Sala VALUES(3, 150);
INSERT INTO Sala VALUES(4, 200);
INSERT INTO Sala VALUES(5, 300);

INSERT INTO Cliente VALUES(14557863669,20);
INSERT INTO Cliente VALUES(14557874569,10);
INSERT INTO Cliente VALUES(17849863669,25);
INSERT INTO Cliente VALUES(87456863669,15);
INSERT INTO Cliente VALUES(12374863669,65);

INSERT INTO Funcionario VALUES(87456867456, 3000, 83684462000100);
INSERT INTO Funcionario VALUES(87748567456, 1045, 94667164000110);
INSERT INTO Funcionario VALUES(56986867456, 1045, 26832575000164);
INSERT INTO Funcionario VALUES(47566867456, 1045, 97959967000137);
INSERT INTO Funcionario VALUES(82346867456, 1045, 29957878000100);

INSERT INTO SALA3D VALUES(5, 300);

INSERT INTO Sala_imax VALUES(1, 'Aquela que treme');

INSERT INTO Sessao VALUES (1, 1, 2 ,TO_DATE('01/02/2020 14:02:44', 'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO Sessao VALUES (2, 1, 2 ,TO_DATE('01/02/2020 17:00:44', 'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO Sessao VALUES (3, 2, 3 ,TO_DATE('01/02/2020 18:02:44', 'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO Sessao VALUES (4, 5, 1 ,TO_DATE('01/02/2020 20:07:44', 'dd/mm/yyyy hh24:mi:ss'));
INSERT INTO Sessao VALUES (5, 4, 4 ,TO_DATE('01/02/2020 22:05:44', 'dd/mm/yyyy hh24:mi:ss'));

INSERT INTO Pertence VALUES('L10',1);
INSERT INTO Pertence VALUES('L11',1);
INSERT INTO Pertence VALUES('B04',4);
INSERT INTO Pertence VALUES('K12',5);
INSERT INTO Pertence VALUES('C16',3);

INSERT INTO Supervisiona VALUES(87456867456, 87748567456);
INSERT INTO Supervisiona VALUES(87456867456, 56986867456);
INSERT INTO Supervisiona VALUES(87456867456, 47566867456);

INSERT INTO entrar_em_cartaz VALUES (1, 1, 2 ,TO_DATE('20/01/2020', 'dd/mm/yyyy'));
INSERT INTO entrar_em_cartaz VALUES (1, 2, 1 ,TO_DATE('20/01/2020', 'dd/mm/yyyy'));
INSERT INTO entrar_em_cartaz VALUES (1, 2, 2 ,TO_DATE('20/01/2020', 'dd/mm/yyyy'));
INSERT INTO entrar_em_cartaz VALUES (2, 3, 5 ,TO_DATE('13/01/2020', 'dd/mm/yyyy'));
INSERT INTO entrar_em_cartaz VALUES (5, 4, 3 ,TO_DATE('30/01/2020', 'dd/mm/yyyy'));
INSERT INTO entrar_em_cartaz VALUES (4, 5, 4 ,TO_DATE('31/01/2020', 'dd/mm/yyyy'));

INSERT INTO Comprar_ingresso VALUES(14557863669, 'K12', 4);
INSERT INTO Comprar_ingresso VALUES(14557874569, 'B04', 3);
INSERT INTO Comprar_ingresso VALUES(17849863669, 'L10', 1);
INSERT INTO Comprar_ingresso VALUES(17849863669, 'L11', 1);
INSERT INTO Comprar_ingresso VALUES(87456863669, 'C16', 5);

INSERT INTO Endereco VALUES(1, 1, 'Brasil', 'Pernambuco', 'Recife', 'Pina', 'Av. República do Líbano', 251, 51110-160);
INSERT INTO Endereco VALUES(2, 2, 'Brasil', 'Paraíba', 'João Pessoa','Manaíra', 'Av. Gov. Flávio Ribeiro Coutinho', 115, 58037-972);
INSERT INTO Endereco VALUES(3, 3, 'Brasil', 'Ceará', 'Fortaleza','Papicu', 'R. Des. Lauro Nogueira', 1355, 60175-055);
INSERT INTO Endereco VALUES(4, 4, 'Brasil', 'Pernambuco', 'Olinda', 'Casa Caiada', 'R. Eduardo de Morais', 100, 53130-150);
INSERT INTO Endereco VALUES(5, 5, 'Brasil', 'Maranhão', 'São Luis', 'Jaracaty', 'Av. Prof. Carlos Cunha', 1000, 65076-907);

INSERT INTO Telefone VALUES(14557863669, 34274299);
INSERT INTO Telefone VALUES(14557863669, 88997734);
INSERT INTO Telefone VALUES(47566867456, 99766658);
INSERT INTO Telefone VALUES(12374863669, 76655439);
INSERT INTO Telefone VALUES(56986867456, 97568990);

INSERT INTO Alocar VALUES(1, 1, 1, 2);
INSERT INTO Alocar VALUES(2, 1, 2, 1);
INSERT INTO Alocar VALUES(3, 1, 2, 2);
INSERT INTO Alocar VALUES(4, 2, 3, 5);
INSERT INTO Alocar VALUES(5, 4, 5, 4);

