class Content < DSObject
  defaults color: "Black", font: "Helvetica, Arial", size: "16"

  def initialize(attributes = {})
    define_attributes(attributes)
  end

  def to_css
    "
      font-size: '#{self.size}',
      font-family: '#{self.font}',
      text-color: '#{self.color}'
    "
  end

end