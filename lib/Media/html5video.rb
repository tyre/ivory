class HTML5Video < Media

  attr_accessor :source, :type
  defaults poster: "none", controls: "controls", preload: "none",
    vidloop: "none", width: "400", height: "300"
  def initialize(attributes={})
    super
  end

  def set_type(source)
    case source.to_s
    when "default"
      @type='default'
    when /\.webm$/
      @type='video/webm; codecs="vp8.0, vorbis"' 
    when /\.ogv$/
      @type='video/ogg; codecs="theora, vorbis"' 
    when /\.mp4$/
      @type='video/mp4; codecs="avc1.4D401E, mp4a.40.2"'
    end
  end

  def to_css
    " ##{id} { width= '#{width}' height= '#{height}' preload= '#{preload}' controls= '#{controls}' loop= '#{vidloop}' } "
  end

  def to_html
    set_type(@source)
    "<video poster= '#{poster}' width= '#{width}' height= '#{height}' preload= '#{preload}' controls= '#{controls}' loop= '#{vidloop}' /> 
      <source src= '#{source}' type= '#{type}'/>
      <p>This is fallback content to display if the browser does not support the video element.</p>
    </video>"
  end

end