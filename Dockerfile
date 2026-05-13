FROM mcr.microsoft.com/dotnet/sdk:8.0

RUN apt-get update && apt-get install -y python3 python3-pip

WORKDIR /lab

RUN dotnet new console
RUN dotnet restore

ENV DOTNET_NoURL=1
ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=true

CMD ["tail", "-f", "/dev/null"]





