class Link < Content
  attr_accessor :href, :target, :text

  def initialize(attributes = {})
    @href = attributes[:href]
    @target = attributes[:target] || ""
    @text = attributes[:text]
  end

  def to_html
    "<a href='#{@href}' target='#{@target}'>#{@text}</a>"
  end

end