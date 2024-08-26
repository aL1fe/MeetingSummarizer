$converter_upload_folder = Join-Path -Path (Get-Location) -ChildPath "Data\Converter\incoming_files"
if (-Not (Test-Path -Path $converter_upload_folder)) 
{
    New-Item -Path $converter_upload_folder -ItemType Directory
    Write-Host "Folder was created: $converter_upload_folder"
} 
else { Write-Host "The folder already exists: $converter_upload_folder" }

$converter_output_folder = Join-Path -Path (Get-Location) -ChildPath "Data\Converter\converted_files"
if (-Not (Test-Path -Path $converter_output_folder)) 
{
    New-Item -Path $converter_output_folder -ItemType Directory
    Write-Host "Folder was created: $converter_output_folder"
} 
else { Write-Host "The folder already exists: $converter_output_folder" }

$converter_logs = Join-Path -Path (Get-Location) -ChildPath "Data\Converter\logs"
if (-Not (Test-Path -Path $converter_logs)) 
{
    New-Item -Path $converter_logs -ItemType Directory
    Write-Host "Folder was created: $converter_logs"
} 
else { Write-Host "The folder already exists: $converter_logs" }

docker compose up -d

pause