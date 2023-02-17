CREATE TABLE "customers"(
    "id" serial PRIMARY KEY,
    "fullName" NOT NULL,
    "cpf" INTEGER UNIQUE NOT NULL,
    "email" TEXT NOT NULL,
    "password"TEXT NOT NULL,

)

CREATE TABLE "customerPhones"(
    "id" serial PRIMARY KEY,
    "customerId" FOREIGN KEY NOT NULL,
    "number" INTEGER UNIQUE NOT NULL,
    "type" TEXT NOT NULL DEFAULT 'PHONE',
)

CREATE TABLE "customerAddresses"(
    "id" serial PRIMARY KEY,
    "customerId" FOREIGN KEY NOT NULL,
    "street" TEXT NOT NULL,
    "number" INTEGER NOT NULL,
    "complement" TEXT NOT NULL DEFAULT 'NO COMPLEMENT',
    "postalCode"INTEGER NOT NULL,
    "cityId" FOREIGN KEY NOT NULL,
)

CREATE TABLE "cities"(
    "id" serial PRIMARY KEY,
    "name" TEXT NOT NULL,
    "stateId" FOREIGN KEY NOT NULL, 
)

CREATE TABLE "states"(
    "id" serial PRIMARY KEY,
    "name" TEXT NOT NULL,
)


CREATE TABLE "bankAccount"(
    "id" serial PRIMARY KEY,
    "customerId" FOREIGN KEY NOT NULL,
    "accountNumber" INTEGER UNIQUE NOT NULL,
    "agency" INTEGER NOT NULL,
    "openDate" DATETIME NOT NULL,
    "closeDate" DATETIME,
)

CREATE TABLE "transactions"(
    "id" serial PRIMARY KEY,
    "bankAccountId" FOREIGN KEY NOT NULL,
    "amount" INTEGER NOT NULL,
    "type" TEXT NOT NULL,
    "time" NOT NULL,
    "description" TEXT NOT NULL DEFAULT 'NEW TRANSITION',
    "cancelled" NOT NULL ,
)

CREATE TABLE "creditCards"(
    "id" serial PRIMARY KEY,
    "bankAccountId" FOREIGN KEY NOT NULL,
    "name" TEXT NOT NULL,
    "number" INTEGER UNIQUE NOT NULL,
    "securityCode" INTEGER NOT NULL,
    "expirationMonth" TEXT NOT NULL,
    "expirationYear" INTEGER NOT NULL ,
    "password" TEXT NOT NULL,
    "limit" NUMBER NOT NULL,
)