# Importing the os module to interact with the operating system
import os

# Uninstalling the bcml package using pip
os.system("pip uninstall bcml")

# Creating a path to the bcml/merged directory in the local app data folder, and removing it
bcml_dir = os.path.join(os.getenv('LOCALAPPDATA'), 'bcml', 'merged')
os.system(f"rd /s /q {bcml_dir}")

# Reinstalling the bcml package using pip
os.system("pip install bcml")

# Running the bcml command
os.system("bcml")
