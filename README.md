# Backup Script

## Description
A PowerShell script that copies files from a source directory to a destination directory. It creates a subfolder in the destination directory named with the current date (format: `yyyy-MM-dd`) and stores the files there.

## Usage
1. **Adjust source and destination directories:**  
   Modify the `$sourceDir` and `$destinationDir` variables in the script.

2. **Run the script:**  
   Save the script as `.ps1` and execute it in PowerShell:
   ```powershell
   .\BackupScript.ps1
