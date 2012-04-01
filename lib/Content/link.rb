class Link < Content
  defaults href: "", target: "", text: ""

  def initialize(attributes = {})
    define_attributes(attributes)
  end

  def to_html
    "<a href='#{self.href}' target='#{self.target}'>#{self.text}</a>"
  end

end