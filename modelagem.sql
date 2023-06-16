-- Cardinalidade

-- Sempre lê se da esqueda para direita

-- 1 x 1 : Relação com apenas 1 tabela
-- 1 x N : A tabela pode ter uma ou mais relações 
-- N x 1 : onde tem muitas tabelas relacionadas com uma
-- 1 x   : uma tabela sem relação

--Jornada do Usuário

create table usuario(
id_usuario integer auto_increment primary key,
nome varchar(100) not null,
cpf int(11) not null unique,
data_nascimento date,
sexo varchar(10) not null,
email varchar(70) not null unique,
contato varchar(20)
);

create table endereco(
    id_endereco integer auto_increment primary key,
    cep varchar(10) not null,
    rua varchar(50) not null,
    numero integer(100) not null,
    cidade varchar(50) not null,
    bairro varchar (5) not null,
    uf char(2) not null,
    id_cliente int not null unique,

    foreign key(id_cliente)
    references usuario(id_usuario) 
);

--Ciclo de compra
create table produtos(
id_produto integer auto_increment primary key,
sku varchar(10) not null,
nome varchar(100) not null,
categoria varchar(20),
quantidade int(255),
valor double,
usuario_id integer,
foreign key(usuario_id) 
references usuario(id_usuario)
);

create table estoques(
    id_estoque integer auto_increment primary key,
    categoria varchar(20),
    disponibilidade integer,
    id_produto_estoque int,
    sku varchar(10) not null,
foreign key(id_produto_estoque)
references produtos(id_produto)
);

--Finalização

create table carrinho(
    id_compra integer(20) auto_increment primary key,
    id_produto_carrinho integer not null,
    usuario_id_carrinho integer not null,
    id_endereco_carrinho integer not null,
    disp_carrinho integer (10) not null,
    quant_carrinho integer(50) not null,
    valor integer(10) not null,
    frete integer(10) not null,
    valor total integer(10) not null,   
  );

  /*  foreign key(id_produto_carrinho)
    references produtos(id_produto),
    foreign key(usuario_id_carrinho)
    references usuario(id_usuario),
    foreign key(id_endereco_carrinho)
    references endereco(id_endereco),
    foreign key(disp_carrinho)
    references estoques(disponibilidade),*/


