# Use a imagem oficial do AdGuard Home como base
FROM adguard/adguardhome:latest

# Exponha as portas necessárias para o AdGuard Home
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 67/udp # Se você for usar o DHCP
EXPOSE 68/tcp # Se você for usar o DHCP
EXPOSE 80/tcp # Porta da interface web
EXPOSE 443/tcp # Porta HTTPS da interface web (opcional)
EXPOSE 443/udp # Porta DNS-over-HTTPS (opcional)

# Defina o diretório de trabalho
WORKDIR /opt/adguardhome

# Copie o arquivo de configuração (opcional)
# COPY AdGuardHome.yaml /opt/adguardhome/AdGuardHome.yaml

# Comando para iniciar o AdGuard Home
CMD ["./AdGuardHome"]
