$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        # 1. Update the paragraph text size and color in the lists
        $content = $content -replace 'class="text-brand-gray font-light leading-relaxed text-xs"', 'class="text-brand-black/80 font-normal leading-relaxed text-sm"'
        
        # 2. Replace the SVGs with the images
        $idxCandidatos = $content.IndexOf('id="candidatos"')
        if ($idxCandidatos -gt 0) {
            $part1 = $content.Substring(0, $idxCandidatos)
            $part2 = $content.Substring($idxCandidatos)
            
            # Replace SVG in Para Empresas
            $part1 = $part1 -replace '(?s)<div class="flat-illustration-container[^>]*>.*?<\/div>\s*<\/div>', '<div class="flat-illustration-container w-full max-w-[500px] mx-auto overflow-visible">
                    <img src="assets/img/01%20empresas.jpeg" alt="Para Empresas" class="rounded-3xl shadow-xl w-full max-w-[500px] mx-auto object-cover">
                </div>
            </div>'
            
            # Replace SVG in Para Candidatos
            $part2 = $part2 -replace '(?s)<div class="flat-illustration-container[^>]*>.*?<\/div>\s*<\/div>', '<div class="flat-illustration-container w-full max-w-[500px] mx-auto overflow-visible">
                    <img src="assets/img/02%20andidatos.jpeg" alt="Para Candidatos" class="rounded-3xl shadow-xl w-full max-w-[500px] mx-auto object-cover">
                </div>
            </div>'
            
            $content = $part1 + $part2
        }
        
        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated SVGs and text colors in $file"
    }
}
