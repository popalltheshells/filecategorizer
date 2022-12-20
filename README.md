# filecategorizer
PowerShell script that helps you consolidate different file extensions into their own folders.
This script will first set the path to the directory where the files are located, and then define the list of extensions to group the files by. It will then loop through each extension, and for each one it will get a list of all files with that extension in the specified directory. If there are any files with the current extension, it will create a new folder for the extension and then loop through each file, moving it to the new folder. Feel free to modify the script if you know of other extensions.


# filedeletor
PowerShell script that helps you delete files when they haven't been opened for 3 months. (Chances are you don't need them).
