# Use imagem oficial do Python
FROM python:3.11-slim

# Diretório da aplicação
WORKDIR /app

# Instala dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante da aplicação
COPY . .

# Comando padrão
CMD ["python", "app/manage.py", "runserver", "0.0.0.0:8000"]
