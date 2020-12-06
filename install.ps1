function Install 
{
    $path='C:\tools\vim'
    $user=$env:USERNAME
    if (! Test-Path $path) 
    {
        choco install vim -y
        New-Item -Path "C:\$user\vimfiles\" -Name "plugged" -ItemType "directory"
        New-Item -Path "C:\$user\vimfiles\" -Name "autoload" -ItemType "directory"
        Move-Item -Path ".\vimrc" -Destination "C:\$user\vimfiles"
        Move-Item -Path ".\plugvim" -Destination "C:\$user\vimfiles\autoload"
        Move-Item -Path ".\monokai.vim" -Destination "C:\tools\vim\vim82\colors"
    }
}

try 
{
    choco --version
    Install
}
catch 
{
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    Clear-Host
    Install
}
