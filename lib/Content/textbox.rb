class TextBox < Content
  defaults value: ""

  def initialize(attributes={})
    super
  end

  protected

  def to_html
    "<input id='#{id}' type='input' value='#{value}' />"
  end
end