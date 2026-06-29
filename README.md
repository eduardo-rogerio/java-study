# Java Study

Ambiente de estudos para Java utilizando Docker, OpenJDK 21 e Maven.

## Requisitos

* Docker
* Docker Compose

## Estrutura do projeto

```text
.
├── docker/
├── workspace/
│   ├── pom.xml
│   └── src/
├── compose.yml
└── README.md
```

## Subindo o ambiente

Construir a imagem e iniciar o container:

```bash
docker compose up --build
```

Ou em segundo plano:

```bash
docker compose up -d --build
```

## Entrando no container

```bash
docker exec -it java-dev bash
```

ou

```bash
docker compose exec java bash
```

## Compilando o projeto

Dentro do diretório do projeto (onde está o `pom.xml`):

```bash
mvn clean compile
```

Os arquivos compilados serão gerados em:

```text
target/classes
```

## Executando a aplicação

Execute a classe principal informando o classpath e o nome completo da classe.

Exemplo:

```bash
java -cp target/classes br.com.study.helloworld.HelloWorld
```

## Estrutura de pacotes

Exemplo de organização utilizada:

```text
src/main/java/
└── br/
    └── com/
        └── study/
            └── helloworld/
                └── HelloWorld.java
```

Correspondente ao package:

```java
package br.com.study.helloworld;
```

## Comandos úteis

Verificar a versão do Java:

```bash
java -version
```

Verificar a versão do compilador:

```bash
javac -version
```

Verificar a versão do Maven:

```bash
mvn -version
```

Limpar os arquivos compilados:

```bash
mvn clean
```

Compilar novamente:

```bash
mvn compile
```

## Objetivo

Este projeto tem como objetivo servir como ambiente de estudos para:

* Sintaxe da linguagem Java
* Programação Orientada a Objetos
* Collections
* Exceptions
* Generics
* Streams e Lambdas
* Maven
* Boas práticas de desenvolvimento
