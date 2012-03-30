class HTML5Audio < Media

  attr_accessor :source, :controls, :autoplay, :preload, :audloop, :width, :height

  def initialize
    @controls = "controls"
    @autoplay = "autoplay"
    @preload = "none"
    @audloop = "none"
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