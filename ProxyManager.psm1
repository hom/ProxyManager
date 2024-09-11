# PowerShell module manifest
Module
{
    Name = "ProxyManager"
    ModuleVersion = "1.0.0"
    Author = "Meng Jun"
    CompanyName = "Custom"
    Description = "A PowerShell module for managing proxy settings."
}

# Define the commands in the module
function Proxy {
    $proxyAddress = "http://127.0.0.1:7897"

    # Set the proxy environment variables
    $env:HTTP_PROXY = $proxyAddress
    $env:HTTPS_PROXY = $proxyAddress

    Write-Host "Proxy settings have been set."
}

function Unproxy {
    # Remove the proxy environment variables
    Remove-Item -Path "env:\HTTP_PROXY"
    Remove-Item -Path "env:\HTTPS_PROXY"

    Write-Host "Proxy settings have been removed."
}

# Export the commands so they can be used outside the module
Export-ModuleMember -Function Proxy, Unproxy

