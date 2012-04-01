class Event
  TYPES = %w{onblur onchange onfocus onkeyup onreset onselect onsubmit onabort onkeypress onkeydown onclick onkeyup onreset onselect onsubmit onabort onkeypress onkeydown onclick}

  attr_accessor :type
  attr_with_default :actions, []
  def initialize(attributes = {})
    attributes.each do |attribute, value|
      send("#{attribute}=", value) if respond_to?("#{attribute}=")
    end
  end
end