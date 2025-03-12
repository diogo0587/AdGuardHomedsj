# Use uma imagem base leve
FROM alpine:3.18

# Defina o diretório de trabalho
WORKDIR /opt/adguardhome

# Instale dependências necessárias
RUN apk --no-cache add ca-certificates libcap tzdata && \
    mkdir -p /opt/adguardhome

# Copie o binário do AdGuard Home para o contêiner
COPY ./docker/AdGuardHome_linux_amd64 /opt/adguardhome/AdGuardHome

# Configure permissões para o binário
RUN chmod +x /opt/adguardhome/AdGuardHome

# Exponha as portas necessárias (DNS e interface web)
EXPOSE 53/tcp 53/udp 3000

# Comando para iniciar o AdGuard Home
CMD ["/opt/adguardhome/AdGuardHome"]
