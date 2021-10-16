CREATE TABLE IF NOT EXISTs departamentos (
    cd_departamento INT,
    ds_departamento VARCHAR (45),
    PRIMARY KEY (cd_departamento)
);

CREATE TABLE IF NOT EXISTS cargos (
    cd_cargo INT,
    ds_cargo VARCHAR (45),
    PRIMARY KEY (cd_cargo)
);

CREATE TABLE IF NOT EXISTS departamentos_cargos (
    cd_departamento INT,
    cd_cargo INT,
    FOREIGN KEY (cd_departamento) REFERENCES departamentos(cd_departamento),
    FOREIGN KEY (cd_cargo) REFERENCES cargos(cd_cargo)
);

CREATE TABLE IF NOT EXISTS concursos (
    cd_concurso INT,
    PRIMARY KEY (cd_concurso)
);

CREATE TABLE IF NOT EXISTS inscricao (
    cd_inscricao INT,
    cd_cargo INT,
    cd_concurso INT,
    ds_nomecompleto VARCHAR(45),
    nr_cpf INT,
    ds_email VARCHAR(45),
    PRIMARY KEY (cd_inscricao),
    FOREIGN KEY (cd_cargo) REFERENCES cargos (cd_cargo),
    FOREIGN KEY (cd_concurso) REFERENCES concursos (cd_concurso)
);

CREATE TABLE IF NOT EXISTS cargos_concursos (
    cd_cargo INT,
    cd_concurso INT,
    FOREIGN KEY (cd_cargo) REFERENCES cargos (cd_cargo),
    FOREIGN KEY (cd_concurso) REFERENCES concursos (cd_concurso)
);

CREATE TABLE IF NOT EXISTS etapas (
    cd_etapa INT,
    cd_concurso INT,
    PRIMARY KEY (cd_etapa),
    FOREIGN KEY (cd_concurso) REFERENCES concursos (cd_concurso)
);

CREATE TABLE IF NOT EXISTS inscricao_etapas (
    cd_inscricao INT,
    cd_etapa INT,
    nr_nota INT,
    FOREIGN KEY (cd_inscricao) REFERENCES inscricao (cd_inscricao),
    FOREIGN KEY (cd_etapa) REFERENCES etapas (cd_etapa)
);

insert into departamentos (cd_departamento, ds_departamento) values (90, 'n/a');
insert into departamentos (cd_departamento, ds_departamento) values (89, 'Computer Software: Prepackaged Software');
insert into departamentos (cd_departamento, ds_departamento) values (39, 'Business Services');
insert into departamentos (cd_departamento, ds_departamento) values (37, 'Integrated oil Companies');
insert into departamentos (cd_departamento, ds_departamento) values (47, 'Banks');
insert into departamentos (cd_departamento, ds_departamento) values (52, 'Steel/Iron Ore');