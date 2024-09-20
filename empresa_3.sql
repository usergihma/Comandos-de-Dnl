CREATE DATABASE empresa3;
CREATE TABLE departamento(
	dp_codigo int auto_increment primary key,
	d_nome varchar(50)
);
CREATE TABLE funcionario(
	fun_codigo int auto_increment primary key,
	dp_codigo int,
	nome varchar(50),
	data_nasc date,
    salario decimal,
	foreign key(dp_codigo) references departamento(dp_codigo)
);

CREATE TABLE dependente(
	dep_codigo int auto_increment primary key,
	fun_codigo int,
	dep_nome varchar(50),
	foreign key(fun_codigo) references funcionario(fun_codigo)
);

insert into departamento(d_nome )
	values("Alimenticio"),
	("Pessoal"),
    ("Logistica"),
    ("Infantil"),
    ("Finanças"),
    ("Rh"),
    ("Ti"),
    ("Adm"),
    ("Juridico"),
    ("Advocacia");
    
    insert into funcionario(dp_codigo, nome, data_nasc, salario )
	values(1,"Giovanna", "2008-6-02", 31000.00),
	(2,"Rose", "1980-01-10", 14000.00),
    (3,"Cristiano", "1979-12-01", 2800.00),
	(4,"Giulia", "2009-8-08",3000.00),
    (5,"Gabriel", "2006-05-22",31000.00),
    (6,"Guilherme", "2004-12-04",14000.00),
    (7,"Marceline", "1980-05-10",90000.00),
    (8,"Thiago", "1982-07-5", 58000.00),
    (9,"Lucas", "2008-03-04", 54000.00),
    (10,"Matheus","2017-12-17", 2000.00);
    
    insert into dependente(fun_codigo, dep_nome)
	values(1,"Gabriel"),
	(2,"Cristiano"),
    (3,"Rose"),
	(4,"Guilherme"),
    (5,"Giovanna"),
    (6,"Adriely"),
    (7,"Thiago"),
    (8,"Marceline"),
    (9,"Lucas"),
    (10,"Yuri");

desc dependente;
