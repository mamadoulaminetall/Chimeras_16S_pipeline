# scripts/visualize_recombinations.R
library(ggplot2)

# Charger les données d'analyse
data <- read.csv("results/recombination_analysis.tsv", sep="\t", header=TRUE)

# Créer un graphique de structure mosaïque
ggplot(data, aes(x=Start, y=End, color=Score)) +
  geom_point(size=2) +
  labs(title="Structures Mosaïques des Recombinaisons",
       x="Position de départ", y="Position de fin") +
  theme_minimal() +
  ggsave("results/visualization/recombination_graph.png")
