# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier server.py dans l'image
COPY app/server.py /app/

# Commande par défaut pour démarrer l'application
CMD ["python", "server.py"]
