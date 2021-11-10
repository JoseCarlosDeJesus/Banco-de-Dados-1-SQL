Create table paciente
( CRH  numeric(10) not null primary key,
  nome varchar(50) not null,
  endereco varchar(50),
  sexo char(1) not null,
  responsavel varchar(50),
  data_nasc  int not null,
  fone int not null,
  cidade varchar(30)
);
  
Create table medicos
(CRM numeric(10) not null primary key,
 nome varchar(50) not null,
 endereco varchar(50),
 cidade varchar(30),
 fone int not null,
 especialidade varchar(30)
 );
 
Create table prontuario
 ( constraint fk_prontuario foreign key (CRH) references pacientes(CRH),
constraint fk_prontuario foreign key (CRM) references medicos(CRM),
problema varchar(50) not null,
   receita varchar(50) not null,
   cuidados_especiais varchar(50),
   data_constatacao datetime not null
);

Create table exames
(constraint fk_exames foreign key(CRH) references pacientes(CRH),
 constraint fk_exames foreign key(CRM) references medicos(CRM),
 tipo varchar(30) not null,
 descricao varchar(100),
 data_realizacao datetime not null
 );
 
 Create table leito
 (ala char not null,
 num_quarto tinyint not null,
 num_leito int not null unique primary key,
 tipo varchar(30) not null
 );
   