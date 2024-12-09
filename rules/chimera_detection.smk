rule detect_chimeras:
    input:
        "results/preprocessed"
    output:
        "results/chimeras.tsv"
    script:
        "scripts/detect_chimeras.py"
