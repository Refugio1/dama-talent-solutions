$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        # Fix grids and sticky
        $content = $content -replace '<div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-center mb-32" id="empresas">', '<div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-start mb-32" id="empresas">'
        $content = $content -replace '<div class="lg:col-span-5 flex items-center justify-center" data-aos="fade-left" data-aos-delay="200">', '<div class="lg:col-span-5 lg:sticky lg:top-32 flex items-center justify-center" data-aos="fade-left" data-aos-delay="200">'
        
        $content = $content -replace '<div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-center" id="candidatos">', '<div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-start" id="candidatos">'
        $content = $content -replace '<div class="lg:col-span-5 order-2 lg:order-1 flex items-center justify-center" data-aos="fade-right" data-aos-delay="200">', '<div class="lg:col-span-5 order-2 lg:order-1 lg:sticky lg:top-32 flex items-center justify-center" data-aos="fade-right" data-aos-delay="200">'

        # Extract blocks to replace correctly
        $idxCandidatos = $content.IndexOf('id="candidatos"')
        if ($idxCandidatos -gt 0) {
            $part1 = $content.Substring(0, $idxCandidatos)
            $part2 = $content.Substring($idxCandidatos)
            
            # Replace in part 1 (Empresas)
            $part1 = $part1 -replace 'assets/img/industrial_executive_hero.png', 'assets/img/para%20empresas.jpeg'
            
            # Replace in part 2 (Candidatos)
            $part2 = $part2 -replace 'assets/img/industrial_executive_hero.png', 'assets/img/para%20candidatos.jpeg'
            $part2 = $part2 -replace 'alt="Para Empresas"', 'alt="Para Candidatos"'
            
            $content = $part1 + $part2
        }
        
        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated $file"
    }
}
