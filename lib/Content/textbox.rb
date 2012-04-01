class TextBox < Content
  defaults value: ""

  def initialize(attributes={})
    define_attributes(attributes)
  end

  protected

  def to_html
    "<input id='#{id}' type='input' value='#{value}' />"
  end
end