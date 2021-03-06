class Form < Group
  attr_accessor :action, :name
  attr_with_default :inputs, []

  def initialize(attr_hash={})
    super
  end

  def add_input(items,position=-1)
    self.inputs.insert(position, *items)
  end

  def to_html
    html = "<form #{"name='#{name}'" if name} action='#{action}'>"
    self.inputs.each do |input|
      html += input.to_html
    end
    html += "</form>"
  end
end