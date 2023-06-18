insert into usuario values
(null, 'Joao da Silva','001.250.222.90',null,'masculino','joaosilva@email.com','(11)-99999-8590'),
(null, 'Maria Antonia','301.250.222.90',null,'feminino','mariasilva@email.com','(11)-99999-9055');
select * from usuario

insert into produtos values
(null,'983jahfj','Computador rápido','informatica',10,2.500,null),
(null,'kjah97y','Frigideira de ceramica','conzinha',5,200,null);
select * from produtos

insert into estoques values
(null,'informatica',100,null,'ahs8y98y'),
(null,'conzinha',50,null,'ahsdloy8');
select * from estoques

insert into endereco value
(null,'05035-030','Av Reboucas',2450,'sao paulo', 'jardins','sp',null),
(null,'06040-015','Av olimpiadas', 540, 'sao paulo', 'vila olimpia', 'sp', null);
select * from endereco

alter table endereco change column bairro
bairro varchar(20);

alter table endereco change column id_cliente
id_cliente int;

insert into carrinho values
(null,null,null,null,2,1000,30,1030),
(null,null,null,null,3,1500,30,1530),
(null,null,null,null,4,200,30,2030);
select * from carrinho

alter table carrinho change column id_produto_carrinho
id_produto_carrinho int;
alter table carrinho change column usuario_id_carrinho
usuario_id_carrinho int;
alter table carrinho change column id_endereco_carrinho
id_endereco_carrinho int;