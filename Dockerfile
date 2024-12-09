# Dockerfile
FROM python:3.9-slim

# Installer les dépendances système
RUN apt-get update && apt-get install -y \
    r-base \
    build-essential \
    wget \
    git \
    && apt-get clean

# Installer Snakemake, seqkit, et matplotlib
RUN pip install snakemake seqkit matplotlib

# Installer VSEARCH
RUN wget https://github.com/torognes/vsearch/releases/download/v2.21.1/vsearch-2.21.1-linux-x86_64.tar.gz && \
    tar xzf vsearch-2.21.1-linux-x86_64.tar.gz && \
    cp vsearch-2.21.1-linux-x86_64/bin/vsearch /usr/local/bin/ && \
    rm -rf vsearch-2.21.1-linux-x86_64.tar.gz

# Installer les librairies R nécessaires
RUN R -e "install.packages('ggplot2', repos='http://cran.r-project.org')"

# Définir le répertoire de travail
WORKDIR /pipeline

# Copier tous les fichiers nécessaires
COPY . .

# Entrée par défaut : exécution Snakemake
ENTRYPOINT ["snakemake", "--use-conda", "--cores", "4"]
