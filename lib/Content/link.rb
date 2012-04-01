class Link < Content
  defaults href: "", target: "", text: ""

  def initialize(attributes = {})
    define_attributes(attributes)
  end

  def to_html
    "<a href='#{@href}' target='#{@target}'>#{@text}</a>"
  end

end