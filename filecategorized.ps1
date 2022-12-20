# Set the path to the directory where the files are located
$directoryPath = "C:\path\to\directory"

# Set the extensions to group the files by
$extensions = @(".doc", ".docx", ".xls", ".xlsx", ".pdf")

# Loop through each extension
foreach ($ext in $extensions) {
    # Get a list of all files with the current extension in the specified directory
    $files = Get-ChildItem -Path $directoryPath -Filter "*$ext"

    # If there are any files with the current extension
    if ($files.Count -gt 0) {
        # Create a new folder for the extension
        New-Item -ItemType Directory -Path "$directoryPath\$ext"

        # Loop through each file
        foreach ($file in $files) {
            # Move the file to the new folder
            Move-Item -Path $file.FullName -Destination "$directoryPath\$ext"
        }
    }
}
