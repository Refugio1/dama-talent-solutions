$files = @("index.html", "index-split.html")
$UTF8NoBOM = New-Object System.Text.UTF8Encoding $False

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = [IO.File]::ReadAllText((Join-Path $PWD $file), $UTF8NoBOM)

        # 1. Hero text size/contrast
        $content = $content -replace 'text-xs text-gray-300 mt-3 font-light', 'text-sm text-gray-100 mt-3 font-medium'
        $content = $content -replace 'text-xs text-gray-400 mt-3 font-light', 'text-sm text-gray-100 mt-3 font-medium'

        # 2. Alineación de Botones en Especialista
        $content = $content -replace 'flex flex-col justify-between h-64 group', 'flex flex-col h-full group'
        $content = [regex]::Replace($content, 'Filtra por sector y especialidad t(.)cnica.</p>\s*</div>\s*<div class="mt-4">', "Filtra por sector y especialidad t`$1cnica.</p>`n                    </div>`n                    <div class=`"mt-auto pt-4`">")
        $content = [regex]::Replace($content, 'Sube tu CV en 30 segundos\. Sin formularios infinitos\.</p>\s*</div>\s*<div class="mt-4">', "Sube tu CV en 30 segundos. Sin formularios infinitos.</p>`n                    </div>`n                    <div class=`"mt-auto pt-4`">")

        # 3. Para Empresas: Descripciones
        $content = $content -replace '<p class="text-brand-gray font-light leading-relaxed text-xs">', '<p class="text-brand-black/80 font-normal leading-relaxed text-sm">'
        
        # 3b. Replace SVG with image in "Para Empresas"
        $imgTag = '<img src="assets/img/industrial_executive_hero.png" alt="Para Empresas" class="rounded-3xl shadow-xl w-full max-w-[500px] mx-auto object-cover">'
        $content = [regex]::Replace($content, '<div class="flat-illustration-container w-full max-w-\[380px\] mx-auto overflow-visible">.*?</div>\s*</div>', "<div class=`"flat-illustration-container w-full max-w-[500px] mx-auto overflow-visible`">`n                    $imgTag`n                </div>`n            </div>", [System.Text.RegularExpressions.RegexOptions]::Singleline)

        # 4. Valor Diferencial: Párrafo principal
        $content = $content -replace '<p class="text-brand-gray font-light max-w-3xl mx-auto leading-relaxed mb-16">', '<p class="text-brand-black/80 text-lg font-normal max-w-3xl mx-auto leading-relaxed mb-16">'

        # 5. Espaciado: Oportunidades Ejecutivas y Nuestra Misión
        $content = $content -replace '<section class="section-padding bg-brand-light" id="soluciones">', '<section class="pt-12 pb-32 bg-brand-light" id="soluciones">'
        $content = $content -replace '<section class="py-20 bg-brand-dark text-white relative overflow-hidden">', '<section class="pt-20 pb-12 bg-brand-dark text-white relative overflow-hidden">'

        # 6. Textos generales
        $content = $content -replace '<p class="text-brand-gray font-light leading-relaxed text-sm mb-6">', '<p class="text-brand-black/80 font-normal leading-relaxed text-base mb-6">'
        $content = $content -replace '<p class="text-brand-gray font-light leading-relaxed text-\[11px\]">', '<p class="text-brand-black/80 font-normal leading-relaxed text-sm">'
        $content = $content -replace '<p class="text-brand-gray font-light leading-relaxed text-sm mb-8">', '<p class="text-brand-black/80 font-normal leading-relaxed text-base mb-8">'
        $content = $content -replace '<p class="text-brand-gray italic font-light text-sm leading-relaxed mb-6">', '<p class="text-brand-black/80 italic font-medium text-base leading-relaxed mb-6">'
        $content = $content -replace '<h4 class="font-heading font-semibold text-brand-black text-sm">', '<h4 class="font-heading font-semibold text-brand-black text-base">'
        $content = $content -replace '<p class="text-\[10px\] text-brand-gray font-bold tracking-wider uppercase mt-1">', '<p class="text-xs text-brand-black/70 font-bold tracking-wider uppercase mt-1">'

        # 7. Título animado
        $origTitleRegex = '<h1 class="text-4xl md:text-h1 font-heading font-medium tracking-tight text-brand-black leading-tight mb-6">\s*Headhunting Ejecutivo para Sectores\s*<span class="italic font-light text-brand-gray text-rotator-word">T(.)cnicos</span>\s*en M(.)xico\.\s*</h1>'
        $newTitle = "<h1 class=`"text-4xl md:text-h1 font-heading font-medium tracking-tight text-brand-black leading-tight mb-6 text-center`">`n                Headhunting Ejecutivo para Sectores<br>`n                <span class=`"italic font-light text-brand-gray text-rotator-word block my-2`">T`$1cnicos</span>`n                <span class=`"block`">en M`$2xico.</span>`n            </h1>"
        $content = [regex]::Replace($content, $origTitleRegex, $newTitle)

        [IO.File]::WriteAllText((Join-Path $PWD $file), $content, $UTF8NoBOM)
        Write-Host "Updated $file"
    }
}
