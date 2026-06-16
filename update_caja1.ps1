$file = "index-split.html"
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

if (Test-Path $file) {
    $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

    # Change the first h-64 to h-full (which is right before the Explorar Vacantes SVG)
    # The actual string from index-split.html for Caja 1:
    # <!-- Caja 1 -->
    # <div class="bg-brand-black/40 border border-white/10 rounded-3xl p-8 hover:border-brand-accent transition-all duration-300 flex flex-col justify-between h-64 group">
    
    # Just do a general replace of that exact class string to be safe. Since Caja 2 is already h-full, this will just replace Caja 1.
    $target = 'class="bg-brand-black/40 border border-white/10 rounded-3xl p-8 hover:border-brand-accent transition-all duration-300 flex flex-col justify-between h-64 group"'
    $replacement = 'class="bg-brand-black/40 border border-white/10 rounded-3xl p-8 hover:border-brand-accent transition-all duration-300 flex flex-col justify-between h-full group"'
    
    $content = $content -replace [regex]::Escape($target), $replacement

    [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
    Write-Host "Updated Caja 1 height in $file"
}
