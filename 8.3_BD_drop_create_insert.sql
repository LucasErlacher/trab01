CREATE DATABASE BD_MAPA_DO_CRIME;

drop table if exists bairro, cidade, contato, delegacia, endereco, estado, estadocivil, logradouro, nacionalidade, ocorrencia, ocorrencia_tipoocorrencia, pessoa, pessoafisica, profissao, profissao_pessoa, sexo, tipocontato, tipoocorrencia, usuario;

CREATE TABLE PESSOA (
    ID SERIAL PRIMARY KEY UNIQUE,
    NOME varchar(100),
    FK_ENDERECO_ID int
);

CREATE TABLE PESSOAFISICA (
    CPF bigint,
    RG int,
    DATANASCIMENTO date,
    FK_PESSOA_ID int PRIMARY KEY,
    FK_NACIONALIDADE_ID int,
    FK_ESTADOCIVIL_ID int,
    FK_SEXO_ID int,
    FK_CIDADE_ID int,
    UNIQUE (CPF, RG, FK_PESSOA_ID)
);

CREATE TABLE OCORRENCIA (
    ID INT PRIMARY KEY UNIQUE,
    DATAOCORRENCIA date,
    DATAREGISTRO date,
    HORAREGISTRO time without time zone,
    HORAOCORRENCIA time without time zone,
    FK_PESSOAFISICA_FK_PESSOA_ID int,
    FK_ENDERECO_ID int,
    FK_DELEGACIA_FK_PESSOA_ID int
);

CREATE TABLE ENDERECO (
    ID SERIAL PRIMARY KEY UNIQUE,
    NOME varchar(70),
    CEP int,
    FK_BAIRRO_ID int,
    FK_LOGRADOURO_ID int
);

CREATE TABLE USUARIO (
    ID SERIAL PRIMARY KEY,
    SENHA varchar(50),
    LOGIN varchar(50),
    FK_PESSOAFISICA_FK_PESSOA_ID int,
    UNIQUE (ID, LOGIN, FK_PESSOAFISICA_FK_PESSOA_ID)
);

CREATE TABLE DELEGACIA (
    CNPJ bigint,
    FK_PESSOA_ID int PRIMARY KEY,
    UNIQUE (CNPJ, FK_PESSOA_ID)
);

CREATE TABLE BAIRRO (
    ID SERIAL PRIMARY KEY UNIQUE,
    NOME varchar(50),
    FK_CIDADE_ID int
);

CREATE TABLE LOGRADOURO (
    ID SERIAL PRIMARY KEY,
    NOME varchar(50),
    UNIQUE (ID, NOME)
);

CREATE TABLE CIDADE (
    ID SERIAL PRIMARY KEY UNIQUE,
    NOME varchar(50),
    FK_ESTADO_ID int
);

CREATE TABLE ESTADO (
    ID SERIAL PRIMARY KEY UNIQUE,
    NOME varchar(50)
);

CREATE TABLE TIPOOCORRENCIA (
    ID SERIAL PRIMARY KEY,
    NOME varchar(50),
    UNIQUE (ID, NOME)
);

CREATE TABLE ESTADOCIVIL (
    ID SERIAL PRIMARY KEY,
    NOME varchar(50),
    UNIQUE (ID, NOME)
);

CREATE TABLE PROFISSAO (
    ID SERIAL PRIMARY KEY,
    NOME varchar(50),
    UNIQUE (ID, NOME)
);

CREATE TABLE NACIONALIDADE (
    ID SERIAL PRIMARY KEY,
    NOME varchar(50),
    UNIQUE (ID, NOME)
);

CREATE TABLE SEXO (
    ID SERIAL PRIMARY KEY,
    NOME varchar(50),
    UNIQUE (ID, NOME)
);


CREATE TABLE CONTATO (
    ID SERIAL PRIMARY KEY,
    DESCRICAO varchar(50),
    FK_PESSOA_ID int,
    FK_TIPOCONTATO_ID int,
    UNIQUE (ID, DESCRICAO)
);

CREATE TABLE TIPOCONTATO (
    ID SERIAL PRIMARY KEY,
    NOME varchar(50),
    UNIQUE (ID, NOME)
);

CREATE TABLE PROFISSAO_PESSOA (
    FK_PROFISSAO_ID int,
    FK_PESSOAFISICA_FK_PESSOA_ID int,
    ID SERIAL PRIMARY KEY UNIQUE
);

CREATE TABLE OCORRENCIA_TIPOOCORRENCIA (
    FK_TIPOOCORRENCIA_ID int,
    FK_OCORRENCIA_ID int,
    ID SERIAL PRIMARY KEY UNIQUE
);

ALTER TABLE PESSOAFISICA ADD CONSTRAINT FK_PESSOAFISICA_1
    FOREIGN KEY (FK_PESSOA_ID)
    REFERENCES PESSOA (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PESSOAFISICA ADD CONSTRAINT FK_PESSOAFISICA_2
    FOREIGN KEY (FK_NACIONALIDADE_ID)
    REFERENCES NACIONALIDADE (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PESSOAFISICA ADD CONSTRAINT FK_PESSOAFISICA_3
    FOREIGN KEY (FK_ESTADOCIVIL_ID)
    REFERENCES ESTADOCIVIL (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PESSOAFISICA ADD CONSTRAINT FK_PESSOAFISICA_4
    FOREIGN KEY (FK_SEXO_ID)
    REFERENCES SEXO (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PESSOAFISICA ADD CONSTRAINT FK_PESSOAFISICA_5
    FOREIGN KEY (FK_CIDADE_ID)
    REFERENCES CIDADE (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE OCORRENCIA ADD CONSTRAINT FK_OCORRENCIA_1
    FOREIGN KEY (FK_PESSOAFISICA_FK_PESSOA_ID)
    REFERENCES PESSOAFISICA (FK_PESSOA_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE OCORRENCIA ADD CONSTRAINT FK_OCORRENCIA_2
    FOREIGN KEY (FK_ENDERECO_ID)
    REFERENCES ENDERECO (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE OCORRENCIA ADD CONSTRAINT FK_OCORRENCIA_3
    FOREIGN KEY (FK_DELEGACIA_FK_PESSOA_ID)
    REFERENCES DELEGACIA (FK_PESSOA_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_1
    FOREIGN KEY (FK_BAIRRO_ID)
    REFERENCES BAIRRO (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_2
    FOREIGN KEY (FK_LOGRADOURO_ID)
    REFERENCES LOGRADOURO (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO_1
    FOREIGN KEY (FK_PESSOAFISICA_FK_PESSOA_ID)
    REFERENCES PESSOAFISICA (FK_PESSOA_ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE DELEGACIA ADD CONSTRAINT FK_DELEGACIA_1
    FOREIGN KEY (FK_PESSOA_ID)
    REFERENCES PESSOA (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_1
    FOREIGN KEY (FK_CIDADE_ID)
    REFERENCES CIDADE (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE_1
    FOREIGN KEY (FK_ESTADO_ID)
    REFERENCES ESTADO (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PESSOA ADD CONSTRAINT FK_PESSOA_1
    FOREIGN KEY (FK_ENDERECO_ID)
    REFERENCES ENDERECO (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_1
    FOREIGN KEY (FK_PESSOA_ID)
    REFERENCES PESSOA (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_2
    FOREIGN KEY (FK_TIPOCONTATO_ID)
    REFERENCES TIPOCONTATO (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PROFISSAO_PESSOA ADD CONSTRAINT FK_PROFISSAO_PESSOA_0
    FOREIGN KEY (FK_PROFISSAO_ID)
    REFERENCES PROFISSAO (ID)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE PROFISSAO_PESSOA ADD CONSTRAINT FK_PROFISSAO_PESSOA_1
    FOREIGN KEY (FK_PESSOAFISICA_FK_PESSOA_ID)
    REFERENCES PESSOAFISICA (FK_PESSOA_ID)
    ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE OCORRENCIA_TIPOOCORRENCIA ADD CONSTRAINT FK_OCORRENCIA_TIPOOCORRENCIA_0
    FOREIGN KEY (FK_TIPOOCORRENCIA_ID)
    REFERENCES TIPOOCORRENCIA (ID)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE OCORRENCIA_TIPOOCORRENCIA ADD CONSTRAINT FK_OCORRENCIA_TIPOOCORRENCIA_1
    FOREIGN KEY (FK_OCORRENCIA_ID)
    REFERENCES OCORRENCIA (ID)
    ON DELETE SET NULL ON UPDATE CASCADE;




    INSERT INTO NACIONALIDADE (NOME) VALUES
    ('BRASILEIRO'),
    ('JAPONÊS'),
    ('AMERICANO'),
    ('CANADENSE'),
    ('MEXICANO');

    INSERT INTO PROFISSAO (NOME)
    VALUES
    ('DESEMPREGADO'),
    ('MÉDICO'),
    ('POLICIAL'),
    ('BOMBEIRO'),
    ('PROGRAMADOR'),
    ('FAXINEIRO'),
    ('BABÁ'),
    ('DELEGADO'),
    ('AUXILIAR DE SERVIÇOS'),
    ('PINTOR');

    INSERT INTO ESTADOCIVIL (NOME)
    VALUES
    ('SOLTEIRO'),
    ('CASADO'),
    ('VIUVO'),
    ('DIVORCIADO');

    INSERT INTO SEXO (NOME) VALUES
    ('MASCULINO'),
    ('FEMININO'),
    ('OUTROS');

    INSERT INTO  ESTADO (NOME)
    VALUES
    	('ESPÍRITO SANTO'),
    	('SÃO PAULO');


    INSERT INTO CIDADE (NOME,FK_ESTADO_ID)
    VALUES
    ('CARIACICA',1),
    ('VITÓRIA',1),
    ('VILA VELHA',1),
    ('ARACRUZ',1),
    ('LINHARES',1),
    ('SERRA',1),
    ('SÃO MATEUS',1),
    ('CACHOEIRO DE ITAPEMIRIM',1),
    ('GUARAPARI',1),
    ('IBATIBA',1),
    ('AFONSO CLÁUDIO',1),
    ('COLATINA',1);

    INSERT INTO TIPOOCORRENCIA (NOME)
    VALUES
    ('HOMICÍDIO'),
    ('FURTO'),
    ('ESTUPRO'),
    ('LATROCÍNIO'),
    ('DANO AO PATRIMONIO PUBLICO'),
    ('ASSALTO A MÂO ARMADA'),
    ('OUTROS');

    INSERT INTO BAIRRO (NOME,FK_CIDADE_ID)
    VALUES
    ('DO MOSCOSO',2),
    ('SOTELÂNDIA',1),
    ('JARDIM MARILÂNDIA',3),
    ('SOTECO',3),
    ('NOSSA SENHORA APARECIDA',8),
    ('CASTELO BRANCO',1),
    ('PONTA DA FRUTA',3),
    ('AEROPORTO',2),
    ('CUPIDO',4),
    ('INTERLAGOS',5),
    ('MARINGÁ',6),
    ('CAMPO GRANDE',1),
    ('ENSEADA DO SUÁ',2),
    ('VILA NOVA',3),
    ('ILHA DA LUZ',8),
    ('NOVA ZELANDIA',6),
    ('JAQUELINE',7),
    ('ANTÕNIO HONÓRIO',2),
    ('ITAPEBESY',9),
    ('BOA VISTA',5),
    ('SÃO CLEMENTE',4),
    ('POVOAÇÃO',5),
    ('PARQUE RESIDENCIAL DO TUBARÃO',6),
    ('ÂNGELO FRECHIANI REGIÃO',12),
    ('POLIVALENTE',4),
    ('ILHA DAS CAIEIRAS',2),
    ('JARDIM GUANABARA',6),
    ('VILA RICA',8),
    ('ARIBIRI',3);

    INSERT INTO LOGRADOURO (NOME)
    VALUES
    ('RUA'),
    ('AVENIDA'),
    ('ESCADARIA'),
    ('COMUNIDADE'),
    ('PRAÇA');

    INSERT INTO ENDERECO (NOME,CEP,FK_BAIRRO_ID,FK_LOGRADOURO_ID)
    VALUES
    ('WASHINGTON',29020722,1,1),
    ('BELO HORIZONTE',29140676,2,1),
    ('JOATUBA',29112131,3,1),
    ('MINISTRO SALGADO FILHO',29106900,4,2),
    ('JOSÉ PAULINO CIPRIANO',29306760,5,1),
    ('JOÃO MARQUES ARAÚJO',29140792,6,1),
    ('AMAZONAS',29129005,7,1),
    ('GUILHERME SANTOS',29075645,8,1),
    ('DARCY RIBEIRO',29190635,9,1),
    ('QUINTINO BOCAIÚVA',29903058,10,2),
    ('ONZE',29168328,11,1),
    ('ALFREDO ALCURE',29146220,12,1),
    ('QUINZE',29105150,14,1),
    ('HELIO RICAS',29106150,4,1),
    ('AYLTON COELHO COSTA',29309808,15,1),
    ('NATAL',29175709,16,1),
    ('MARIA BARBOSA TOSCANO',29936172,17,1),
    ('CORONEL FRANCISCO PEREIRA DO NASCIMENTO',29070810,18,5),
    ('JULIA MAGNAGO BRAMBATI',29210175,19,1),
    ('AURORA  NUNES DE OLIVEIRA',29905560,20,2),
    ('GUARAREMA',29192321,21,1),
    ('HUMBERTO DOS SANTOS',29914575,22,1),
    ('PIAUÍ',29171723,23,1),
    ('CÓRREGO BELA AURORA',29719452,24,4),
    ('CELSO DOS SANTOS',29719452,25,1),
    ('DA ARMAGURA',29032112,26,1),
    ('JACARANDÁ',29177766,27,2),
    ('UM',29301070,28,3),
    ('ERNESTO NAZARÉ',29120350,29,1),
    ('ALFREU ALVES PEREIRA',29050285,13,1);


    INSERT INTO PESSOA
    (NOME,FK_ENDERECO_ID)
    VALUES
    ('IAGO GABRIEL BERNARDO ROCHA',4),
    ('HELOISA NINA LORENA CARVALHO',5),
    ('EMANUELLY LARA NATÁLIA MENDES',6),
    ('JOANA ANTONELLA OLIVIA FREITAS',7),
    ('CARLOS AUGUSTO',9),
    ('ISABEL LIVIA SOUZA',10),
    ('CAMILA CAROLINA CARVALHO',13),
    ('LUNA KAMILY DE PAULA',14),
    ('EVELYN ALANA COSTA',15),
    ('LUAN JULIO FERNANDES',16),
    ('1ª DELEGACIA REGIONAL DE VITÓRIA',1),
    ('DIVISÃO DE REPRESSÃO AOS CRIMES CONTRA O ',2),
    ('12ª DELEGACIA REGIONAL DE CARIACICA',12),
    ('3ª DELEGACIA REGIONAL DA SERRA',11),
    ('DIVISÃO DE HOMICÍDIOS PROTEÇÃO Á PESSOA(DHPP)',29),
    ('8ª DELEGACIA REGIONAL DE VILA VELHA',3),
    ('7ª DELEGACIA REGIONAL DE VITÓRIA',8),
    ('13ª DELEGACIA REGIONAL DE COLATINA',23),
    ('15ª DELEGACIA REGIONAL DE ARACRUZ',24),
    ('6ª DELEGACIA DE CRIME CONTRA A MULHER',28);


    INSERT INTO PESSOAFISICA
    (CPF,RG,DATANASCIMENTO,FK_CIDADE_ID, FK_NACIONALIDADE_ID,FK_ESTADOCIVIL_ID,FK_SEXO_ID,FK_PESSOA_ID)
    VALUES
    (15478965239,1651,'1995/11/02',5,1,1,1,1),
    (56326985478,6546,'1991/06/22',7,1,4,2,2),
    (13547026975,64863,'1960/02/26',8,1,3,2,3),
    (45896513025,4643,'1991/10/20',12,1,1,2,4),
    (16572346910,218746,'1960/02/28',12,1,2,1,5),
    (46523698874,678635,'1991/02/18',3,1,2,2,6),
    (45896523054,7864,'1991/09/13',4,1,2,2,7),
    (16589542036,76744,'1991/09/06',1,1,3,2,8),
    (46589658405,66486,'1991/05/11',1,1,1,2,9),
    (33471849718,65487,'1991/07/01',7,1,1,1,10);

    INSERT INTO DELEGACIA (CNPJ,FK_PESSOA_ID)
    VALUES
    (16541216,11),
    (1564516541,12),
    (3216541321,13),
    (6513216,14),
    (321654,15),
    (51641,16),
    (15519641,17),
    (164185,18),
    (168419641,19),
    (156848,20);

    INSERT INTO TIPOCONTATO (NOME)
    VALUES
    ('TELEFONE'),
    ('EMAIL');


    INSERT INTO USUARIO (LOGIN, SENHA, FK_PESSOAFISICA_FK_PESSOA_ID) VALUES
    ('iagorocha','iagorocha123',1),
    ('heloisaHG','gs1r65',2),
    ('manu','s1dth6s5te',3),
    ('joanalol','56etgd',4),
    ('cguto','dffd4',5),
    ('belsouziinhaaah','d23f599h',6),
    ('milavalho','rfv2sg56g5',7),
    ('lunaluna','g54fg54',8),
    ('costaalana','5fd641rh4d',9),
    ('luanfernan','1rg46h44ht',10);

    INSERT INTO CONTATO (DESCRICAO, FK_TIPOCONTATO_ID, FK_PESSOA_ID) VALUES
    ('2825521098',1,1),
    ('2836211210',1,2),
    ('2899854278',1,3),
    ('2798956014',1,5),
    ('2828490021',1,6),
    ('28989848472',1,7),
    ('2729862688',1,8),
    ('27984657990',1,9),
    ('27992973741',1,10),
    ('28996521420',1,10),
    ('33459898',1,1),
    ('33925066',1,2),
    ('33585592',1,3),
    ('33464054',1,4),
    ('33444214',1,5),
    ('33357728',1,6),
    ('33659889',1,7),
    ('32015654',1,8),
    ('32236589',1,9);

    INSERT INTO OCORRENCIA (ID,DATAOCORRENCIA, DATAREGISTRO, HORAOCORRENCIA, HORAREGISTRO, FK_DELEGACIA_FK_PESSOA_ID, FK_PESSOAFISICA_FK_PESSOA_ID, FK_ENDERECO_ID) VALUES
    (1,'2016-01-01','2016-01-02','13:59:00','14:03:00',11,1,17),
    (2,'2013-05-26','2013-05-27','12:10:00','00:00:00',12,2,18),
    (3,'2015-03-09','2015-03-10','10:02:00','11:32:00',15,3,19),
    (4,'2010-05-01','2010-05-02','18:47:00','19:50:00',15,4,20),
    (5,'2010-08-09','2010-08-10','22:11:00','05:45:00',15,5,21),
    (6,'2015-09-18','2015-09-19','14:59:00','12:11:00',17,6,22),
    (7,'2010-02-28','2011-02-28','13:10:00','15:58:00',18,7,25),
    (8,'2009-03-28','2009-03-29','11:02:00','06:52:00',14,8,26),
    (9,'2003-10-05','2003-10-06','19:47:00','06:24:00',11,9,27),
    (10,'2017-08-06','2017-08-07','23:11:00','22:03:00',12,10,30);


    INSERT INTO PROFISSAO_PESSOA (FK_PROFISSAO_ID, FK_PESSOAFISICA_FK_PESSOA_ID)
    VALUES
    (1,1),
    (2,2),
    (3,3),
    (4,6),
    (5,7),
    (6,8),
    (7,9),
    (8,9),
    (9,3),
    (10,4);

    INSERT INTO OCORRENCIA_TIPOOCORRENCIA (FK_OCORRENCIA_ID, FK_TIPOOCORRENCIA_ID) VALUES
    (1,5),
    (2,6),
    (2,7),
    (4,3),
    (5,3);
