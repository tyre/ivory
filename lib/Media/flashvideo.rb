class FlashVideo < Media

  defaults source: "nil", element: "nil", version: "8.0.0",
    flashvars: "flashvars", params: "params", width: "400", height: "300"

  def initialize(attributes={})
    super
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
    "<script type = 'text/javascript' src = 'http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js'></script>"
    "<script type= 'text/javascript'>
      var flashvars = {#{flashvars}};
      var params = {movie:'#{source}'};
      swfobject.embedSWF('flash/splayer.swf',
      '#{element}', '#{width}', '#{height}', '#{version}',
      '#{flashvars}', '#{params}');</script>"
    "<div id= #{element}><p>A video of #{element}</p></div>"
  end

  ##TODO: Decide how the <script> elements are going to be handlded/placed vis-a-vis the body elements

end