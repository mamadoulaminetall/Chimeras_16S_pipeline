rule analyze_recombination:
    input:
        chimera_file="results/chimeras.tsv",
        reference_db="data/reference_db"
    output:
        "results/recombination_analysis.tsv"
    script:
        "scripts/analyze_recombination.py"
