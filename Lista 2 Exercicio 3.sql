Create table Funcionarios
( codigo int not null unique primary key,
  cpf int not null unique,
  data_nascimento int not null,
  nome varchar(50) not null,
  sexo char(1),
  data_admissao int,
  cidade varchar(20),
  rua varchar(20),
  numero_casa tinyint,
  complemento varchar(30),
  bairro varchar(20),
  CEP int not null unique
  );
  Create table dependentes_funcionarios
  (nome varchar(50) not null,
   grau_parentesco varchar(50),
   data_nascimento int,
   sexo char(1),
   constraint fk_dependentes_funcionarios foreign key (codigo) references Funcionarios(codigo)
);

  Create table fone_funcionarios
( funcionario_codigo int primary key,
    fone nvarchar(100) not null
);

Create table professores
( constraint fk_professores foreign key(codigo) references Funcionarios(codigo),
  salario_hora varchar(20) not null,
  area_atuacao varchar(20),
  titulo varchar(20) not null
);
  
  Create table administrativo
  (constraint fk_administrativo foreign key(codigo) references Funcionarios(codigo),
   salario float not null,
   cargo varchar(20) not null
   );
Create table cursos
( codigo_cursos int not null primary key,
  nome varchar(50) not null,
  ano_reconhecimento int,
  ano_criacao int not null,
  duracao int not null
  );

Create table disciplinas
( constraint pk_disciplinas primary key(codigo_cursos,codigo),
  constraint fk_disciplinas foreign key (codigo_cursos) references cursos(codigo_cursos),
  codigo int not null,
  nome varchar(50),
  ementa varchar(300),
  conteudo_programatico varchar(200),
  carga_horaria tinyint not null
);
  
Create table alunos
( RA int not null unique primary key,
  nome varchar(50) not null,
  endereco varchar(50),
  telefone int,
  data_nascimento int not null,
  sexo char(1)
  );
  
  Create table historico_alunos
  ( disciplinas_cursadas varchar(500),
    semestre_ano varchar(20) not null,
    constraint fk_historico_alunos foreign key(RA) references alunos(RA)
    );
    
    Create table disciplinas_cursadas_historico
    (frequencia int not null,
    constraint ck_historico_alunos_frequencia check (frequencia<=0),
    nota float
    );
  
  
