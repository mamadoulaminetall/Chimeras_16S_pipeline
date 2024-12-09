Chimeras_16S_pipeline

Chimeras_16S_pipeline est un outil automatisé pour la détection des chimères dans les séquences 16S rRNA, mettant en évidence les recombinaisons génétiques et les structures mosaïques des génomes microbiens. Ce pipeline, développé avec Snakemake et Docker, assure reproductibilité et modularité pour des analyses robustes et visualisations graphiques.
Fonctionnalités principales 🚀

    Détection des chimères : Identification des séquences chimériques dans les données 16S rRNA.
    Recombinaisons génétiques : Analyse des points de recombinaison au sein des génomes microbiens.
    Visualisation des structures mosaïques : Génération de graphiques clairs pour interpréter les résultats.
    Automatisation complète : Un pipeline modulaire utilisant Snakemake et Docker.
    Flexibilité : Configurable pour divers jeux de données et paramètres d'analyse.

Structure du projet 📂

Chimeras_16S_pipeline/
├── config/              # Fichiers de configuration du pipeline
│   └── config.yaml
├── data/                # Données d'entrée brutes (fichiers FASTA/FASTQ)
├── docker-compose.yml   # Orchestration Docker
├── Dockerfile           # Construction de l'environnement Docker
├── envs/                # Environnements conda pour chaque étape
│   ├── detection.yaml
│   ├── visualization.yaml
│   └── preprocessing.yaml
├── rules/               # Étapes du pipeline sous Snakemake
│   ├── preprocessing.smk
│   ├── chimera_detection.smk
│   └── visualization.smk
├── scripts/             # Scripts personnalisés pour l'analyse et les graphiques
│   └── visualize_chimeras.py
├── results/             # Répertoires de sortie organisés
├── Snakefile            # Fichier principal pour orchestrer le pipeline
└── README.md            # Documentation principale

Prérequis 🛠️

    Système d'exploitation : Linux ou macOS (recommandé).
    Docker : Installez Docker et Docker Compose.
    Snakemake : Installez Snakemake via conda ou pip.
    Git : Clonez ce dépôt sur votre machine locale.

Installation 💻

    Cloner le dépôt :

git clone https://github.com/mamadoulaminetall/Chimeras_16S_pipeline.git
cd Chimeras_16S_pipeline

Construire l'image Docker :

docker build -t chimeras_16s_pipeline .

Démarrer Docker Compose :

    docker-compose up

Utilisation 🧪
Étape 1 : Configurer les chemins

Modifiez config/config.yaml pour spécifier les chemins des données d'entrée et les paramètres du pipeline.

Exemple :

input_dir: "data/raw"
output_dir: "results"
reference_db: "references/16S_database.fasta"

Étape 2 : Lancer le pipeline

Pour exécuter toutes les étapes du pipeline :

snakemake --use-conda --cores 4

Pour exécuter une étape spécifique :

snakemake <nom_de_la_règle> --use-conda --cores 4

Étapes du pipeline 🔄
1. Prétraitement des données

    Description : Nettoyage et formatage des séquences d'entrée.
    Fichier : rules/preprocessing.smk
    Commande :

    snakemake preprocessing

2. Détection des chimères

    Description : Identification des séquences chimériques.
    Fichier : rules/chimera_detection.smk
    Commande :

    snakemake chimera_detection

3. Visualisation

    Description : Création de graphiques représentant les structures mosaïques et les recombinaisons.
    Fichier : rules/visualization.smk
    Commande :

    snakemake visualization

Résultats 📊

Les résultats sont générés dans le dossier results/ :

    Prétraitement : Données nettoyées dans results/preprocessing/.
    Détection des chimères : Fichiers de séquences chimériques dans results/chimera_detection/.
    Visualisation : Graphiques et fichiers de résultats dans results/visualization/.

Contribuer 🤝

    Forkez le dépôt.
    Créez une branche pour vos modifications :

    git checkout -b nouvelle-fonctionnalite

    Soumettez une pull request.

Auteur 👨‍💻

    Mamadou Lamine Tall
    GitHub Profile

Licence 📜

Ce projet est distribué sous la licence MIT. Consultez le fichier LICENSE pour plus d'informations.
