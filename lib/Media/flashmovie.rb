class Video < Media

  attr_accessor :source, :type, :poster, :controls, :preload, :vidloop

  def initialize
    if @poster = nil
      @poster = "none"
    end

    if @controls = nil
      @controls = "controls"
    end

    if @preload = nil
      @preload = "none"
    end

    if @vidloop = nil
      @pvidloop = "none"
    end

    if @width = nil
      @width = "400"
    end

    if @height = nil
      @height = "300"
    end
  end

  # def set_type(source)
  #   case source.to_s
  #   when "default"
  #     @type='default'
  #   when /\.webm$/
  #     @type='video/webm; codecs="vp8.0, vorbis"' 
  #   when /\.ogv$/
  #     @type='video/ogg; codecs="theora, vorbis"' 
  #   when /\.mp4$/
  #     @type='video/mp4; codecs="avc1.4D401E, mp4a.40.2"'
  #   end
  # end

  def to_css
    return "
      \##{id} {
      width= \"#{width}\"
      height= \"#{height}\"
      preload= \"#{preload}\"
      controls= \"#{controls}\"
      loop= \"#{vidloop}\"
    }"

  end

  def to_html
    set_type(@source)
    return "<video poster= \"#{poster}\"
                   width= \"#{width}\"
                   height= \"#{height}\"
                   preload= \"#{preload}\"
                   controls= \"#{controls}\"
                   loop= \"#{vidloop}\"
                   /> 
      <source src= \"#{source}\" type= \"#{type}\"/>
      <p>This is fallback content to display if the browser does not support the video element.</p>
    </video>"
  end

end


################### PSEUDOCODE ###################

# <video poster="movie.jpg" controls>
#         <source src='movie.webm' type='video/webm; codecs="vp8.0, vorbis"'/>
#         <source src='movie.ogv' type='video/ogg; codecs="theora, vorbis"'/>
#         <source src='movie.mp4' type='video/mp4; codecs="avc1.4D401E, mp4a.40.2"'/>
#         <p>This is fallback content</p>
# </video>