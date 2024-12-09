rule visualize:
    input:
        "results/recombination_analysis.tsv"
    output:
        "results/visualization/recombination_graph.png"
    script:
        "scripts/visualize_recombinations.R"
