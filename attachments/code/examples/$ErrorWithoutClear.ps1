$previousError = $error[0]

try
{
    $acls = Get-ChildItem -Path C:\ -Recurse -ErrorAction SilentlyContinue |
            Get-Acl -ErrorAction SilentlyContinue
}
catch { }

foreach ($errorRecord in $error)
{
    if ($errorRecord -eq $previousError)
    {
        break
    }

    # Handle $errorRecord
}