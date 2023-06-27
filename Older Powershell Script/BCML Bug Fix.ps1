function bcml_bug {
    <#
    .SYNOPSIS
    Uninstalls and reinstalls bcml package.

    .DESCRIPTION
    This function uninstalls bcml package, removes the "merged" folder located in the user's AppData\Local\bcml directory, 
    and then reinstalls bcml package.

    .EXAMPLE
    manage_bcml

    This command uninstalls and reinstalls bcml package.

    #>

    try {
        # Uninstall bcml package
        pip uninstall bcml -y

        # Remove merged folder
        $merged_folder = "$env:LOCALAPPDATA\bcml\merged"
        if (Test-Path $merged_folder) {
            Remove-Item $merged_folder -Recurse -Force
        }

        # Reinstall bcml package
        pip install bcml
        # Run the function
        bcml_bug
    }
    catch {
        # Log the error
        Write-Error $_.Exception.Message
    }
    
}
