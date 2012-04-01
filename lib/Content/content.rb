class Content < DSObject
  defaults color: "Black", font: "Helvetica, Arial", size: "16"

  def initialize(attributes = {})
    define_attributes(attributes)
  end

  def to_css
    "
      font-size: '#{@size}',
      font-family: '#{@font}',
      text-color: '#{@color}'
    "
  end

end