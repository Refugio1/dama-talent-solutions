$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        # Para Empresas Grid
        $content = $content -replace '<div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-center mb-32" id="empresas">', '<div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-start mb-32" id="empresas">'
        
        # Para Empresas Img Col
        $content = $content -replace '<div class="lg:col-span-5 flex items-center justify-center" data-aos="fade-left" data-aos-delay="200">', '<div class="lg:col-span-5 lg:sticky lg:top-32 flex items-center justify-center" data-aos="fade-left" data-aos-delay="200">'
        
        # Para Candidatos Grid
        $content = $content -replace '<div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-center" id="candidatos">', '<div class="grid grid-cols-1 lg:grid-cols-12 gap-16 items-start" id="candidatos">'
        
        # Para Candidatos Img Col
        $content = $content -replace '<div class="lg:col-span-5 order-2 lg:order-1 flex items-center justify-center" data-aos="fade-right" data-aos-delay="200">', '<div class="lg:col-span-5 order-2 lg:order-1 lg:sticky lg:top-32 flex items-center justify-center" data-aos="fade-right" data-aos-delay="200">'

        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated $file"
    }
}
