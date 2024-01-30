import os

def list_files(root_dir):
    for path, dirs, files in os.walk(root_dir):
        for file in files:
            file_path = os.path.join(path, file)
            os.system(f"cat {file_path}")

while True:
    list_files('/')
