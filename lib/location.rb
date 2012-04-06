require "./lib/Utility/class_methods"

class Location
  include ClassMethods
  defaults top: 0, left: 0, type: "absolute"

  def initialize(attributes={})
    define_attributes(attributes)
  end

  def type=
    
  end
end