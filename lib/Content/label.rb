require './content'

class Label < Content
  attr_accessor :text

  def initialize(attributes={})
    @text = attributes[:text] || ""
  end

  protected

  def to_html
    "<span id='#{id}'>#{@text}</span>"
  end
end