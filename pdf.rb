require 'prawn'
require 'prawn/templates'

@pdf = Prawn::Document.new(
  margin: 0,
  skip_page_creation: true
)

def render_caption
  options = {
    size: 50,
    align: :center,
    valign: :top,
    character_spacing: 0,
    overflow: :expand,
    min_font_size: nil,
    at: [253.41732283464566, 3274.015748031496],
    width: 689.3858267716536,
    height: 94.11023622047244
  }  

  @pdf.fill_color('ffe6e6')
  @pdf.fill_rectangle options[:at], options[:width], options[:height]

  @pdf.font('CrimsonText-Bold.ttf') do
    @pdf.transparent(1.0) do
      @pdf.fill_color('444444')
      @pdf.text_box('Jammie Kay Stanworth', options)
    end
  end  
end

def render_text
  options = {
    size: 14,
    align: :center,
    valign: :top,
    character_spacing: 0,
    overflow: :expand,
    min_font_size: nil,
    at: [151.08661417322836, 1617.4488188976375],
    width: 225.07086614173232,
    height: 17.5748031496063
  }  

  @pdf.fill_color('ffe6e6')
  @pdf.fill_rectangle options[:at], options[:width], options[:height]

  @pdf.font('CrimsonText-Bold.ttf') do
    @pdf.transparent(1.0) do
      @pdf.fill_color('444444')
      @pdf.text_box('Jammie Kay Stanworth', options)
    end
  end  
end

@pdf.start_new_page(template: 'base.pdf')

render_caption
render_text

@pdf.render_file 'output.pdf'