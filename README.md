# Projet de Serveur HTTP Minimaliste avec Docker

## Prérequis

Avant de commencer, assurez-vous d’avoir installé les éléments suivants :

- **Docker**
- **Docker Compose**
- **Un compte DockerHub** (pour la Partie B)

## Structure du projet

Voici l'organisation du projet :

```
basic-docker-project/
├── app/
│   ├── server.py  # Code du serveur HTTP
├── Dockerfile  # Fichier pour construire l'image Docker
├── docker-compose.yml  # Fichier pour orchestrer les conteneurs
└── README.md  # Documentation
```

---

## Instructions

### **Partie A : Exécuter le serveur HTTP localement**
Apres avoir mis pour chaque fichier son contenue vous pouvez commencer

#### **Exécution avec Docker**

1. **Construire l'image Docker** :

   - Ouvrez le terminal et placez-vous dans le dossier contenant le fichier `Dockerfile`.
   - Exécutez la commande suivante pour construire l’image :
     ```bash
     docker build -t basic-server .
     ```

2. **Lancer l’application avec Docker** :

   - Une fois l’image créée, lancez le conteneur avec la commande suivante :
     ```bash
     docker run -p 8000:8000 basic-server
     ```
   - Ouvrez votre navigateur et accédez à : [http://localhost:8000](http://localhost:8000).
   - Vous devriez voir la page affichant le message **"Hello, Docker!"**.

#### **Exécution avec Docker Compose**

1. **Démarrer avec Docker Compose** :

   - Assurez-vous que le fichier `docker-compose.yml` est bien configuré.
   - Exécutez la commande suivante :
     ```bash
     docker-compose up
     ```
   - Rendez-vous sur [http://localhost:8000](http://localhost:8000) pour voir le serveur en fonctionnement.

2. **Arrêter l’application** :

   - Pour stopper l'application, utilisez :
     ```bash
     docker-compose down
     ```

---

### **Partie B : Publier l’image sur DockerHub**

#### **Étape 1 : Connexion à DockerHub**

1. Connectez-vous à votre compte DockerHub via le terminal :
   ```bash
   docker login
   ```
   - Entrez votre nom d’utilisateur et votre mot de passe.

#### **Étape 2 : Taguer l’image Docker**

1. Une fois l’image construite, attribuez-lui un tag pour DockerHub :
   ```bash
   docker tag basic-server [VOTRE_NOM_D_UTILISATEUR]/basic-server:latest
   ```
   - Remplacez `[VOTRE_NOM_D_UTILISATEUR]` par votre identifiant DockerHub.

#### **Étape 3 : Pousser l’image sur DockerHub**

1. Envoyez l'image Docker sur DockerHub avec la commande :
   ```bash
   docker push [VOTRE_NOM_D_UTILISATEUR]/basic-server:latest
   ```

#### **Étape 4 : Tester l’image depuis DockerHub**

1. Téléchargez l’image Docker depuis DockerHub :
   ```bash
   docker pull [VOTRE_NOM_D_UTILISATEUR]/basic-server:latest
   ```
2. Lancez un conteneur à partir de cette image :
   ```bash
   docker run -p 8000:8000 [VOTRE_NOM_D_UTILISATEUR]/basic-server:latest
   ```
3. Accédez à [http://localhost:8000](http://localhost:8000) pour vérifier que le serveur fonctionne correctement.

---

## Tests

### **Partie A : Tests locaux**

- Vérifiez que le serveur répond correctement en accédant à [http://localhost:8000](http://localhost:8000).
- Vous devriez voir le message **"Hello, Docker!"**.

### **Partie B : Tests après déploiement sur DockerHub**

- Téléchargez l’image depuis DockerHub, lancez-la et vérifiez son bon fonctionnement.

---

## Explications techniques

### **server.py**

- Contient un serveur HTTP minimaliste utilisant uniquement les bibliothèques standards de Python.

### **Dockerfile**

- Définit les étapes pour créer une image Docker contenant le serveur.

### **docker-compose.yml**

- Simplifie le déploiement et l'orchestration de l'application.

### **DockerHub**

- Permet de partager facilement l’image Docker pour un déploiement multiplateforme.

>>>>>>> 73b398b (Mon premier Commit)
