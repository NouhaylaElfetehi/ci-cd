# Utiliser l'image de base officielle Node.js
FROM node:14

# Créer le répertoire de l'application
WORKDIR /usr/src/app

# Copier les fichiers de package et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste du code
COPY . .

# Exposer le port de l'application
EXPOSE 3000

# Commande pour démarrer l'application
CMD [ "npm", "start" ]
