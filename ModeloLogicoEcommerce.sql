-- Criação do banco de dados para o cenário E-Commerce --
-- drop database ecommerce;
create database ecommerce;
use ecommerce;

-- Criação de tabela Cliente --

create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(30),
    constraint unique_cpf_client unique(CPF)
); 
alter table clients auto_increment=1;
-- desc clients;

-- Criação tabela produto --
-- size = dimensão o produto --
create table product(
	idProduct int auto_increment primary key,
    Pname varchar(10) not null,
    classification_kids bool default false,
    category enum('Eletrônico', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Móveis') not null,
    avaliacao float default 0,
    size varchar(10)
); 


-- Criação tabela pedido --

create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    ordersStatus enum('Cancelado', 'Confirmado','Em processamento') default 'Em processamento',
    ordersDescription varchar(255),
    sendValue float default 10,
    paymentCash bool default false,
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
);
-- desc orders;
    
-- Criação tabela estoque --

create table productStorage(
	idproductStorage int auto_increment primary key,
    idOrderClient int,
    storageLocation varchar	(255),
    quantity int default 0
);
desc productStorage;

-- Criação tabela fornecedor --

create table supplier(
	idSupplier int auto_increment primary key,
	SocialName varchar(255) not null,
    CNPJ char(15) not null,
    contact char(11) not null,
    constraint unique_supplier unique (CNPJ)
);
-- desc supplier;

-- Criação tabela vendedor terceiro --
create table seller(
	idSeller int auto_increment primary key,
	SocialName varchar(255) not null,
    CNPJ char(15),
    CPF char(9),
    contact char(11) not null,
    location varchar(255),	
    constraint unique_cnpj_seller unique (CNPJ),
    constraint unique_cpf_seller unique (CPF)
);
-- desc seller;

create table productSeller(
	idPseller int,
    idProduct int,
    prodQuantity int default 1,
    primary key (idPseller, idProduct),
    constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_product_product foreign key (idProduct) references product(idProduct)

);
-- desc productSeller;

create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum('Disponível','Sem estoque') default 'Disponível',
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOorder) references orders(idOrder)

);
-- desc productOrder;

create table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(255) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storage_location_product foreign key(idLproduct) references product(idProduct),
    constraint fk_storage_location_storage foreign key (idLstorage) references productStorage(idproductStorage)
);

create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier_supplier foreign key(idPsSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);
-- desc productSupplier;

show tables;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints;



