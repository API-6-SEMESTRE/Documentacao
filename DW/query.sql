-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-06 22:18:10.696

-- tables

-- Table: benificiario
CREATE TABLE benificiario (
    id_seg int NOT NULL,
    tipo char(1) NULL,
    nome varchar(10) NULL,
    marca_otica int NOT NULL,
    dt_nascimento date NULL,
    CONSTRAINT segurado_pk PRIMARY KEY (id_seg)
);

-- Table: contrato
CREATE TABLE contrato (
    id_cont int NOT NULL,
    plano varchar(100) NULL,
    num_contrato int NOT NULL,
    situacao varchar(50) NULL,
    dependente int NULL,
    dt_cancelamento date NULL,
    dt_situacao date NULL,
    inicio_vigencia date NULL,
    dt_suspensao date NULL,
    CONSTRAINT contrato_pk PRIMARY KEY (id_cont)
);

-- Table: convenio
CREATE TABLE convenio (
    id_conv int NOT NULL,
    codigo_convenio int NULL,
    convenio varchar(150) NULL,
    operadora varchar(50) NULL,
    CONSTRAINT convenio_pk PRIMARY KEY (id_conv)
);

-- Table: fatura
CREATE TABLE fatura (
    id_fat int NOT NULL,
    competencia date NULL,
    numero_fatura int NOT NULL,
    rubrica varchar(100) NULL,
    parcela int NULL,
    dt_geracao date NULL,
    CONSTRAINT fatura_pk PRIMARY KEY (id_fat)
);

-- Table: tempo
CREATE TABLE tempo (
    id_dat int NOT NULL,
    data date NOT NULL,
    CONSTRAINT data_pk PRIMARY KEY (id_dat)
);

-- Table: fato
CREATE TABLE fato (
    id_fato int NOT NULL,
    id_cont int NOT NULL,
    id_fat int NOT NULL,
    id_seg int NOT NULL,
    id_dat int NOT NULL,
    id_conv int NOT NULL,
    mensalidade float(10,2) NOT NULL,
    repasse float(10,2) NOT NULL,
    caso varchar(50) NOT NULL,
    CONSTRAINT fato_pk PRIMARY KEY (id_fato,id_cont,id_fat,id_seg,id_dat,id_conv)
);

-- foreign keys

-- Reference: FK_0 (table: fato)
ALTER TABLE fato ADD CONSTRAINT FK_0 FOREIGN KEY FK_0 (id_cont)
    REFERENCES contrato (id_cont);

-- Reference: FK_1 (table: fato)
ALTER TABLE fato ADD CONSTRAINT FK_1 FOREIGN KEY FK_1 (id_fat)
    REFERENCES fatura (id_fat);

-- Reference: FK_2 (table: fato)
ALTER TABLE fato ADD CONSTRAINT FK_2 FOREIGN KEY FK_2 (id_seg)
    REFERENCES benificiario (id_seg);

-- Reference: FK_3 (table: fato)
ALTER TABLE fato ADD CONSTRAINT FK_3 FOREIGN KEY FK_3 (id_dat)
    REFERENCES tempo (id_dat);

-- Reference: FK_4 (table: fato)
ALTER TABLE fato ADD CONSTRAINT FK_4 FOREIGN KEY FK_4 (id_conv)
    REFERENCES convenio (id_conv);

-- End of file.

