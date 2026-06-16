$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        $content = $content -replace 'class="text-brand-gray text-xs md:text-sm font-light leading-relaxed italic flex-grow flex items-center justify-center"', 'class="text-brand-black/80 text-sm font-normal leading-relaxed italic flex-grow flex items-center justify-center"'
        $content = $content -replace 'class="text-\[10px\] text-brand-gray uppercase tracking-wider mt-1"', 'class="text-xs text-brand-black/70 font-medium uppercase tracking-wider mt-1"'
        $content = $content -replace 'class="text-xs text-brand-gray font-light mt-4 leading-relaxed"', 'class="text-sm text-brand-black/80 font-normal mt-4 leading-relaxed"'

        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated $file"
    }
}
