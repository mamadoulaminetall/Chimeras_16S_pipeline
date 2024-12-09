# scripts/detect_chimeras.py
import os
import subprocess

def detect_chimeras(input_dir, output_file):
    input_files = [os.path.join(input_dir, f) for f in os.listdir(input_dir) if f.endswith(".fastq")]
    with open(output_file, "w") as outfile:
        for file in input_files:
            subprocess.run([
                "vsearch", "--uchime_denovo", file,
                "--nonchimeras", f"{file}.nonchimera",
                "--chimeras", f"{file}.chimera",
                "--log", f"{file}.log"
            ], stdout=outfile)

if __name__ == "__main__":
    detect_chimeras("results/preprocessed", "results/chimeras.tsv")
