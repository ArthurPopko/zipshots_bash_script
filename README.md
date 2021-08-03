# zipshots_bash_script
The script:
1. Creates a new directory named like «Screenshots_<current_date>» in the current directory (where the script file is located) and moves all "*.jpg" files in it. 
2. Be carefull: it moves the files, not just creates a copies!
3. Logs all moved files names to the "screenshots.found" by adding them to the end of existing file or by creating a new file with names in the current directory if one does not exist.
4. Compresses the folder with moved files and deletes the original folder.
5. Waits for user input (any key press) to complete execution.
