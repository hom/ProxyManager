# PowerShell module manifest
Module
{
    Name = "ProxyManager"
    ModuleVersion = "1.0.0"
    Author = "Your Name"
    CompanyName = "Your Company"
    Description = "A PowerShell module for managing proxy settings."
}

# Define the commands in the module
function Proxy {
    $proxyAddress = "http://127.0.0.1:7890"

    # Set the proxy environment variables
    $env:http_proxy = $proxyAddress
    $env:https_proxy = $proxyAddress

    Write-Host "Proxy settings have been set."
}

function Unproxy {
    # Remove the proxy environment variables
    Remove-Item -Path "env:\http_proxy"
    Remove-Item -Path "env:\https_proxy"

    Write-Host "Proxy settings have been removed."
}

# Export the commands so they can be used outside the module
Export-ModuleMember -Function Proxy, Unproxy

