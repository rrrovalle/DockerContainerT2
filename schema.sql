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

insert into departamentos (cd_departamento, ds_departamento) values (90, 'Departamento de Engenharia de Software');
insert into departamentos (cd_departamento, ds_departamento) values (89, 'Computer Software: Prepackaged Software');
insert into departamentos (cd_departamento, ds_departamento) values (39, 'Business Services');

insert into cargos (cd_cargo, ds_cargo) values (1, 'Engineer');
insert into cargos (cd_cargo, ds_cargo) values (2, 'Nurse');
insert into cargos (cd_cargo, ds_cargo) values (3, 'Trainee');
insert into cargos (cd_cargo, ds_cargo) values (4, 'Professor');

insert into concursos (cd_concurso) values (15);
insert into concursos (cd_concurso) values (24);
insert into concursos (cd_concurso) values (12);
insert into concursos (cd_concurso) values (11);

insert into etapas (cd_etapa, cd_concurso) values (10, 11);
insert into etapas (cd_etapa, cd_concurso) values (20, 24);
insert into etapas (cd_etapa, cd_concurso) values (30, 12);
insert into etapas (cd_etapa, cd_concurso) values (40, 15);

insert into inscricao (cd_inscricao, cd_cargo, cd_concurso, ds_nomecompleto, nr_cpf, ds_email) values (99, 1, 24, 'Pericles', 123456, 'pericles@hotmail.com');
insert into inscricao (cd_inscricao, cd_cargo, cd_concurso, ds_nomecompleto, nr_cpf, ds_email) values (19, 2, 15, 'Alice', 654321, 'alice@hotmail.com');
insert into inscricao (cd_inscricao, cd_cargo, cd_concurso, ds_nomecompleto, nr_cpf, ds_email) values (39, 3, 11, 'Jeff', 123123, 'jeff@hotmail.com');

insert into inscricao_etapas (cd_inscricao, cd_etapa, nr_nota) values (99,10,10);
insert into inscricao_etapas (cd_inscricao, cd_etapa, nr_nota) values (19,20,7);
insert into inscricao_etapas (cd_inscricao, cd_etapa, nr_nota) values (39,30,8);

insert into cargos_concursos (cd_cargo, cd_concurso) values (2, 15);
insert into cargos_concursos (cd_cargo, cd_concurso) values (3, 24);
insert into cargos_concursos (cd_cargo, cd_concurso) values (4, 12);

insert into departamentos_cargos (cd_departamento, cd_cargo) values (90, 1);
insert into departamentos_cargos (cd_departamento, cd_cargo) values (89, 2);
insert into departamentos_cargos (cd_departamento, cd_cargo) values (39, 3);