require "./lib/Utility/class_methods"
class Event
  include ClassMethods
  TYPES = %w{onblur onchange onfocus onkeyup onreset onselect onsubmit onabort onkeypress onkeydown onclick onkeyup onreset onselect onsubmit onabort onkeypress onkeydown onclick}

  attr_accessor :type, :action
  def initialize(attributes = {})
    define_attributes(attributes)
  end

  def to_html
    "#{self.type}='#{self.action}'"
  end
end