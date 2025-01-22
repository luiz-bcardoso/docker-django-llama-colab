# Imagem oficial do Python 3.13
FROM python:3.11-slim AS builder

#Cria a pasta /app e coloca como diretório de trabalho
RUN mkdir /app
WORKDIR /app

# Coloca variáveis de ambiente
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1 

# Atualiza o pip
RUN pip install --upgrade pip 

# Copia os requirements para o /app e instala as dependências
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copia o projeto django "projeto" para o container
COPY /projeto/ /app/

# Abre a porta do Django 8000
EXPOSE 8000

# Faz o migrations para o banco MySQL e inicia o servidor
CMD ["sh", "-c", "python projeto/manage.py loaddata projeto/dumpdata.json && python projeto/manage.py runserver 0.0.0.0:8000"]