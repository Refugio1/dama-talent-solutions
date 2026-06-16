import re
import os

files = ['index.html', 'index-split.html']

for filename in files:
    if not os.path.exists(filename):
        continue
    
    with open(filename, 'r', encoding='utf-8') as f:
        html = f.read()

    # 1. Hero text size/contrast
    html = html.replace('text-xs text-gray-300 mt-3 font-light', 'text-sm text-gray-100 mt-3 font-medium')
    html = html.replace('text-xs text-gray-400 mt-3 font-light', 'text-sm text-gray-100 mt-3 font-medium')

    # 2. Alineación de Botones en Especialista
    html = html.replace('flex flex-col justify-between h-64 group', 'flex flex-col h-full group')
    # Use regex to find the button containers within the boxes and add mt-auto
    # We look for `<div class="mt-4">` immediately after the `<p...>` description in those boxes.
    html = re.sub(r'(<p class="text-gray-400 text-xs font-light leading-relaxed">.*?</p>\s*)<div class="mt-4">',
                  r'\1<div class="mt-auto pt-4">', html, flags=re.DOTALL)

    # 3. Para Empresas: Descripciones
    html = html.replace('<p class="text-brand-gray font-light leading-relaxed text-xs">', '<p class="text-brand-black/80 font-normal leading-relaxed text-sm">')
    
    # 3b. Replace SVG with image in "Para Empresas"
    img_tag = '<img src="assets/img/industrial_executive_hero.png" alt="Para Empresas" class="rounded-3xl shadow-xl w-full max-w-[500px] mx-auto object-cover">'
    html = re.sub(r'<div class="flat-illustration-container w-full max-w-\[380px\] mx-auto overflow-visible">.*?</div>\s*</div>',
                  f'<div class="flat-illustration-container w-full max-w-[500px] mx-auto overflow-visible">\n                    {img_tag}\n                </div>\n            </div>', html, count=1, flags=re.DOTALL)

    # 4. Valor Diferencial: Párrafo principal
    html = re.sub(r'<p class="text-brand-gray font-light max-w-3xl mx-auto leading-relaxed mb-16">',
                  '<p class="text-brand-black/80 text-lg font-normal max-w-3xl mx-auto leading-relaxed mb-16">', html)
    # (The cards in Valor Diferencial already match the text-brand-gray... text-xs replacement from step 3)

    # 5. Espaciado: Oportunidades Ejecutivas y Nuestra Misión
    html = html.replace('<section class="section-padding bg-brand-light" id="soluciones">', '<section class="pt-12 pb-32 bg-brand-light" id="soluciones">')
    # Reduce bottom padding of the previous section if possible. 
    html = html.replace('<section class="py-20 bg-brand-dark text-white relative overflow-hidden">', '<section class="pt-20 pb-12 bg-brand-dark text-white relative overflow-hidden">')

    # 6. Textos generales
    # Especialidad por sector
    html = html.replace('<p class="text-brand-gray font-light leading-relaxed text-sm mb-6">', '<p class="text-brand-black/80 font-normal leading-relaxed text-base mb-6">')
    html = html.replace('<p class="text-brand-gray font-light leading-relaxed text-[11px]">', '<p class="text-brand-black/80 font-normal leading-relaxed text-sm">')
    
    # Testimoniales
    html = html.replace('<p class="text-brand-gray font-light leading-relaxed text-sm mb-8">', '<p class="text-brand-black/80 font-normal leading-relaxed text-base mb-8">')
    html = html.replace('<p class="text-brand-gray italic font-light text-sm leading-relaxed mb-6">', '<p class="text-brand-black/80 italic font-medium text-base leading-relaxed mb-6">')
    html = html.replace('<h4 class="font-heading font-semibold text-brand-black text-sm">', '<h4 class="font-heading font-semibold text-brand-black text-base">')
    html = html.replace('<p class="text-[10px] text-brand-gray font-bold tracking-wider uppercase mt-1">', '<p class="text-xs text-brand-black/70 font-bold tracking-wider uppercase mt-1">')

    # Vacantes
    # (Matches the replace for Testimoniales)

    # 7. Título animado
    orig_title = r'<h1 class="text-4xl md:text-h1 font-heading font-medium tracking-tight text-brand-black leading-tight mb-6">\s*Headhunting Ejecutivo para Sectores <span class="italic font-light text-brand-gray text-rotator-word">Técnicos</span> en México\.\s*</h1>'
    new_title = r'''<h1 class="text-4xl md:text-h1 font-heading font-medium tracking-tight text-brand-black leading-tight mb-6">
                Headhunting Ejecutivo para Sectores<br>
                <span class="italic font-light text-brand-gray text-rotator-word block my-2">Técnicos</span>
                <span class="block">en México.</span>
            </h1>'''
    html = re.sub(orig_title, new_title, html)

    with open(filename, 'w', encoding='utf-8') as f:
        f.write(html)
    
    print(f"Updated {filename}")
