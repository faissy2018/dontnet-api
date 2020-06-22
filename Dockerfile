# Build runtime image   
FROM microsoft/dotnet:aspnetcore-runtime  
WORKDIR /app
RUN apt-get update -y
COPY /Publish .
EXPOSE 80 443
ENTRYPOINT ["dotnet", "Service.dll"]
