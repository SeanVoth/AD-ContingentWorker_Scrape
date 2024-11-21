# Ensure the Active Directory module is available
Import-Module ActiveDirectory

# Define the target search term and output file
$searchTerm = "Contingent Worker Philippines"
$outputFile = "C:\temp\Contingent_Worker_Philippines.txt"

# Ensure the output directory exists
$outputDir = Split-Path -Path $outputFile -Parent
if (!(Test-Path -Path $outputDir)) {
    New-Item -Path $outputDir -ItemType Directory -Force | Out-Null
}

# Search Active Directory for users with the specified streetAddress
try {
    Write-Host "Searching for users with streetAddress = '$searchTerm'..."
    $users = Get-ADUser -Filter {streetAddress -eq $searchTerm} -Properties streetAddress, EmailAddress

    # Debugging: Output user count
    Write-Host "Found $($users.Count) users matching the criteria."

    # Check if any users were found
    if ($users) {
        # Initialize or clear the output file
        Clear-Content -Path $outputFile -ErrorAction SilentlyContinue
        foreach ($user in $users) {
            Write-Host "Processing user: $($user.SamAccountName)"

            # Append user's email address to the output file, if it exists
            if ($user.EmailAddress) {
                Write-Host "Adding email: $($user.EmailAddress)"
                $user.EmailAddress | Out-File -FilePath $outputFile -Append
            } else {
                Write-Host "User '$($user.SamAccountName)' does not have an email address."
            }
        }
        Write-Host "Script completed. User email addresses saved to $outputFile"
    } else {
        Write-Host "No users found with streetAddress = '$searchTerm'."
    }
} catch {
    Write-Error "An error occurred while querying Active Directory: $_"
}
