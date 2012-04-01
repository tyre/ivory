require "./group.rb"

class Form < Group
  attr_accessor :action, :name, 
  defaults inputs:[]

  def initialize(attr_hash={})
    define_attributes(attr_hash)
  end

  def add_input(items,position=-1)
    self.inputs[position, *items]
  end

  def to_html
    html = "<form #{"name='#{name}'" if name} action='#{action}'>"
    self.inputs.each do |input|
      html += input.to_html
    end
    html += "</form>"
  end
end