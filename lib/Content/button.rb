require './content'

class Button < Content
  attr_accessor :label, :type

  def initialize(attributes={})
    @label = attributes[:label] || ""
    @type = attributes[:type] || "submit"
  end

  protected

  def to_html
    "<input id='#{id}' type='#{@type}' value='#{@label}' />"
  end
end