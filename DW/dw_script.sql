create table fatura (
    id_fat number generated by default as identity,
    competencia date,
    numero_fatura number not null,
    rubrica varchar(100),
    parcela number,
    dt_geracao date,
    primary key(id_fat)
);

create table convenio (
    id_conv number generated by default as identity,
    codigo_convenio number,
    convenio varchar(150),
    operadora varchar(50),
    primary key(id_conv)
);

create table beneficiario (
    id_seg number generated by default as identity,
    tipo varchar(1),
    nome varchar(50),
    marca_otica number not null,
    dt_nascimento date,
    primary key(id_seg)
);

create table contrato (
    id_cont number generated by default as identity,
    plano varchar(100),
    num_contrato number not null,
    situacao varchar(50),
    dependente number,
    dt_cancelamento date,
    dt_situacao date,
    inicio_vigencia date,
    dt_suspensao date,
    primary key(id_cont)
);

create table tempo (
    id_dat number generated by default as identity,
    data date not null,
    primary key(id_dat)
);

create table fato (
    id_fato number generated by default as identity,
    id_cont number not null,
    id_fat number not null,
    id_seg number not null,
    id_dat number not null,
    id_conv number not null,
    mensalidade number(10,2),
    repasse number(10,2),
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