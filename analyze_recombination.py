# scripts/analyze_recombination.py
import os
import subprocess

def analyze_recombination(chimera_file, reference_db, output_file):
    subprocess.run([
        "blastn", "-query", chimera_file, "-db", reference_db,
        "-out", output_file, "-outfmt", "6"
    ], check=True)

if __name__ == "__main__":
    analyze_recombination("results/chimeras.tsv", "data/reference_db", "results/recombination_analysis.tsv")
