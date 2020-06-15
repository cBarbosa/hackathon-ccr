### criar a solution
dotnet new sln -n hackathon-ccr

### criar o projeto
dotnet new web -n hackathon-ccr-api

### adicionar o projeto à solution
dotnet sln add .\hackathon-ccr-api\hackathon-ccr-api.csproj

### adiciona pacote swagger
dotnet add package Swashbuckle.AspNetCore

### adicionar pacote Dapper
dotnet add package Dapper --version 2.0.30

### adiciona pacote mysql
dotnet add package MySql.Data --version 8.0.19