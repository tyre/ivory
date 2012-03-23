class TextBox < Content
  attr_accessor :value

  def initialize(attributes={})
    super(attributes)
    @value = attributes[:value] || ""
  end

  protected

  def to_html
    "<input id='#{id}' type='input' value='#{value}' />"
  end
end