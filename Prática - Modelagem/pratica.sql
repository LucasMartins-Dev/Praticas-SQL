CREATE TABLE "Usuarios" (
	"IdUsuario" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL,
	"Email" TEXT NOT NULL,
	"Senha" TEXT NOT NULL,

);



CREATE TABLE "Produtos" (
	"IdProduto" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL,
	"Preco" MONEY NOT NULL,
	"FotoPrincipal" TEXT NOT NULL,
	"Foto2" TEXT ,
	"Foto3" TEXT ,
	"IdCategoria" INTEGER NOT NULL REFERENCES "Categorias"("IdCategoria"),

);



CREATE TABLE "Categorias" (
	"IdCategoria" serial PRIMARY KEY,
	"Nome" TEXT NOT NULL,

);



CREATE TABLE "Compras" (
	"IdCompra" serial PRIMARY KEY,
	"IdUsuario" INTEGER NOT NULL REFERENCES "Usuarios"("IdUsuario"),
	"IdProduto" INTEGER NOT NULL REFERENCES "Produtos"("IdProduto"),
	"IdEndereco" INTEGER NOT NULL REFERENCES "Enderecos"("IdEndereco"),
	"Valor" MONEY NOT NULL,
	"Data" DATETIME NOT NULL,
	"Status" TEXT NOT NULL,
	
);



CREATE TABLE "Enderecos" (
	"IdEndereco" serial PRIMARY KEY,
	"Rua" TEXT NOT NULL,
	"Numero" INTEGER NOT NULL,
	"CEP" INTEGER NOT NULL,
	"Bairro" TEXT NOT NULL,
	"Cidade" TEXT NOT NULL,
	"Estado" TEXT NOT NULL,
	"Complemento" TEXT NOT NULL,

);



CREATE TABLE "ItensComprados" (
	"IdItemComprado" serial PRIMARY KEY,
	"IdProduto" INTEGER NOT NULL REFERENCES "Produtos"("IdProduto"),
	"IdCompra" INTEGER NOT NULL REFERENCES "Compras"("IdCompra"),
	"Tamanho" TEXT NOT NULL,
	"Quantidade" INTEGER NOT NULL,

);











