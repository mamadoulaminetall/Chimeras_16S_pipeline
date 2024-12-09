rule preprocess:
    input:
        "data/raw"
    output:
        "results/preprocessed"
    script:
        "scripts/preprocess_sequences.py"
