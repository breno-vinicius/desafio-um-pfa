# Desafio 1 - PFA - Docker

## Execução

### 1. Crie a rede docker "desafio-um-pfa" através do comando:
```sh
docker network create -d bridge desafio-um-pfa
```
### 2. Crie o container mysql:
```sh
docker run --name mysql --network=desafio-um-pfa -e MYSQL_ROOT_PASSWORD=Secret#9b45 -d brenovinicius/mysql-desafio-um-pfa:latest
```
### 3. Crie um container da aplicação web:
```sh
docker run --name app --network=desafio-um-pfa -d brenovinicius/app-desafio-um-pfa:latest
```
### 4. Crie um container nginx
```sh
docker run --name nginx -p 8080:80 --network=desafio-um-pfa -d brenovinicius/nginx-desafio-um-pfa:latest
```
### Para acessar a aplicação web abra o navegador e digite o endereço: 
### http://localhost:8080
