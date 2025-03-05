# Utiliser une image de base officielle Python
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel MLflow sera exécuté
EXPOSE 5000

# Commande pour exécuter MLflow
CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000"]
