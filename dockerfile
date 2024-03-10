# Usa la imagen base de Python
FROM python:3.12

# Establece el directorio de trabajo en /usr/src/app
WORKDIR /usr/src/app

# Copia el archivo requirements.txt al directorio de trabajo
COPY requirements.txt ./

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el contenido del directorio actual al directorio de trabajo
COPY . .

# Expone el puerto 8000 para que la aplicación Django pueda ser accedida
EXPOSE 8000

# Comando para ejecutar el servidor de desarrollo de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
