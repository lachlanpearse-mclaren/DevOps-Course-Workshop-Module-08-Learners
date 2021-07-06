FROM mcr.microsoft.com/dotnet/sdk:5.0
WORKDIR /app
RUN apt-get update && apt-get install -y curl && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
COPY . /app
RUN dotnet build
WORKDIR /app/DotnetTemplate.Web
RUN npm rebuild node-sass && npm install && npm run build
ENTRYPOINT dotnet run