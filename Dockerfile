FROM openjdk:17
# Copia todos os arquivos .java para o diretório de trabalho no container
COPY . /usr/src/app

# Define um diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Compila todos os arquivos .java presentes no diretório de trabalho
RUN javac scrumATV/*.java

# Define o comando de inicialização da aplicação
CMD ["java", "scrumATV.Main"]