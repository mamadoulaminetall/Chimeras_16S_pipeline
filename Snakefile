rule all:
    input:
        "results/visualization/recombination_graph.png"

include: "rules/preprocessing.smk"
include: "rules/chimera_detection.smk"
include: "rules/analysis.smk"
include: "rules/visualization.smk"
