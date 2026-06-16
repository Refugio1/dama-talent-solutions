$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        $content = $content -replace 'overflow-x: hidden;', 'overflow-x: clip;'

        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated $file"
    }
}
