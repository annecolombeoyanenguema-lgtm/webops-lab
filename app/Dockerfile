# Utilise Nginx léger
FROM nginx:alpine

# Copie le dossier app/ dans le dossier web de Nginx
COPY app/ /usr/share/nginx/html

# Déclare le port utilisé
EXPOSE 80

# Lance Nginx en mode "foreground"
CMD ["nginx", "-g", "daemon off;"]
