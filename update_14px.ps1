$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        $content = $content -replace 'class="text-brand-gray text-\[11px\] leading-relaxed font-light"', 'class="text-brand-black/80 text-sm leading-relaxed font-normal"'
        $content = $content -replace 'class="text-gray-400 text-\[11px\] leading-relaxed font-light"', 'class="text-brand-black/80 text-sm leading-relaxed font-normal"'

        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated $file"
    }
}
