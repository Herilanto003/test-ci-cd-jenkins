# Image Node officielle
FROM node:22

# Dossier de travail
WORKDIR /app

# Copier les fichiers package
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste
COPY . .

# Exposer le port (optionnel ici)
EXPOSE 3000

# Commande pour lancer l’app
CMD ["npm", "start"]
