create database api;

use api;

create table fatura (
    id_fat bigint not null auto_increment,
    competencia date,
    numero_fatura bigint,
    rubrica varchar(100),
    parcela bigint,
    dt_geracao date,
    primary key(id_fat)
);

create table convenio (
    id_conv bigint not null auto_increment,
    codigo_convenio bigint,
    convenio varchar(150),
    operadora varchar(50),
    primary key(id_conv)
);

create table beneficiario (
    id_seg bigint not null auto_increment,
    tipo varchar(1),
    nome varchar(50),
    marca_otica bigint,
    dt_nascimento date,
    primary key(id_seg)
);

create table contrato (
    id_cont bigint not null auto_increment,
    plano varchar(100),
    num_contrato bigint,
    situacao varchar(50),
    dependente bigint,
    dt_cancelamento date,
    dt_situacao date,
    inicio_vigencia date,
    dt_suspensao date,
    primary key(id_cont)
);

create table tempo (
    id_dat bigint not null auto_increment,
    data date not null,
    primary key(id_dat)
);

create table fato (
    id_fato bigint not null auto_increment,
    id_cont bigint not null,
    id_fat bigint not null,
    id_seg bigint not null,
    id_dat bigint not null,
    id_conv bigint not null,
    mensalidade float(10,2),
    repasse float(10,2),
    caso varchar(50),
    primary key(id_fato),
    constraint fk_id_cont
    foreign key (id_cont)
    references contrato (id_cont),
    constraint fk_id_fat
    foreign key (id_fat)
    references fatura (id_fat),
    constraint fk_id_seg
    foreign key (id_seg)
    references beneficiario (id_seg),
    constraint fk_id_dat
    foreign key (id_dat)
    references tempo (id_dat),
    constraint fk_id_conv
    foreign key (id_conv)
    references convenio (id_conv)
);
