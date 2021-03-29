CREATE TABLE pessoa(
cpf INT,
nome VARCHAR2(30),
email VARCHAR2(30),

CONSTRAINT Pessoa_pk PRIMARY KEY (cpf)
);
CREATE TABLE cinema(
cinema_id INT,
salas INT,

CONSTRAINT Cinema_pk PRIMARY KEY (cinema_id)
);

CREATE TABLE ingresso(
cod_cadeira VARCHAR(10),
sessao VARCHAR(10),
cinema INT,

CONSTRAINT cod_cadeira_pk PRIMARY KEY (cod_cadeira),
CONSTRAINT cinema_fk FOREIGN KEY (cinema) REFERENCES Cinema(cinema_id)
);
CREATE TABLE filme(
cod_filme INT,
titulo VARCHAR(100),
genero VARCHAR(30),
classificação_indicativa VARCHAR(10),

CONSTRAINT filme_pk PRIMARY KEY (cod_filme)
);

CREATE TABLE historico_filme( 
cod_filme INT, 
titulo VARCHAR(100), 
genero VARCHAR(30), 
classificação_indicativa VARCHAR(10), 
 
CONSTRAINT historico_filme_pk PRIMARY KEY (cod_filme) 
);

CREATE TABLE sala(
id INT,
num_lugares INT,

CONSTRAINT Sala_pk PRIMARY KEY (id)
);

CREATE TABLE cliente(
cpf_p INT,
pontos_fidelidade INT,

CONSTRAINT cliente_pk PRIMARY KEY (cpf_p),
CONSTRAINT cliente_fk FOREIGN KEY (cpf_p) REFERENCES Pessoa(cpf)
);


CREATE TABLE funcionario(
cpf_p INT,
salario FLOAT,
carteira_trabalho INT,

CONSTRAINT funcionario_pk PRIMARY KEY (cpf_p),
CONSTRAINT funcionario_fk FOREIGN KEY (cpf_p) REFERENCES Pessoa(cpf),
CONSTRAINT funcionario_check CHECK (salario >= 1045)
);
CREATE TABLE Sala3D(
	id_sala INT,
	oculos INT,

	CONSTRAINT sala_3D_pk PRIMARY KEY (id_sala),
CONSTRAINT sala_3D_fk FOREIGN KEY (id_sala) REFERENCES Sala(id)
);

CREATE TABLE  sala_imax(
id_sala INT,
tipo_cadeira VARCHAR2(30),

CONSTRAINT sala_imax_pk PRIMARY KEY (id_sala),
CONSTRAINT sala_imax_fk FOREIGN KEY (id_sala) REFERENCES Sala(id)
);
CREATE TABLE sessao(
cod_sessao INT,
filme INT, 
sala INT,
horario_dia TIMESTAMP,

CONSTRAINT cod_sessao_pk PRIMARY KEY (cod_sessao),
CONSTRAINT filme_fk FOREIGN KEY (filme) REFERENCES Filme(cod_filme),
CONSTRAINT sala_fk FOREIGN KEY (sala) REFERENCES Sala(id)
);
CREATE TABLE possui_ingresso(
	cliente INT,
	ingresso VARCHAR2(30),

CONSTRAINT possui_ingresso_pk PRIMARY KEY (cliente, ingresso ) ,
CONSTRAINT possui_ingresso_cliente_fk FOREIGN KEY (cliente) REFERENCES Cliente(cpf_p) ,
CONSTRAINT possui_ingresso_ingresso_fk FOREIGN KEY (ingresso) REFERENCES Ingresso(cod_cadeira)

);

CREATE TABLE Pertence(
	ingresso VARCHAR(10),
	sessao INT,

	CONSTRAINT pertence_pk PRIMARY KEY (ingresso, sessao),
	CONSTRAINT pertence_ingresso_fk FOREIGN KEY (ingresso) REFERENCES Ingresso(cod_cadeira),
CONSTRAINT pertence_sessao_fk FOREIGN KEY (sessao) REFERENCES Sessao(cod_sessao)
);

CREATE TABLE Supervisiona(
	supervisor INT,
	supervisionado INT,

	CONSTRAINT supervisiona_pk PRIMARY KEY (supervisor, supervisionado),
	CONSTRAINT supervisiona_supervisor_fk FOREIGN KEY (supervisor) REFERENCES Funcionario(cpf_p),
CONSTRAINT supervisiona_supervisionado_fk FOREIGN KEY (supervisionado) REFERENCES Funcionario(cpf_p)
);
CREATE TABLE  entrar_em_cartaz(
filme INT,
sessao INT,
cinema INT,
dia TIMESTAMP,

CONSTRAINT entrar_em_cartaz_pk PRIMARY KEY (filme, sessao, cinema),
CONSTRAINT entrar_em_cartaz_filme_fk FOREIGN KEY (filme) REFERENCES Filme (cod_filme),
CONSTRAINT entrar_em_cartaz_sessao_fk FOREIGN KEY (sessao) REFERENCES Sessao (cod_sessao),
CONSTRAINT entrar_em_cartaz_cinema_fk FOREIGN KEY (cinema) REFERENCES Cinema(cinema_id)
);
CREATE TABLE comprar_ingresso(
cliente INT,
ingresso VARCHAR2(30),
cinema INT,

CONSTRAINT comprar_ingresso_pk PRIMARY KEY (cliente, ingresso),
CONSTRAINT  comprar_ingresso_cliente_fk FOREIGN KEY (cliente) REFERENCES Cliente (cpf_p),
CONSTRAINT  comprar_ingresso_ingresso_fk FOREIGN KEY (ingresso) REFERENCES Ingresso (cod_cadeira),
CONSTRAINT  comprar_ingresso_cinema_fk FOREIGN KEY (cinema) REFERENCES Cinema (cinema_id)
);


CREATE TABLE Endereco(
id INT,
cinema_id INT,
pais VARCHAR2(30),
estado VARCHAR2(30),
cidade VARCHAR2(30),
bairro VARCHAR2(50),
rua VARCHAR2(100),
numero INT,
cep INT,

CONSTRAINT endereco_pk PRIMARY KEY (id),
CONSTRAINT endereco_fk FOREIGN KEY (cinema_id) REFERENCES Cinema(cinema_id)
);

CREATE TABLE  telefone(
cpf_pessoa INT,
telefone INT,

CONSTRAINT telefone_pk PRIMARY KEY (cpf_pessoa,telefone),
CONSTRAINT telefone_fk FOREIGN KEY (cpf_pessoa) REFERENCES Pessoa(cpf)
);

CREATE TABLE alocar(
	sala INT,
	entrar_em_cartaz_filme INT,
	entrar_em_cartaz_sessao INT,
	entrar_em_cartaz_cinema INT,

    CONSTRAINT alocar_pk PRIMARY KEY (sala, entrar_em_cartaz_filme,entrar_em_cartaz_sessao,entrar_em_cartaz_cinema),
    CONSTRAINT alocar_sala_fk FOREIGN KEY (sala) REFERENCES Sala(id),
	CONSTRAINT alocar_fk FOREIGN KEY (entrar_em_cartaz_filme,entrar_em_cartaz_sessao,entrar_em_cartaz_cinema) REFERENCES ENTRAR_EM_CARTAZ(filme,sessao,cinema)
);

