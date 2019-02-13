
# -------------------------------- #
#                                  #
# ------ POWERSHELL PROFILE ------ #
#                                  #
#          @author patevs          #
# -------------------------------- #

Import-Module -Name posh-git
Import-Module Get-ChildItemColor

Set-Alias dir Get-ChildItemColor -option AllScope -Force
Set-Alias ls Get-ChildItemColor -option AllScope -Force
Set-Alias ll Get-ChildItemColorFormatWide -option AllScope

Set-Alias -Name gs -Value get-gitstatus

Start-SshAgent

function get-gitstatus { git status }

function printWelcome {
    Write-Host 
    "
             _    _ _____ _     _____ ________  ___ _____  ______  ___ _____ 
            | |  | |  ___| |   /  __ \  _  |  \/  ||  ___| | ___ \/ _ \_   _|
            | |  | | |__ | |   | /  \/ | | | .  . || |__   | |_/ / /_\ \| |  
            | |/\| |  __|| |   | |   | | | | |\/| ||  __|  |  __/|  _  || |  
            \  /\  / |___| |___| \__/\ \_/ / |  | || |___  | |   | | | || |  
             \/  \/\____/\_____/\____/\___/\_|  |_/\____/  \_|   \_| |_/\_/

    "
}
printWelcome

# http://serverfault.com/questions/95431
function Test-Administrator {
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

function prompt {
    # https://github.com/dahlbyk/posh-git/wiki/Customizing-Your-PowerShell-Prompt
    $origLastExitCode = $LastExitCode
    Write-VcsStatus

    if (Test-Administrator) {  # if elevated
        Write-Host "(Elevated) " -NoNewline -ForegroundColor White
    }

    Write-Host "$env:USERNAME@" -NoNewline -ForegroundColor DarkYellow
    Write-Host "$env:COMPUTERNAME" -NoNewline -ForegroundColor Magenta
    Write-Host " : " -NoNewline -ForegroundColor DarkGray

    $curPath = $ExecutionContext.SessionState.Path.CurrentLocation.Path
    if ($curPath.ToLower().StartsWith($Home.ToLower()))
    {
        $curPath = "~" + $curPath.SubString($Home.Length)
    }

    Write-Host $curPath -NoNewline -ForegroundColor Blue
    Write-Host " : " -NoNewline -ForegroundColor DarkGray
    Write-Host (Get-Date -Format G) -NoNewline -ForegroundColor DarkMagenta
    Write-Host " : " -NoNewline -ForegroundColor DarkGray
    $LastExitCode = $origLastExitCode
    "`n$('>' * ($nestedPromptLevel + 1)) "
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) { 
    Import-Module "$ChocolateyProfile" 
}


#EOF

