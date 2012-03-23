require './content'

class TextBox < Content
  attr_accessor :value

  def initialize(attributes={})
    @value = attributes[:value] || ""
  end

  protected
  
  def to_html
    "<text id='#{id}' type='input' value='#{value}' />"
  end
end