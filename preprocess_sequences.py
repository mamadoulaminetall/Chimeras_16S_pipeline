# scripts/preprocess_sequences.py
import os
import subprocess

def preprocess(input_dir, output_dir):
    os.makedirs(output_dir, exist_ok=True)
    for file in os.listdir(input_dir):
        if file.endswith(".fastq"):
            input_path = os.path.join(input_dir, file)
            output_path = os.path.join(output_dir, file.replace(".fastq", "_filtered.fastq"))
            subprocess.run(["seqkit", "fqchk", input_path], check=True)
            subprocess.run(["seqkit", "seq", "-Q", "20", input_path, "-o", output_path], check=True)

if __name__ == "__main__":
    preprocess("data/raw", "results/preprocessed")
