drop database if exists roaster;
create database roaster;
use roaster;

source "[folder z repo]\tables.sql";
source "[folder z repo]\views.sql";
source "[folder z repo]\funcs.sql";
source "[folder z repo]\users.sql";
source "[folder z repo]\data.sql";