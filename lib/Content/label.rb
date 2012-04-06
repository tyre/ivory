class Label < Content
  defaults text: ""

  def initialize(attributes={})
    super
  end

  protected

  def to_html
    "<span id='#{id}'>#{self.text}</span>"
  end
end