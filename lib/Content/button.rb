class Button < Content
  defaults label: "", type: "submit"

  def initialize(attributes={})
    define_attributes(attributes)
  end

  protected

  def to_html
    "<input id='#{id}' type='#{@type}' value='#{@label}' />"
  end
end