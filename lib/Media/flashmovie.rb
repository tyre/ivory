class FlashMovie < Media

    defaults source: "nil", element: "nil", version: "8.0.0",width: "400",
      height: "300"

  def to_css
    "\##{id} {
      width= '#{width}'
      height= '#{height}'
      source= '#{source}'
      element= '#{element}'
      version= '#{version}'
    }"
  end

  def to_html
    "<script type = 'text/javascript' src = 'http://ajax.googleapis.com/ajax/libs/swfobject/2.2/swfobject.js'></script>"
    "<script type= 'text/javascript'>swfobject.embedSWF('#{source}', '#{element}', '#{width}', '#{height}', '#{version}');</script>"
    "<div id= #{element}><p>An animation of #{element}</p></div>"
  end

  ##TODO: Decide how the <script> elements are going to be handlded/placed vis-a-vis the body elements

end