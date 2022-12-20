# Set the path to the folder that you want to delete files from
$folderPath = "C:\path\to\folder"

$Months = 3

# Get the current date and time
$currentDate = Get-Date

# Get a list of all files in the folder
$files = Get-ChildItem -Path $folderPath -File

foreach ($file in $files) {
  # Get the last accessed date of the file
  $lastAccessed = $file.LastAccessTime

  # Calculate the difference in months between the current date and the last accessed date
  $differenceInMonths = [Math]::Abs((($currentDate.Year - $lastAccessed.Year) * 12) + $currentDate.Month - $lastAccessed.Month)

  # If the difference in months is greater than or equal to the number of months specified = invoke deletion
  if ($differenceInMonths -ge $Months) {
    Remove-Item $file.FullName
  }
}
