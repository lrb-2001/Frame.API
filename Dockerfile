#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base

 # 作者信息
MAINTAINER LRB "1536624135@qq.com"

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

WORKDIR /app

EXPOSE 80
EXPOSE 443

# ADD railway-test.sh ./railway.sh

# 把目录下的内容都复制到当前目录下
COPY . .

# 运行镜像入口命令和可执行文件名称
#ENTRYPOINT ["dotnet", "RailwayTest.dll"]
ENTRYPOINT ["/bin/sh","railway.sh"]