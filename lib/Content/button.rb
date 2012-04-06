class Button < Content
  defaults label: "", type: "submit"

  def initialize(attributes={})
    super
  end

  protected

  def to_html
    "<input id='#{id}' type='#{self.type}' value='#{self.label}' />"
  end
end