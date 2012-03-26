class Content < DSObject
  attr_accessor :color, :font, :size

  def initialize(attributes = {})
    @color = attributes[:color] || ''
    @font = attributes[:font] || ''
    @size = attributes[:size] || ''
  end

  def to_css
    "
      font-size: '#{@size}',
      font-family: '#{@font}',
      text-color: '#{@color}'
    "
  end

end