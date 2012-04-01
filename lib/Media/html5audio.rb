class HTML5Audio < Media

  defaults controls: "controls", autoplay: "autoplay", preload: "none",
    audloop: "none"
  attr_accessor :source, :width, :height

  def initialize(attributes={})
    define_attributes(attributes)
  end

  def to_css
    " ##{id} { width= '#{width}' height= '#{height}' preload= '#{preload}' controls= '#{controls}' loop= '#{vidloop}' } "
  end

  def to_html
    "<audio preload = '#{preload}' controls = '#{controls}' loop= '#{audloop}' /> 
      <source src= '#{source}' />
      <p>This browser does not support our audio format.</p>
    </audio>"
  end

end