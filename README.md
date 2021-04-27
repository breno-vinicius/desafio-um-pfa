# Desafio 1 - PFA - Docker

## Nota: 
> Os comandos abaixo foram executados testados no git bash no WSL 2 do S.O. Windows 10. Em outros ambientes os comandos podem sofrer alterações.

## Execução

### 1. Crie a rede docker "desafio-um-pfa" através do comando:
```sh
docker network create -d bridge desafio-um-pfa
```
### 2. Acesse a pasta mysql

### 3. Construa a imagem do mysql:
```sh
docker build -t desafio-um-pfa/mysql:1.0 .
```
### 4. Crie o container a partir da imagem do mysql:
```sh
docker run --name mysql --network=desafio-um-pfa -e MYSQL_ROOT_PASSWORD=Secret#9b45 -d desafio-um-pfa/mysql:1.0
```
### 5. Faça um pull da imagem que contem a aplicação web:
```sh
docker pull brenovinicius/app-desafio-um-pfa:1.0
```
### 6. Crie um container a partir da imagem da aplicação web:
```sh
docker run --name app --network=desafio-um-pfa -d brenovinicius/app-desafio-um-pfa:1.0
```
### 7. Acesse a pasta do nginx

### 8. Construa a imagem do nginx:
```sh
docker build -t desafio-um-pfa/nginx:1.0 .
```
### 9. Crie um container a partir da imagem do nginx
```sh
docker run --name nginx -p 8080:80 --network=desafio-um-pfa -d desafio-um-pfa/nginx:1.0
```

### Para acessar a aplicação web abra o navegador e digite o endereço: 
### http://localhost:8080