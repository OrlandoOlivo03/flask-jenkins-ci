# Imagen base de Python
FROM python:3.10-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expone el puerto 5000 (Flask por defecto)
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]

