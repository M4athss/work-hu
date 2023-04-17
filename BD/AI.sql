create database Escola;
use Escola;
CREATE TABLE Aluno (
  anome varchar(30) not null, 
  matricula int(8) primary key, 
  tipo varchar(20) not null, 
  curso varchar(20) not null
  );
CREATE TABLE disciplina (
  dnome varchar(30) not null, 
  dnumero int(4) primary key, 
  carga_horaria float(3, 1) not null, 
  departamento varchar(30)not null
  );
CREATE TABLE professor (
  pnumero int(8) primary key, 
  pnome varchar(30) not null, 
  di_depart varchar(30)
  );
CREATE TABLE pre_requisito (
  dis_numero int(4) Primary key, 
  prof_numero int(4) not null, 
  FOREIGN KEY(dis_numero) REFERENCES disciplina(dnumero), 
  FOREIGN KEY(prof_numero) REFERENCES professor(pnumero)
  );
CREATE TABLE turma (
  tnumero int(5) primary key, 
  dis_numero1 int(4) not null, 
  ano int(4) not null, 
  semestre int(2) not null, 
  prof_numero1 int(8), 
  FOREIGN KEY(dis_numero1) REFERENCES disciplina(dnumero), 
  FOREIGN KEY(prof_numero1) REFERENCES professor(pnumero)
  );
CREATE TABLE historico (
  a_matricula int(8) primary key, 
  turma_num int(5) not null, 
  nota float(3, 2) not null, 
  FOREIGN KEY(turma_num) REFERENCES turma(tnumero)
  );