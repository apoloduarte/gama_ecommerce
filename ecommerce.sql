create table cliente(
    id integer not null auto_increment primary key,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(70) NOT NULL UNIQUE,
    senha VARCHAR(20) NOT NULL,
    cpf VARCHAR(15) NOT NULL UNIQUE
);

create table departamento(
    numero INTEGER NOT NULL auto_increment primary KEY,
    nome VARCHAR(30) NOT NULL,
    descricao TEXT
);

create table endereco(
    num_seq integer not null auto_increment primary key,
    tipo varchar(5) not null,
    logradouro varchar(50) not null,
    numero integer,
    compl varchar(20),
    bairro varchar (30),
    cidade varchar(50),
    estado varchar (5),
    cep varchar(10),
    id_cliente integer not null,
    constraint endereco_cliente foreign KEY
        (id_cliente) references cliente(id)
);

create table pedido(
    numero integer not null auto_increment primary key,
    status_pedido varchar(1) not null,
    data_pedido date,
    valor_bruto DOUBLE,
    desconto DOUBLE,
    valor_liq DOUBLE,
    id_cliente integer not null,
    constraint cliente_pedido foreign key
    (id_cliente) references cliente(id)

);

create table produto(
    codigo integer not null auto_increment primary key,
    nome varchar(50) not null,
    descricao TEXT,
    preco DOUBLE,
    estoque integer,
    link_foto varchar(255),
    numero_depto integer not null,
    constraint produto_depto foreign key
    (numero_depto) references departamento(numero)

);

create table item_pedido(
    seq integer not null auto_increment primary key,
    quantidade integer,
    preco_unit DOUBLE,
    preco_final DOUBLE,
    codigo_produto integer not null,
    numero_pedido integer not null,
    
    constraint item_produto foreign key
    (codigo_produto) references produto(codigo),
    constraint item_pedido foreign key
    (numero_pedido) references pedido(numero)
);