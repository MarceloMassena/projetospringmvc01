drop database if exists projetoSpringMVC01;
create database projetoSpringMVC01;
use projetoSpringMVC01;

create table funcionario(
	idfuncionario		integer			auto_increment,
    nome				varchar(150)	not null,
    cpf					varchar(15)		not null unique,
    matricula			varchar(10)		not null unique,
    dataadmissao		date			not null,
    situacao			nvarchar(15)	not null,
    primary key(idfuncionario));
    
alter table funcionario add constraint check_situacao
check(situacao in('Admitido', 'Ferias', 'Afastado', 'Demitido'));
    
select * from funcionario;    

/* delete funcionario from funcionario where idfuncionario = 3; */