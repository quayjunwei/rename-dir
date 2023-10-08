# Getting started

##### This script will go through each file and folder in the specified directory, replacing spaces with underscores and converting the names to lowercase. It checks if the new name is different from the current name before renaming to avoid unnecessary operations.

1. CD into rename-dir directory

2. Edit rename.sh file
```bash
    nano rename.sh
```

3. Insert file path into "/path/to/your/target/folder"
```bash
    target_dir="/path/to/your/target/dir"
```

4. ```^X``` then ```Y``` to exit text editor and save changes

5. make script executable with chmod
```bash
    chmod +x rename_script.sh
```

6. run script 
```bash
    ./rename_script.sh
```