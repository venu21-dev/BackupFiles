$sourceDir = "C:\Users\Venu\Desktop\Test"
$destinationDir = "D:\BackUp"

$date = Get-Date -Format "yyyy-MM-dd"

$destinationMonthDir = Join-Path -Path $destinationDir -ChildPath $date

if (-not (Test-Path $destinationMonthDir -PathType Container)) {
    New-Item -Path $destinationMonthDir -ItemType Directory | Out-Null
}

$filesToCopy = Get-ChildItem -Path $sourceDir | Where-Object { -not $_.PSIsContainer }

foreach ($file in $filesToCopy) {
    $destinationPath = Join-Path -Path $destinationMonthDir -ChildPath $file.Name
    Copy-Item -Path $file.FullName -Destination $destinationPath
}