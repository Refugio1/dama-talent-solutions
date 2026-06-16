$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        # Fix Manufactura Avanzada text color
        $content = $content -replace '<p class="text-brand-black/80 text-sm leading-relaxed font-normal">Perfiles estratégicos para producción compleja', '<p class="text-gray-300 text-sm leading-relaxed font-normal">Perfiles estratégicos para producción compleja'
        
        # Clean up any weird rotator insertions if any
        $content = $content -replace '(?s)\/\* Rotator Animation styles \*\/\s*\.text-rotator-container\s*\{[^}]*\}\s*\.text-rotator-word', '/* Rotator Animation styles */`r`n        .text-rotator-word'
        
        # Remove min-width and text-align from rotator
        $content = $content -replace '(?s)\/\* Rotator Animation styles \*\/\s*\.text-rotator-word\s*\{[^}]*\}\s*@media[^{]*\{[^}]*\}', "/* Rotator Animation styles */`r`n        .text-rotator-word {`r`n            display: inline-block;`r`n            transition: all 0.5s ease;`r`n        }"

        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated manual fixes in $file"
    }
}
