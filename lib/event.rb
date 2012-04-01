class Event
  TYPES = %w{onblur onchange onfocus onkeyup onreset onselect onsubmit onabort onkeypress onkeydown onclick onkeyup onreset onselect onsubmit onabort onkeypress onkeydown onclick}

  attr_accessor :type, :action
  def initialize(attributes = {})
    attributes.each do |attribute, value|
      send("#{attribute}=", value) if respond_to?("#{attribute}=")
    end
  end
end