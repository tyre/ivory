class FlashAudio < Media

  defaults source: "nil", element: "nil", version: "8.0.0",
    flashvars: "flashvars", params: "params", width: "400", height: "300"

  def initialize(attributes={})
    define_attributes(attributes)
  end

  def to_css
    "\##{id} {
      width= '#{width}'
      height= '#{height}'
      source= '#{source}'
      element= '#{element}'
      version= '#{version}'
      flashvars= '#{flashvars}'
      params= '#{params}'
    }"
  end

  def to_html
    "<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js'></script>
     <script type='text/javascript'>
      var flashvars = {#{flashvars}};
      var params = {mp3: '#{source}'};
      swfobject.embedSWF(\"flash/player_mp3_1.0.0.swf\", '#{element}', '#{width}', '#{height}, '#{version}', #{flashvars}, #{params});
    </script>"
    "<div id = '#{id}'><p>You cannot hear this track because your browser does not suppourt our Flash music player.<p></div>"
  end

  ##TODO: Decide how the <script> elements are going to be handlded/placed vis-a-vis the body elements

end