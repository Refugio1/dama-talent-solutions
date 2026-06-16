$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        # Fix Manufactura Avanzada text color
        $content = $content -replace '<p class="text-brand-black/80 text-sm leading-relaxed font-normal">Talento de alto nivel', '<p class="text-gray-300 text-sm leading-relaxed font-normal">Talento de alto nivel'
        
        # Fix Rotator CSS
        $rotatorOld = @"
        /* Rotator Animation styles */
        .text-rotator-word {
            display: inline-block;
            text-align: center;
            min-width: 190px;
            transition: all 0.5s ease;
        }
        @media (min-width: 768px) {
            .text-rotator-word {
                min-width: 440px;
            }
        }
"@
        $rotatorNew = @"
        /* Rotator Animation styles */
        .text-rotator-word {
            display: inline-block;
            transition: all 0.5s ease;
        }
"@
        # Clean whitespace differences for replace
        $rotatorOld = $rotatorOld -replace '\s+', ' '
        $rotatorNew = $rotatorNew -replace '\s+', ' '
        
        # We might have to just do regex because of newlines. Let's do it safely:
        $content = $content -replace '(?s)/\* Rotator Animation styles \*/.*?\.text-rotator-word\.fade-out', "/* Rotator Animation styles */`r`n        .text-rotator-word {`r`n            display: inline-block;`r`n            transition: all 0.5s ease;`r`n        }`r`n        .text-rotator-word.fade-out"

        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated manual fixes in $file"
    }
}
